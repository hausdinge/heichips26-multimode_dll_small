`ifndef SMALL_DLL_RING_V
`define SMALL_DLL_RING_V
`timescale 1ns/1ps
// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

// Thirteen-stage tunable ring with one isolated output clock.
// FUNCTIONAL selects the SPICE-derived frequency model in
// testbenches/verilog/ring_model.vh. Physical timing is characterized in
// SPICE; digital cell delays only approximate oscillator behavior.

// Inverting stage with four delay states, ordered from fast to slow:
// trim 00: direct AOI path; 01: short NAND path; 11: isolated tap path;
// trim 10: isolated tap path plus a buffer and two inverters.
// reset forces out low in every state.
module tunable_stage (
    input  wire       in,
    input  wire [1:0] trim,
    input  wire       reset,
    input  wire       trim_reset,
    output wire       out,
    output wire       tap
);
    wire d0, selected, d1, d2, fast_select, secondary_n;
    wire short_select, short_n, long_n, reset_n, slow_reset;
    wire [1:0] trim_meta, trim_applied;
    wire trim_reset_n;
    (* keep *) clkinv_2 trim_reset_inv (.A(trim_reset), .Y(trim_reset_n));
    // Capture asynchronous trim requests in two local stages. The delayed
    // falling input edge clocks these registers while both data paths are low.
    // The first rank resolves the crossing; only the second rank controls delay.
    genvar bit_index;
    generate
        for (bit_index = 0; bit_index < 2; bit_index = bit_index + 1) begin : trim_sync
            (* keep, ASYNC_REG = "TRUE" *) clksyncff_1 meta (
                .CLK(d1), .D(trim[bit_index]), .RESET_B(trim_reset_n), .Q(trim_meta[bit_index])
            );
            (* keep, ASYNC_REG = "TRUE" *) clksyncff_1 applied (
                .CLK(d1), .D(trim_meta[bit_index]), .RESET_B(trim_reset_n), .Q(trim_applied[bit_index])
            );
        end
    endgenerate
    (* keep *) clkbuf_2 slow_isolation (.A(in), .X(tap));
    (* keep *) clkbuf_1 delaybuf1 (.A(tap), .X(d0));
    (* keep *) clkmux2_2 delaymux1 (.A0(d2), .A1(tap), .S(trim_applied[0]), .X(selected));
    (* keep *) clkinv_2 delayinv1 (.A(d0), .Y(d1));
    (* keep *) clkinv_1 delayint0 (.A(d1), .Y(d2));
    (* keep *) clknor2_2 fast_decode (.A(trim_applied[0]), .B(trim_applied[1]), .Y(fast_select));
    (* keep *) clkinv_1 secondary_inv (.A(trim_applied[1]), .Y(secondary_n));
    (* keep *) clkand2_2 short_decode (.A(trim_applied[0]), .B(secondary_n), .X(short_select));
    // The short path uses the ring node directly. The longer paths and
    // phase tap share the isolation buffer, limiting load on the ring node.
    // NAND logic combines the selected path with the active-high reset.
    (* keep *) clkinv_1 reset_inv (.A(reset), .Y(reset_n));
    (* keep *) clknand2_1 short_gate (.A(in), .B(short_select), .Y(short_n));
    (* keep *) clknand2_2 long_gate (.A(selected), .B(trim_applied[1]), .Y(long_n));
    (* keep *) clknand3_1 merge_gate (.A(short_n), .B(long_n), .C(reset_n), .Y(slow_reset));
    (* keep *) clka21oi_2 reset_gate (.A1(in), .A2(fast_select), .B1(slow_reset), .Y(out));
endmodule

// Ring stage with reset tied inactive.
module delay_stage (
    input  wire       trim_reset,
    input  wire       in,
    input  wire [1:0] trim,
    output wire       out,
    output wire       tap
);
    wire zero;
    (* keep *) conb_1 const0 (.HI(), .LO(zero));
    (* keep *) tunable_stage core (.in(in), .trim(trim), .reset(zero), .trim_reset(trim_reset), .out(out), .tap(tap));
endmodule

// Feedback stage that sets a defined ring state during reset.
module start_stage (
    input  wire       in,
    input  wire [1:0] trim,
    input  wire       reset,
    output wire       out,
    output wire       tap
);
    (* keep *) tunable_stage core (.in(in), .trim(trim), .reset(reset), .trim_reset(reset), .out(out), .tap(tap));
endmodule

// Adjacent characterized trim levels change one wire. Only clk_out is exposed;
// internal stage nodes form the delay loop and are not selectable phase outputs.
module ring_oscillator (
    input wire reset,
    input wire [25:0] trim,
    output wire clk_out
);
`ifdef FUNCTIONAL
    `include "ring_model.vh"
`else
    wire [12:0] d, t;
    wire [3:0] trim_reset_branch;
    wire output_n, output_p;
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : trim_reset_buffers
            (* keep *) clkbuf_4 u_buffer (.A(reset), .X(trim_reset_branch[i]));
        end
        for (i = 0; i < 12; i = i + 1) begin : dstage
            (* keep *) delay_stage id (
                .trim_reset(trim_reset_branch[i / 3]),
                .in(d[i]), .trim({trim[i + 13], trim[i]}),
                .out(d[i + 1]), .tap(t[i])
            );
        end
    endgenerate
    (* keep *) start_stage iss (
        .in(d[12]), .trim({trim[25], trim[12]}), .reset(reset),
        .out(d[0]), .tap(t[12])
    );
    // Each output edge crosses one rising and one falling inverter delay.
    (* keep *) clkinv_2 u_output_inv0 (.A(d[0]), .Y(output_n));
    (* keep *) clkinv_4 u_output_inv1 (.A(output_n), .Y(output_p));
    (* keep *) clkbuf_8 u_clkbuf (.A(output_p), .X(clk_out));
`endif
endmodule
`default_nettype wire
`endif
