module heichips26_analog_project (
`ifdef USE_POWER_PINS
    inout VAPWR,
    inout VGND,
    inout VPWR,
`endif
    inout analog_0,
    inout analog_1,
    inout analog_2,
    input clk,
    input ena,
    input rst_n,
    input [7:0] ui_in,
    input [7:0] uio_in,
    output [7:0] uio_oe,
    output [7:0] uio_out,
    output [7:0] uo_out
);
endmodule
