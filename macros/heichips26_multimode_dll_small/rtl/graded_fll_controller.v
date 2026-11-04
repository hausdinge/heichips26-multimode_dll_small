`ifndef GRADED_FLL_CONTROLLER_V
`define GRADED_FLL_CONTROLLER_V
`default_nettype none

// Frequency-locked loop for a ring with four Gray-coded delay states per stage.
// This controls average frequency; it does not lock phase to the reference.
// Level 0 is fastest and level 39 slowest. Fractional tuning alternates
// adjacent levels using pulse-density modulation on reference-clock edges.
// Registered trim outputs follow the characterized stage permutation.
module graded_fll_controller #(
    // Number of level increments; the 26-wire trim map requires N_LOADS = 39.
    parameter integer N_LOADS = 39,
    parameter integer FRACTION_BITS = 8,
    parameter integer COUNTER_BITS = 13,
    parameter integer WINDOW_LOG2 = 7,
    parameter integer LOCK_WINDOWS = 4,
    parameter integer TOLERANCE_SHIFT = 8,
    parameter integer WATCHDOG_BITS = 7
) (
    input  wire                      reset,
    input  wire                      ref_clk,
    input  wire                      ring_clk,
    input  wire [4:0]                multiply,
    input  wire                      loop_enable,
    output reg  [25:0]               trim,
    output wire                      locked,
    output reg                       out_of_range,
    output reg                       ring_alive,
    output wire [COUNTER_BITS - 1:0] measured_count,
    output wire [15:0]               tuning_q8
);
    localparam integer CODE_BITS = $clog2(N_LOADS + 1);
    localparam integer Q_BITS = CODE_BITS + FRACTION_BITS;
    localparam integer MAX_Q = N_LOADS * (1 << FRACTION_BITS);
    localparam integer MAX_STEP = (1 << FRACTION_BITS) / 4;
    localparam integer GOOD_BITS = $clog2(LOCK_WINDOWS + 1);

    // Pipeline the multiplier before the arithmetic and fanout tree.
    // Configuration must meet ref_clk timing and remain static while running.
    reg [4:0] multiply_cfg;
    always @(posedge ref_clk or posedge reset)
        if (reset) multiply_cfg <= 0;
        else multiply_cfg <= multiply;

    // Independently synchronize reset release in both clock domains.
    (* ASYNC_REG = "TRUE", keep = 1 *) reg [1:0] ring_reset_pipe, ref_reset_pipe;
    always @(posedge ring_clk or posedge reset)
        if (reset) ring_reset_pipe <= 2'b11;
        else ring_reset_pipe <= {ring_reset_pipe[0], 1'b0};
    always @(posedge ref_clk or posedge reset)
        if (reset) ref_reset_pipe <= 2'b11;
        else ref_reset_pipe <= {ref_reset_pipe[0], 1'b0};

    (* keep *) reg reference_missing, locked_qualified;
    localparam [COUNTER_BITS - 1:0] MAX_MEASUREMENT = (1 << (5 + WINDOW_LOG2)) - 1;

    // One request per reference window captures a saturated ring-edge count.
    // The count bus stays fixed until the next request; the returned toggle
    // crosses two reference registers before the bus is consumed.
    reg window_toggle, sample_previous, window_pending;
    (* ASYNC_REG = "TRUE", keep = 1 *) reg window_meta, window_sync;
    reg window_previous;
    (* keep *) reg sample_toggle;
    (* keep *) reg [COUNTER_BITS - 1:0] sampled_count;
    (* ASYNC_REG = "TRUE", keep = 1 *) reg sample_meta, sample_sync;
    wire sample_ready = sample_sync != sample_previous;
    reg [COUNTER_BITS - 1:0] ring_count;
    reg low_carry, count_full;
    wire [7:0] ring_low_next = ring_count[7:0] + 8'd1;
    wire [COUNTER_BITS - 9:0] ring_high_next =
        ring_count[COUNTER_BITS - 1:8] + {{(COUNTER_BITS - 9){1'b0}}, low_carry};
    wire [COUNTER_BITS - 1:0] ring_next = {ring_high_next, ring_low_next};
    always @(posedge ring_clk or posedge reset) begin
        if (reset) begin
            window_meta <= 0;
            window_sync <= 0;
            window_previous <= 0;
            sample_toggle <= 0;
            sampled_count <= 0;
            ring_count <= 0;
            low_carry <= 0;
            count_full <= 0;
        end else if (ring_reset_pipe[1]) begin
            window_meta <= 0;
            window_sync <= 0;
            window_previous <= 0;
            sample_toggle <= 0;
            sampled_count <= 0;
            ring_count <= 0;
            low_carry <= 0;
            count_full <= 0;
        end else begin
            window_meta <= window_toggle;
            window_sync <= window_meta;
            if (window_sync != window_previous) begin
                window_previous <= window_sync;
                sample_toggle <= window_sync;
                sampled_count <= count_full ? MAX_MEASUREMENT : ring_next;
                ring_count <= 0;
                low_carry <= 0;
                count_full <= 0;
            end else if (!count_full) begin
                ring_count <= ring_next;
                low_carry <= ring_count[7:0] == 8'hfe;
                count_full <= ring_count == MAX_MEASUREMENT - 1'b1;
            end
        end
    end

    (* ASYNC_REG = "TRUE", keep = 1 *) reg missing_meta, missing_sync;
    always @(posedge ref_clk or posedge reset) begin
        if (reset) begin
            sample_meta <= 0;
            sample_sync <= 0;
            missing_meta <= 1;
            missing_sync <= 1;
        end else if (ref_reset_pipe[1]) begin
            sample_meta <= 0;
            sample_sync <= 0;
            missing_meta <= 1;
            missing_sync <= 1;
        end else begin
            sample_meta <= sample_toggle;
            sample_sync <= sample_meta;
            missing_meta <= reference_missing;
            missing_sync <= missing_meta;
        end
    end

    // A ring-clock watchdog clears lock when the reference stops.
    // A four-bit Gray heartbeat tracks reference progress even when the
    // ring is slower than ref_clk. Sampling requires fewer than 16
    // reference edges per ring cycle to avoid a complete counter wrap.
    (* keep *) reg [3:0] heartbeat;
    reg [3:0] ref_count;
    wire [3:0] ref_next = ref_count + 1'b1;
    always @(posedge ref_clk or posedge reset)
        if (reset) begin
            heartbeat <= 0;
            ref_count <= 0;
        end else if (ref_reset_pipe[1]) begin
            heartbeat <= 0;
            ref_count <= 0;
        end else begin
            ref_count <= ref_next;
            heartbeat <= ref_next ^ (ref_next >> 1);
        end
    (* ASYNC_REG = "TRUE", keep = 1 *) reg [3:0] heartbeat_meta, heartbeat_sync;
    (* ASYNC_REG = "TRUE", keep = 1 *) reg qualified_meta, qualified_sync;
    reg [3:0] heartbeat_previous;
    reg [WATCHDOG_BITS - 1:0] watchdog;
    // Predict carry and saturation one cycle ahead to shorten the watchdog
    // feedback path. Timeout is 2**WATCHDOG_BITS ring cycles without progress.
    reg watchdog_carry, watchdog_full;
    wire [WATCHDOG_BITS - 1:0] watchdog_next;
    generate
        if (WATCHDOG_BITS > 6) begin : wide_watchdog
            assign watchdog_next = {
                watchdog[WATCHDOG_BITS - 1:6] + {{(WATCHDOG_BITS - 7){1'b0}}, watchdog_carry},
                watchdog[5:0] + 6'd1
            };
        end else begin : small_watchdog
            assign watchdog_next = watchdog + 1'b1;
        end
    endgenerate

    always @(posedge ring_clk or posedge reset) begin
        if (reset) begin
            heartbeat_meta <= 0;
            heartbeat_sync <= 0;
            heartbeat_previous <= 0;
            qualified_meta <= 0;
            qualified_sync <= 0;
            watchdog <= 0;
            watchdog_carry <= 0;
            watchdog_full <= 0;
            reference_missing <= 1;
        end else if (ring_reset_pipe[1]) begin
            heartbeat_meta <= 0;
            heartbeat_sync <= 0;
            heartbeat_previous <= 0;
            qualified_meta <= 0;
            qualified_sync <= 0;
            watchdog <= 0;
            watchdog_carry <= 0;
            watchdog_full <= 0;
            reference_missing <= 1;
        end else begin
            heartbeat_meta <= heartbeat;
            heartbeat_sync <= heartbeat_meta;
            heartbeat_previous <= heartbeat_sync;
            qualified_meta <= locked_qualified;
            qualified_sync <= qualified_meta;
            if (heartbeat_sync != heartbeat_previous) begin
                watchdog <= 0;
                watchdog_carry <= 0;
                watchdog_full <= 0;
                if (!qualified_sync) reference_missing <= 0;
            end else if (watchdog_full) reference_missing <= 1;
            else begin
                watchdog <= watchdog_next;
                watchdog_carry <= (watchdog & WATCHDOG_BITS'(63)) == WATCHDOG_BITS'(62);
                watchdog_full <= watchdog == { {(WATCHDOG_BITS - 1){1'b1}}, 1'b0};
            end
        end
    end

    reg [Q_BITS - 1:0] tuning;
    reg [FRACTION_BITS - 1:0] density;
    wire [FRACTION_BITS:0] density_sum = {1'b0, density} + {1'b0, tuning[FRACTION_BITS - 1:0]};
    wire [CODE_BITS - 1:0] base_code = tuning[Q_BITS - 1:FRACTION_BITS];
    wire [CODE_BITS:0] emitted_code = {1'b0, base_code} + density_sum[FRACTION_BITS];
    // Limit each applied update to one level, including when a tuning change
    // coincides with a fractional accumulator carry.
    reg [CODE_BITS:0] last_code;
    reg [CODE_BITS:0] applied_code;
    always @* begin
        if (emitted_code > last_code + 1'b1) applied_code = last_code + 1'b1;
        else if (emitted_code + 1'b1 < last_code) applied_code = last_code - 1'b1;
        else applied_code = emitted_code;
    end

    // Three nested banks advance each physical stage through Gray states
    // 00 -> 01 -> 11 -> 10. Adjacent levels change exactly one trim wire.
    function integer primary_start (input integer stage_index);
        begin
            case (stage_index)
                0:       primary_start = 8;
                1:       primary_start = 3;
                2:       primary_start = 0;
                3:       primary_start = 10;
                4:       primary_start = 4;
                5:       primary_start = 6;
                6:       primary_start = 11;
                7:       primary_start = 2;
                8:       primary_start = 7;
                9:       primary_start = 12;
                10:      primary_start = 1;
                11:      primary_start = 5;
                12:      primary_start = 9;
                default: primary_start = 0;
            endcase
        end
    endfunction

    function integer secondary_start (input integer stage_index);
        begin
            case (stage_index)
                0:       secondary_start = 21;
                1:       secondary_start = 16;
                2:       secondary_start = 13;
                3:       secondary_start = 24;
                4:       secondary_start = 18;
                5:       secondary_start = 22;
                6:       secondary_start = 15;
                7:       secondary_start = 19;
                8:       secondary_start = 25;
                9:       secondary_start = 17;
                10:      secondary_start = 14;
                11:      secondary_start = 23;
                12:      secondary_start = 20;
                default: secondary_start = 0;
            endcase
        end
    endfunction

    function integer primary_end (input integer stage_index);
        begin
            case (stage_index)
                0:       primary_end = 35;
                1:       primary_end = 29;
                2:       primary_end = 26;
                3:       primary_end = 32;
                4:       primary_end = 37;
                5:       primary_end = 31;
                6:       primary_end = 34;
                7:       primary_end = 28;
                8:       primary_end = 36;
                9:       primary_end = 27;
                10:      primary_end = 33;
                11:      primary_end = 30;
                12:      primary_end = 38;
                default: primary_end = 0;
            endcase
        end
    endfunction

    integer k;
    always @(posedge ref_clk or posedge reset) begin
        if (reset) begin
            density <= 0;
            trim <= 26'h3ffe000;
            last_code <= N_LOADS;
        end else if (ref_reset_pipe[1] || !loop_enable) begin
            density <= 0;
            trim <= 26'h3ffe000;
            last_code <= N_LOADS;
        end else begin
            density <= density_sum[FRACTION_BITS - 1:0];
            last_code <= applied_code;
            for (k = 0; k < 13; k = k + 1) begin
                trim[k] <= (int'(applied_code) > primary_start(k)) &&
                           (int'(applied_code) <= primary_end(k));
                trim[k + 13] <= (int'(applied_code) > secondary_start(k));
            end
        end
    end

    reg [WINDOW_LOG2 - 1:0] window_count;
    reg [4:0] multiply_previous;
    reg warming;
    reg [GOOD_BITS - 1:0] good_windows;
    reg [1:0] saturated_windows;
    (* keep *) reg [COUNTER_BITS - 1:0] cycles;
    reg [2:0] update_pending;
    wire [COUNTER_BITS - 1:0] target = {{(COUNTER_BITS - 5){1'b0}}, multiply_cfg} << WINDOW_LOG2;
    wire [COUNTER_BITS - 1:0] tolerance =
        (target >> TOLERANCE_SHIFT) > 2 ? (target >> TOLERANCE_SHIFT) : 2;
    // Share the registered error across lock qualification, saturation
    // detection and loop gain. Positive error requests a slower ring.
    reg signed [COUNTER_BITS:0] error_value;
    wire error_negative = error_value[COUNTER_BITS];
    wire [COUNTER_BITS:0] error_magnitude = error_negative ? -error_value : error_value;
    wire in_band = (error_magnitude <= {1'b0, tolerance}) && multiply_cfg != 0 && cycles != 0;
    // A wider hold tolerance prevents lock chatter from count quantization.
    // Frequency correction continues outside the acquisition tolerance.
    wire [COUNTER_BITS - 1:0] hold_tolerance =
        (target >> (TOLERANCE_SHIFT - 1)) > 3 ? (target >> (TOLERANCE_SHIFT - 1)) : 3;
    wire hold_in_band =
        (error_magnitude <= {1'b0, hold_tolerance}) && multiply_cfg != 0 && cycles != 0;
    wire saturated = (error_magnitude > {1'b0, tolerance}) &&
        (((tuning == 0) && error_negative) ||
         ((tuning == Q_BITS'(MAX_Q)) && !error_negative));
    // Apply each window correction after three reference clocks, separating
    // error subtraction, gain/step limiting and tuning accumulation.
    // Measurements arrive every 2**WINDOW_LOG2 clocks (128 by default).
    reg [COUNTER_BITS + 2:0] magnitude_scaled;
    reg [FRACTION_BITS:0] bounded_step;
    reg signed [FRACTION_BITS:0] step_value;
    reg signed [Q_BITS + 1:0] next_tuning;
    always @(posedge ref_clk or posedge reset) begin
        if (reset) begin
            error_value <= 0;
            step_value <= 0;
        end else if (ref_reset_pipe[1]) begin
            error_value <= 0;
            step_value <= 0;
        end else begin
            error_value <= $signed({1'b0, cycles}) - $signed({1'b0, target});
            step_value <= error_negative ? -$signed(bounded_step) : $signed(bounded_step);
        end
    end

    always @* begin
        // Scale the unsigned magnitude before restoring the sign so division
        // by two truncates toward zero for either error polarity.
        if (multiply_cfg < 4) magnitude_scaled = {2'b00, error_magnitude} << 2;
        else if (multiply_cfg < 8) magnitude_scaled = {2'b00, error_magnitude} << 1;
        else if (multiply_cfg < 16) magnitude_scaled = {2'b00, error_magnitude};
        else magnitude_scaled = {2'b00, error_magnitude} >> 1;
        bounded_step = magnitude_scaled > MAX_STEP ?
            (FRACTION_BITS + 1)'(MAX_STEP) : magnitude_scaled[FRACTION_BITS:0];
    end

    always @* begin
        next_tuning = $signed({2'b00, tuning}) + step_value;
        if (next_tuning > MAX_Q) next_tuning = MAX_Q;
        if (next_tuning < 0) next_tuning = 0;
    end

    // Discard the first window after restart. Qualify lock over consecutive
    // good windows and report out_of_range after three saturated updates.
    always @(posedge ref_clk or posedge reset) begin
        if (reset) begin
            tuning <= Q_BITS'(MAX_Q);
            window_count <= 0;
            window_toggle <= 0;
            sample_previous <= 0;
            window_pending <= 0;
            multiply_previous <= 0;
            warming <= 1;
            locked_qualified <= 0;
            good_windows <= 0;
            saturated_windows <= 0;
            out_of_range <= 0;
            ring_alive <= 0;
            cycles <= 0;
            update_pending <= 0;
        end else if (ref_reset_pipe[1]) begin
            tuning <= Q_BITS'(MAX_Q);
            window_count <= 0;
            window_toggle <= 0;
            sample_previous <= 0;
            window_pending <= 0;
            multiply_previous <= multiply_cfg;
            warming <= 1;
            locked_qualified <= 0;
            good_windows <= 0;
            saturated_windows <= 0;
            out_of_range <= 0;
            ring_alive <= 0;
            cycles <= 0;
            update_pending <= 0;
        end else if (!loop_enable || multiply_cfg == 0 ||
                     multiply_cfg != multiply_previous || missing_sync) begin
            multiply_previous <= multiply_cfg;
            window_count <= 0;
            sample_previous <= sample_sync;
            window_pending <= 0;
            warming <= 1;
            locked_qualified <= 0;
            good_windows <= 0;
            saturated_windows <= 0;
            out_of_range <= multiply_cfg == 0;
            ring_alive <= 0;
            update_pending <= 0;
            if (!loop_enable) tuning <= Q_BITS'(MAX_Q);
        end else begin
            window_count <= window_count + 1'b1;
            update_pending <= {update_pending[1:0], 1'b0};
            // The held bus crosses into cycles once; status is then derived
            // entirely in the reference domain.
            if (update_pending[0]) ring_alive <= cycles != 0;
            if (sample_ready) begin
                sample_previous <= sample_sync;
                window_pending <= 0;
                if (warming) warming <= 0;
                else begin
                    cycles <= sampled_count;
                    update_pending[0] <= 1;
                end
            end
            if (&window_count) begin
                window_toggle <= !window_toggle;
                window_pending <= 1;
                // A stopped ring cannot return a capture. Detect that in the
                // reference domain instead of retaining an old lock forever.
                if (window_pending && !sample_ready) begin
                    warming <= 1;
                    cycles <= 0;
                    ring_alive <= 0;
                    locked_qualified <= 0;
                    good_windows <= 0;
                    update_pending <= 0;
                end
            end
            if (update_pending[2]) begin
                if (in_band) begin
                    saturated_windows <= 0;
                    out_of_range <= 0;
                    if (good_windows < GOOD_BITS'(LOCK_WINDOWS)) good_windows <= good_windows + 1'b1;
                    if (good_windows >= GOOD_BITS'(LOCK_WINDOWS - 1)) locked_qualified <= 1;
                end else begin
                    good_windows <= 0;
                    if (!hold_in_band) locked_qualified <= 0;
                    tuning <= next_tuning[Q_BITS - 1:0];
                    if (saturated) begin
                        if (saturated_windows < 3) saturated_windows <= saturated_windows + 1'b1;
                        if (saturated_windows >= 2) begin
                            out_of_range <= 1;
                            locked_qualified <= 0;
                        end
                    end else begin
                        saturated_windows <= 0;
                        out_of_range <= 0;
                    end
                end
            end
        end
    end
    assign measured_count = cycles;
    assign locked = locked_qualified && !reference_missing && loop_enable && !reset;
    assign tuning_q8 = {{(16 - Q_BITS){1'b0}}, tuning};
endmodule

`default_nettype wire

`endif
