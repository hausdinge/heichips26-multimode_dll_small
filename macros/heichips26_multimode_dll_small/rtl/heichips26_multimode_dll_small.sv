// SPDX-License-Identifier: Apache-2.0
`default_nettype none
`include "cell_map.v"
`include "graded_fll_controller.v"
`include "ring_oscillator.v"
`include "output_divider.v"
`include "multimode_dll_small.v"

module heichips26_multimode_dll_small (
`ifdef USE_POWER_PINS
    inout wire VPWR,
    inout wire VGND,
`endif
    input wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input wire ena,
    input wire clk,
    input wire rst_n,
    output wire analog_0,
    output wire analog_1,
    output wire analog_2
);
    // Fifteen parallel configuration bits, low field first:
    // multiply = ui_in[4:0], divide0 = {uio_in[1:0], ui_in[7:5]},
    // divide1 = uio_in[6:2]. uio_in[7] is reserved.
    wire [14:0] config_bits = {uio_in[6:0], ui_in};
    wire clk0, clk1, stable;
    multimode_dll_small u_dll (
        .clk(clk), .resetb(rst_n), .enable(ena),
        .multiply(config_bits[4:0]), .divide0(config_bits[9:5]),
        .divide1(config_bits[14:10]), .clk0(clk0), .clk1(clk1), .stable(stable)
    );
    // Dedicated physical buffers isolate fabric and pad loading.
    (* keep *) clkbuf_8 u_fabric0 (.A(clk0), .X(uo_out[0]));
    (* keep *) clkbuf_8 u_fabric1 (.A(clk1), .X(uo_out[1]));
    (* keep *) clkbuf_8 u_pad0 (.A(clk0), .X(analog_0));
    (* keep *) clkbuf_8 u_pad1 (.A(clk1), .X(analog_1));
    assign uo_out[7:2] = {5'b0, stable};
    assign uio_out = 8'b0;
    assign uio_oe = 8'b0;
    assign analog_2 = 1'b0;
    wire unused = uio_in[7];
endmodule
`default_nettype wire
