// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 23 14:35:41 2023
// Host        : DESKTOP-STNSRIB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_testPatternGen2_0_0/atelier4_testPatternGen2_0_0_sim_netlist.v
// Design      : atelier4_testPatternGen2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "atelier4_testPatternGen2_0_0,testPatternGen2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "testPatternGen2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module atelier4_testPatternGen2_0_0
   (clk,
    rstn,
    i_x,
    i_y,
    o_dataValid,
    o_dataPixel,
    i_colorDataA,
    i_colorDataB);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rstn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [11:0]i_x;
  input [11:0]i_y;
  output o_dataValid;
  output [23:0]o_dataPixel;
  input [31:0]i_colorDataA;
  input [31:0]i_colorDataB;

  wire \<const1> ;
  wire [31:0]i_colorDataA;
  wire [31:0]i_colorDataB;
  wire [11:0]i_y;
  wire [23:0]o_dataPixel;

  assign o_dataValid = \<const1> ;
  atelier4_testPatternGen2_0_0_testPatternGen2 U0
       (.i_colorDataA(i_colorDataA[23:0]),
        .i_colorDataB(i_colorDataB[23:0]),
        .i_y(i_y[3]),
        .o_dataPixel(o_dataPixel));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "testPatternGen2" *) 
module atelier4_testPatternGen2_0_0_testPatternGen2
   (o_dataPixel,
    i_colorDataA,
    i_colorDataB,
    i_y);
  output [23:0]o_dataPixel;
  input [23:0]i_colorDataA;
  input [23:0]i_colorDataB;
  input [0:0]i_y;

  wire [23:0]i_colorDataA;
  wire [23:0]i_colorDataB;
  wire [0:0]i_y;
  wire [23:0]o_dataPixel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[0]_INST_0 
       (.I0(i_colorDataA[0]),
        .I1(i_colorDataB[0]),
        .I2(i_y),
        .O(o_dataPixel[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[10]_INST_0 
       (.I0(i_colorDataA[10]),
        .I1(i_colorDataB[10]),
        .I2(i_y),
        .O(o_dataPixel[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[11]_INST_0 
       (.I0(i_colorDataA[11]),
        .I1(i_colorDataB[11]),
        .I2(i_y),
        .O(o_dataPixel[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[12]_INST_0 
       (.I0(i_colorDataA[12]),
        .I1(i_colorDataB[12]),
        .I2(i_y),
        .O(o_dataPixel[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[13]_INST_0 
       (.I0(i_colorDataA[13]),
        .I1(i_colorDataB[13]),
        .I2(i_y),
        .O(o_dataPixel[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[14]_INST_0 
       (.I0(i_colorDataA[14]),
        .I1(i_colorDataB[14]),
        .I2(i_y),
        .O(o_dataPixel[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[15]_INST_0 
       (.I0(i_colorDataA[15]),
        .I1(i_colorDataB[15]),
        .I2(i_y),
        .O(o_dataPixel[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[16]_INST_0 
       (.I0(i_colorDataA[16]),
        .I1(i_colorDataB[16]),
        .I2(i_y),
        .O(o_dataPixel[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[17]_INST_0 
       (.I0(i_colorDataA[17]),
        .I1(i_colorDataB[17]),
        .I2(i_y),
        .O(o_dataPixel[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[18]_INST_0 
       (.I0(i_colorDataA[18]),
        .I1(i_colorDataB[18]),
        .I2(i_y),
        .O(o_dataPixel[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[19]_INST_0 
       (.I0(i_colorDataA[19]),
        .I1(i_colorDataB[19]),
        .I2(i_y),
        .O(o_dataPixel[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[1]_INST_0 
       (.I0(i_colorDataA[1]),
        .I1(i_colorDataB[1]),
        .I2(i_y),
        .O(o_dataPixel[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[20]_INST_0 
       (.I0(i_colorDataA[20]),
        .I1(i_colorDataB[20]),
        .I2(i_y),
        .O(o_dataPixel[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[21]_INST_0 
       (.I0(i_colorDataA[21]),
        .I1(i_colorDataB[21]),
        .I2(i_y),
        .O(o_dataPixel[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[22]_INST_0 
       (.I0(i_colorDataA[22]),
        .I1(i_colorDataB[22]),
        .I2(i_y),
        .O(o_dataPixel[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[23]_INST_0 
       (.I0(i_colorDataA[23]),
        .I1(i_colorDataB[23]),
        .I2(i_y),
        .O(o_dataPixel[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[2]_INST_0 
       (.I0(i_colorDataA[2]),
        .I1(i_colorDataB[2]),
        .I2(i_y),
        .O(o_dataPixel[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[3]_INST_0 
       (.I0(i_colorDataA[3]),
        .I1(i_colorDataB[3]),
        .I2(i_y),
        .O(o_dataPixel[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[4]_INST_0 
       (.I0(i_colorDataA[4]),
        .I1(i_colorDataB[4]),
        .I2(i_y),
        .O(o_dataPixel[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[5]_INST_0 
       (.I0(i_colorDataA[5]),
        .I1(i_colorDataB[5]),
        .I2(i_y),
        .O(o_dataPixel[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[6]_INST_0 
       (.I0(i_colorDataA[6]),
        .I1(i_colorDataB[6]),
        .I2(i_y),
        .O(o_dataPixel[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[7]_INST_0 
       (.I0(i_colorDataA[7]),
        .I1(i_colorDataB[7]),
        .I2(i_y),
        .O(o_dataPixel[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[8]_INST_0 
       (.I0(i_colorDataA[8]),
        .I1(i_colorDataB[8]),
        .I2(i_y),
        .O(o_dataPixel[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \o_dataPixel[9]_INST_0 
       (.I0(i_colorDataA[9]),
        .I1(i_colorDataB[9]),
        .I2(i_y),
        .O(o_dataPixel[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
