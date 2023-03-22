// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Mar 21 14:55:04 2023
// Host        : LAPTOP-KI2VB3H7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ atelier4_testPatternGen2_0_0_sim_netlist.v
// Design      : atelier4_testPatternGen2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Datapath
   (o_dataPixel,
    D,
    clk);
  output [8:0]o_dataPixel;
  input [1:0]D;
  input clk;

  wire [1:0]D;
  wire clk;
  wire [0:0]o_ColorCode;
  wire [8:0]o_dataPixel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colorConverter inst_color_converter
       (.Q({o_dataPixel[7],o_ColorCode}),
        .o_dataPixel({o_dataPixel[8],o_dataPixel[1:0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tile inst_tile
       (.D(D),
        .Q(o_ColorCode),
        .clk(clk),
        .o_dataPixel(o_dataPixel[7:2]));
endmodule

(* CHECK_LICENSE_TYPE = "atelier4_testPatternGen2_0_0,testPatternGen2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "testPatternGen2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  wire clk;
  wire [11:0]i_x;
  wire [11:0]i_y;
  wire [21:1]\^o_dataPixel ;

  assign o_dataPixel[23] = \^o_dataPixel [20];
  assign o_dataPixel[22] = \<const1> ;
  assign o_dataPixel[21:19] = \^o_dataPixel [21:19];
  assign o_dataPixel[18] = \^o_dataPixel [19];
  assign o_dataPixel[17:16] = \^o_dataPixel [17:16];
  assign o_dataPixel[15] = \^o_dataPixel [13];
  assign o_dataPixel[14:13] = \^o_dataPixel [14:13];
  assign o_dataPixel[12] = \^o_dataPixel [5];
  assign o_dataPixel[11] = \^o_dataPixel [14];
  assign o_dataPixel[10] = \^o_dataPixel [5];
  assign o_dataPixel[9] = \^o_dataPixel [5];
  assign o_dataPixel[8] = \^o_dataPixel [1];
  assign o_dataPixel[7] = \^o_dataPixel [14];
  assign o_dataPixel[6] = \^o_dataPixel [5];
  assign o_dataPixel[5] = \^o_dataPixel [5];
  assign o_dataPixel[4] = \^o_dataPixel [1];
  assign o_dataPixel[3] = \^o_dataPixel [1];
  assign o_dataPixel[2] = \^o_dataPixel [1];
  assign o_dataPixel[1] = \^o_dataPixel [1];
  assign o_dataPixel[0] = \^o_dataPixel [14];
  assign o_dataValid = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_testPatternGen2 U0
       (.D({i_x[5],i_y[5]}),
        .clk(clk),
        .o_dataPixel({\^o_dataPixel [20],\^o_dataPixel [21],\^o_dataPixel [19],\^o_dataPixel [17:16],\^o_dataPixel [13],\^o_dataPixel [14],\^o_dataPixel [5],\^o_dataPixel [1]}));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_colorConverter
   (o_dataPixel,
    Q);
  output [2:0]o_dataPixel;
  input [1:0]Q;

  wire [1:0]Q;
  wire [2:0]o_dataPixel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_dataPixel[1]_INST_0 
       (.I0(Q[1]),
        .O(o_dataPixel[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \o_dataPixel[20]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(o_dataPixel[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_dataPixel[5]_INST_0 
       (.I0(Q[0]),
        .O(o_dataPixel[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_testPatternGen2
   (o_dataPixel,
    D,
    clk);
  output [8:0]o_dataPixel;
  input [1:0]D;
  input clk;

  wire [1:0]D;
  wire clk;
  wire [8:0]o_dataPixel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Datapath inst_datapath
       (.D(D),
        .clk(clk),
        .o_dataPixel(o_dataPixel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tile
   (o_dataPixel,
    Q,
    D,
    clk);
  output [5:0]o_dataPixel;
  output [0:0]Q;
  input [1:0]D;
  input clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire clk;
  wire [5:0]o_dataPixel;
  wire [7:3]s_index;
  wire [1:0]\s_tile_textures[0][0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_ColorCode[0]_i_1 
       (.I0(s_index[3]),
        .I1(s_index[7]),
        .O(\s_tile_textures[0][0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_ColorCode[1]_i_1 
       (.I0(s_index[3]),
        .I1(s_index[7]),
        .O(\s_tile_textures[0][0]_0 [1]));
  FDRE \o_ColorCode_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [0]),
        .Q(Q),
        .R(1'b0));
  FDRE \o_ColorCode_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [1]),
        .Q(o_dataPixel[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \o_dataPixel[0]_INST_0 
       (.I0(Q),
        .I1(o_dataPixel[5]),
        .O(o_dataPixel[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_dataPixel[13]_INST_0 
       (.I0(o_dataPixel[5]),
        .I1(Q),
        .O(o_dataPixel[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \o_dataPixel[16]_INST_0 
       (.I0(o_dataPixel[5]),
        .I1(Q),
        .O(o_dataPixel[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_dataPixel[17]_INST_0 
       (.I0(o_dataPixel[5]),
        .I1(Q),
        .O(o_dataPixel[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \o_dataPixel[18]_INST_0 
       (.I0(Q),
        .I1(o_dataPixel[5]),
        .O(o_dataPixel[4]));
  FDRE \s_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(s_index[3]),
        .R(1'b0));
  FDRE \s_index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(s_index[7]),
        .R(1'b0));
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
