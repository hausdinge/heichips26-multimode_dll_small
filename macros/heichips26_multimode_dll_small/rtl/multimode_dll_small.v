// SPDX-License-Identifier: Apache-2.0
`default_nettype none

// Frequency multiplication followed by two related integer-divided clocks.
// Configuration is static during operation and must be changed under reset.
module multimode_dll_small (
    input wire clk, resetb, enable,
    input wire [4:0] multiply, divide0, divide1,
    output wire clk0, clk1, stable
);
    wire resetb_buffered, enable_buffered;
    (* keep *) clkbuf_4 u_resetb_buffer (.A(resetb), .X(resetb_buffered));
    (* keep *) clkbuf_4 u_enable_buffer (.A(enable), .X(enable_buffered));
    wire reset = !resetb_buffered || !enable_buffered;
    wire active_resetb = !reset;
    wire ring_reset;
    // Isolate the fixed oscillator reset loads from the repaired digital tree.
    (* keep *) clkbuf_4 u_ring_reset_buffer (.A(reset), .X(ring_reset));
    wire ring_clk, controller_ring_clk, controller_ref_clk, startup_clk;
    wire [1:0] divider_clk;
    wire [25:0] trim;
    wire locked;
    (* keep *) ring_oscillator u_ring (.reset(ring_reset), .trim(trim), .clk_out(ring_clk));
    (* keep *) clkbuf_2 u_ref_buffer (.A(clk), .X(controller_ref_clk));
    (* keep *) clkbuf_2 u_controller_buffer (.A(ring_clk), .X(controller_ring_clk));
    (* keep *) clkbuf_2 u_startup_buffer (.A(ring_clk), .X(startup_clk));
    (* keep *) clkbuf_4 u_div0_buffer (.A(ring_clk), .X(divider_clk[0]));
    (* keep *) clkbuf_4 u_div1_buffer (.A(ring_clk), .X(divider_clk[1]));

    graded_fll_controller #(.WATCHDOG_BITS(12)) u_control (
        .reset(reset), .ref_clk(controller_ref_clk), .ring_clk(controller_ring_clk),
        .multiply(multiply), .loop_enable(1'b1), .trim(trim), .locked(locked),
        .out_of_range(), .ring_alive(), .measured_count(), .tuning_q8()
    );
    assign stable = locked && active_resetb;

    // One common epoch for both counters: asynchronous assertion, then eight
    // falling source edges for reset release and configuration settling.
    (* ASYNC_REG = "TRUE", keep *) reg [1:0] release_sync;
    reg [5:0] startup;
    always @(negedge startup_clk or posedge reset) begin
        if (reset) begin
            release_sync <= 0;
            startup <= 0;
        end else begin
            release_sync <= {release_sync[0], 1'b1};
            startup <= {startup[4:0], release_sync[1]};
        end
    end
    wire run_resetb = startup[5];
    wire [1:0] divider_resetb;
    // Each branch drives seven counter flops and one output gate.
    (* keep *) clkbuf_4 u_div0_reset_buffer (.A(run_resetb), .X(divider_resetb[0]));
    (* keep *) clkbuf_4 u_div1_reset_buffer (.A(run_resetb), .X(divider_resetb[1]));
    output_divider u_div0 (
        .in(divider_clk[0]), .out(clk0), .N(divide0),
        .resetb(active_resetb), .run_resetb(divider_resetb[0])
    );
    output_divider u_div1 (
        .in(divider_clk[1]), .out(clk1), .N(divide1),
        .resetb(active_resetb), .run_resetb(divider_resetb[1])
    );
endmodule
`default_nettype wire
