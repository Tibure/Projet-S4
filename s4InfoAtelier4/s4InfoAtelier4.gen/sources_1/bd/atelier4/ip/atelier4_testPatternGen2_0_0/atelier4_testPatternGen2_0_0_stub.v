// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr  6 14:35:52 2023
// Host        : LAPTOP-KI2VB3H7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_testPatternGen2_0_0/atelier4_testPatternGen2_0_0_stub.v
// Design      : atelier4_testPatternGen2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "testPatternGen2,Vivado 2020.2" *)
module atelier4_testPatternGen2_0_0(clk, rstn, i_x, i_y, o_dataValid, o_dataPixel, 
  i_colorDataA, i_colorDataB)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,i_x[11:0],i_y[11:0],o_dataValid,o_dataPixel[23:0],i_colorDataA[31:0],i_colorDataB[31:0]" */;
  input clk;
  input rstn;
  input [11:0]i_x;
  input [11:0]i_y;
  output o_dataValid;
  output [23:0]o_dataPixel;
  input [31:0]i_colorDataA;
  input [31:0]i_colorDataB;
endmodule
