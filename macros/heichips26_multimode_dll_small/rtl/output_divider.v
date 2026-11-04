// SPDX-License-Identifier: Apache-2.0
`default_nettype none

// Integer divider: N = 0 bypasses, N = 1 stops, N >= 2 divides by N.
// SIZE = 5 supports divisors through 31. Set N before reset release and
// hold it static while running. The common run_resetb releases counters only
// after both dividers have sampled configuration, on a falling source edge.
// The two configuration registers reset to 2
// and sample N on input-clock edges; live updates are not atomic.
module output_divider #(
    parameter SIZE = 5
) (
    input  wire              in,
    output wire              out,
    input  wire [SIZE - 1:0] N,
    input  wire              resetb,
    input  wire              run_resetb
);
    reg [SIZE - 1:0] syncNp;
    (* keep *) reg [SIZE - 1:0] syncN;
    reg [SIZE - 1:0] count;
    reg high_pos, high_neg;
    wire valid = |syncN[SIZE - 1:1];
    wire bypass = ~|syncN;

    // Separate the register banks so the shared oscillator branch does not
    // drive every flip-flop directly. At SIZE = 5 these branches drive 5,
    // 5 and 7 cell inputs, below the library's maximum fanout of 8.
    // The counter and falling-edge extension share the same clock branch.
    // Bypass keeps its direct input path and the matched output inverters.
    wire clk_sample, clk_config, clk_count;
    (* keep *) clkbuf_4 u_clkbuf_sample (.A(in), .X(clk_sample));
    (* keep *) clkbuf_4 u_clkbuf_config (.A(in), .X(clk_config));
    (* keep *) clkbuf_4 u_clkbuf_count (.A(in), .X(clk_count));

    always @(posedge clk_sample or negedge resetb)
        if (!resetb) syncNp <= 2;
        else syncNp <= N;

    always @(posedge clk_config or negedge resetb)
        if (!resetb) syncN <= 2;
        else syncN <= syncNp;

    // One modulo-N counter serves both even and odd divisors. The N-1
    // comparison keeps a second adder out of the counter feedback path.
    always @(posedge clk_count or negedge run_resetb) begin
        if (!run_resetb) begin
            count <= 0;
            high_pos <= 0;
        end else if (!valid) begin
            count <= 0;
            high_pos <= 0;
        end else begin
            if (count >= syncN - 1'b1) count <= 0;
            else count <= count + 1'b1;
            if (count == 0) high_pos <= 1;
            else if (count == {1'b0, syncN[SIZE - 1:1]}) high_pos <= 0;
        end
    end

    // For odd N, extend the high pulse by half an input period. The
    // high_pos-to-high_neg path has a half-cycle timing constraint.
    always @(negedge clk_count or negedge run_resetb)
        if (!run_resetb) high_neg <= 0;
        else high_neg <= high_pos;

    wire odd_high, divided_high, enabled_high, selected;
    wire running, output_n, output_p;
    (* keep *) or2_2 u_odd_extend (.A(high_pos), .B(high_neg), .X(odd_high));
    (* keep *) clkmux2_2 u_parity_mux (
        .A0 (high_pos),
        .A1 (odd_high),
        .S  (syncN[0]),
        .X  (divided_high)
    );
    (* keep *) clkand2_2 u_valid_gate (.A(divided_high), .B(valid), .X(enabled_high));
    (* keep *) clkmux2_2 u_bypass_mux (.A0(enabled_high), .A1(in), .S(bypass), .X(selected));

    (* keep *) clkand2_2 u_run_gate (.A(selected), .B(run_resetb), .X(running));

    // The inverter pair gives each output edge one rising and one falling
    // cell transition before the output buffer, limiting duty-cycle skew.
    (* keep *) clkinv_2 u_output_inv0 (.A(running), .Y(output_n));
    (* keep *) clkinv_2 u_output_inv1 (.A(output_n), .Y(output_p));
    (* keep *) clkbuf_16 u_clkbuf_out (.A(output_p), .X(out));
endmodule

`default_nettype wire
