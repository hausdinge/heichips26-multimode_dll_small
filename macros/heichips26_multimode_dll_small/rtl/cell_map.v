// SPDX-License-Identifier: Apache-2.0
// Explicit SG13CMOS5L clock-path cells.
// All technology-specific cell instances belong in this mapping file.
`ifndef SMALL_DLL_CELL_MAP_V
`define SMALL_DLL_CELL_MAP_V
`default_nettype none

module clkbuf_1 (input wire A, output wire X);
    sg13cmos5l_buf_1 u_buf (.A(A), .X(X));
endmodule

module clkbuf_2 (input wire A, output wire X);
    sg13cmos5l_buf_2 u_buf (.A(A), .X(X));
endmodule

module clkbuf_4 (input wire A, output wire X);
    sg13cmos5l_buf_4 u_buf (.A(A), .X(X));
endmodule

module clkbuf_8 (input wire A, output wire X);
    sg13cmos5l_buf_8 u_buf (.A(A), .X(X));
endmodule

module clkbuf_16 (input wire A, output wire X);
    sg13cmos5l_buf_16 u_buf (.A(A), .X(X));
endmodule

module clkinv_1 (input wire A, output wire Y);
    sg13cmos5l_inv_1 u_inv (.A(A), .Y(Y));
endmodule

module clkinv_2 (input wire A, output wire Y);
    sg13cmos5l_inv_2 u_inv (.A(A), .Y(Y));
endmodule

module clkinv_4 (input wire A, output wire Y);
    sg13cmos5l_inv_4 u_inv (.A(A), .Y(Y));
endmodule

module or2_2 (input wire A, input wire B, output wire X);
    // This wrapper uses the library OR2 with drive strength 1.
    sg13cmos5l_or2_1 u_or (.A(A), .B(B), .X(X));
endmodule

module conb_1 (output wire HI, output wire LO);
    sg13cmos5l_tiehi u_hi (.L_HI(HI));
    sg13cmos5l_tielo u_lo (.L_LO(LO));
endmodule

module clkmux2_2 (input wire A0, A1, S, output wire X);
    wire sn, n0, n1;
    (* keep *) sg13cmos5l_inv_1 u_sel (.A(S), .Y(sn));
    (* keep *) sg13cmos5l_nand2_2 u_a0 (.A(A0), .B(sn), .Y(n0));
    (* keep *) sg13cmos5l_nand2_2 u_a1 (.A(A1), .B(S), .Y(n1));
    (* keep *) sg13cmos5l_nand2_2 u_merge (.A(n0), .B(n1), .Y(X));
endmodule

module clkand2_2 (input wire A, B, output wire X);
    (* keep *) sg13cmos5l_and2_2 u_and (.A(A), .B(B), .X(X));
endmodule

module clknand2_1 (input wire A, B, output wire Y);
    (* keep *) sg13cmos5l_nand2_1 u_nand (.A(A), .B(B), .Y(Y));
endmodule

module clknand2_2 (input wire A, B, output wire Y);
    (* keep *) sg13cmos5l_nand2_2 u_nand (.A(A), .B(B), .Y(Y));
endmodule

module clknand3_1 (input wire A, B, C, output wire Y);
    (* keep *) sg13cmos5l_nand3_1 u_nand (.A(A), .B(B), .C(C), .Y(Y));
endmodule

// Rising-edge synchronizer register with active-low asynchronous reset.
module clksyncff_1 (input wire CLK, D, RESET_B, output wire Q);
    (* keep, ASYNC_REG = "TRUE" *) sg13cmos5l_dfrbpq_1 u_ff (
        .CLK(CLK), .D(D), .RESET_B(RESET_B), .Q(Q)
    );
endmodule

module clknor2_2 (input wire A, B, output wire Y);
    (* keep *) sg13cmos5l_nor2_2 u_nor (.A(A), .B(B), .Y(Y));
endmodule

module clka21oi_2 (input wire A1, A2, B1, output wire Y);
    (* keep *) sg13cmos5l_a21oi_2 u_aoi (.A1(A1), .A2(A2), .B1(B1), .Y(Y));
endmodule

`default_nettype wire
`endif
