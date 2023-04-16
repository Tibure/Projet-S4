// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 22 14:43:29 2023
// Host        : XPS-Etienne running 64-bit major release  (build 9200)
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
  wire clk;
  wire [11:0]i_x;
  wire [11:0]i_y;
  wire [23:0]o_dataPixel;

  assign o_dataValid = \<const1> ;
  atelier4_testPatternGen2_0_0_testPatternGen2 U0
       (.clk(clk),
        .i_x(i_x[10:0]),
        .i_y(i_y[10:0]),
        .o_dataPixel(o_dataPixel));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Datapath" *) 
module atelier4_testPatternGen2_0_0_Datapath
   (o_dataPixel,
    i_x,
    i_y,
    clk);
  output [23:0]o_dataPixel;
  input [10:0]i_x;
  input [10:0]i_y;
  input clk;

  wire clk;
  wire [10:0]i_x;
  wire [10:0]i_y;
  wire [3:0]o_ColorCode;
  wire [23:0]o_dataPixel;

  atelier4_testPatternGen2_0_0_colorConverter inst_color_converter
       (.Q(o_ColorCode),
        .o_dataPixel({o_dataPixel[23],o_dataPixel[21:0]}));
  atelier4_testPatternGen2_0_0_tile inst_tile
       (.Q(o_ColorCode),
        .clk(clk),
        .i_x(i_x),
        .i_y(i_y),
        .o_dataPixel(o_dataPixel[22]));
endmodule

(* ORIG_REF_NAME = "colorConverter" *) 
module atelier4_testPatternGen2_0_0_colorConverter
   (o_dataPixel,
    Q);
  output [22:0]o_dataPixel;
  input [3:0]Q;

  wire [3:0]Q;
  wire [22:0]o_dataPixel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8151)) 
    \o_dataPixel[0]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h38A5)) 
    \o_dataPixel[10]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_dataPixel[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2BD5)) 
    \o_dataPixel[11]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h389D)) 
    \o_dataPixel[12]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_dataPixel[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2CC9)) 
    \o_dataPixel[13]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6DD9)) 
    \o_dataPixel[14]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AC1)) 
    \o_dataPixel[15]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBE25)) 
    \o_dataPixel[16]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(o_dataPixel[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBC95)) 
    \o_dataPixel[17]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(o_dataPixel[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB8DD)) 
    \o_dataPixel[18]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB2FD)) 
    \o_dataPixel[19]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA845)) 
    \o_dataPixel[1]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(o_dataPixel[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBE24)) 
    \o_dataPixel[20]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(o_dataPixel[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBDD0)) 
    \o_dataPixel[21]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(o_dataPixel[21]));
  LUT4 #(
    .INIT(16'hF62C)) 
    \o_dataPixel[23]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(o_dataPixel[22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC04F)) 
    \o_dataPixel[2]_INST_0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(o_dataPixel[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h804D)) 
    \o_dataPixel[3]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(o_dataPixel[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA045)) 
    \o_dataPixel[4]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(o_dataPixel[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h98D5)) 
    \o_dataPixel[5]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_dataPixel[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDA45)) 
    \o_dataPixel[6]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_dataPixel[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC955)) 
    \o_dataPixel[7]_INST_0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(o_dataPixel[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h708F)) 
    \o_dataPixel[8]_INST_0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(o_dataPixel[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h38B5)) 
    \o_dataPixel[9]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(o_dataPixel[9]));
endmodule

(* ORIG_REF_NAME = "testPatternGen2" *) 
module atelier4_testPatternGen2_0_0_testPatternGen2
   (o_dataPixel,
    i_x,
    i_y,
    clk);
  output [23:0]o_dataPixel;
  input [10:0]i_x;
  input [10:0]i_y;
  input clk;

  wire clk;
  wire [10:0]i_x;
  wire [10:0]i_y;
  wire [23:0]o_dataPixel;

  atelier4_testPatternGen2_0_0_Datapath inst_datapath
       (.clk(clk),
        .i_x(i_x),
        .i_y(i_y),
        .o_dataPixel(o_dataPixel));
endmodule

(* ORIG_REF_NAME = "tile" *) 
module atelier4_testPatternGen2_0_0_tile
   (o_dataPixel,
    Q,
    i_x,
    clk,
    i_y);
  output [0:0]o_dataPixel;
  output [3:0]Q;
  input [10:0]i_x;
  input clk;
  input [10:0]i_y;

  wire [3:0]Q;
  wire clk;
  wire [10:0]i_x;
  wire [10:0]i_y;
  wire \o_ColorCode[0]_i_13_n_0 ;
  wire \o_ColorCode[0]_i_14_n_0 ;
  wire \o_ColorCode[0]_i_15_n_0 ;
  wire \o_ColorCode[0]_i_16_n_0 ;
  wire \o_ColorCode[0]_i_17_n_0 ;
  wire \o_ColorCode[0]_i_18_n_0 ;
  wire \o_ColorCode[0]_i_19_n_0 ;
  wire \o_ColorCode[0]_i_20_n_0 ;
  wire \o_ColorCode[0]_i_2_n_0 ;
  wire \o_ColorCode[0]_i_3_n_0 ;
  wire \o_ColorCode[0]_i_6_n_0 ;
  wire \o_ColorCode[0]_i_7_n_0 ;
  wire \o_ColorCode[0]_i_8_n_0 ;
  wire \o_ColorCode[1]_i_10_n_0 ;
  wire \o_ColorCode[1]_i_11_n_0 ;
  wire \o_ColorCode[1]_i_12_n_0 ;
  wire \o_ColorCode[1]_i_13_n_0 ;
  wire \o_ColorCode[1]_i_14_n_0 ;
  wire \o_ColorCode[1]_i_15_n_0 ;
  wire \o_ColorCode[1]_i_16_n_0 ;
  wire \o_ColorCode[1]_i_17_n_0 ;
  wire \o_ColorCode[1]_i_18_n_0 ;
  wire \o_ColorCode[1]_i_19_n_0 ;
  wire \o_ColorCode[1]_i_20_n_0 ;
  wire \o_ColorCode[1]_i_21_n_0 ;
  wire \o_ColorCode[1]_i_22_n_0 ;
  wire \o_ColorCode[1]_i_23_n_0 ;
  wire \o_ColorCode[1]_i_2_n_0 ;
  wire \o_ColorCode[1]_i_3_n_0 ;
  wire \o_ColorCode[1]_i_5_n_0 ;
  wire \o_ColorCode[1]_i_7_n_0 ;
  wire \o_ColorCode[1]_i_8_n_0 ;
  wire \o_ColorCode[2]_i_10_n_0 ;
  wire \o_ColorCode[2]_i_11_n_0 ;
  wire \o_ColorCode[2]_i_12_n_0 ;
  wire \o_ColorCode[2]_i_13_n_0 ;
  wire \o_ColorCode[2]_i_14_n_0 ;
  wire \o_ColorCode[2]_i_15_n_0 ;
  wire \o_ColorCode[2]_i_16_n_0 ;
  wire \o_ColorCode[2]_i_17_n_0 ;
  wire \o_ColorCode[2]_i_18_n_0 ;
  wire \o_ColorCode[2]_i_2_n_0 ;
  wire \o_ColorCode[2]_i_3_n_0 ;
  wire \o_ColorCode[2]_i_4_n_0 ;
  wire \o_ColorCode[2]_i_8_n_0 ;
  wire \o_ColorCode[2]_i_9_n_0 ;
  wire \o_ColorCode[3]_i_10_n_0 ;
  wire \o_ColorCode[3]_i_11_n_0 ;
  wire \o_ColorCode[3]_i_12_n_0 ;
  wire \o_ColorCode[3]_i_13_n_0 ;
  wire \o_ColorCode[3]_i_15_n_0 ;
  wire \o_ColorCode[3]_i_17_n_0 ;
  wire \o_ColorCode[3]_i_18_n_0 ;
  wire \o_ColorCode[3]_i_19_n_0 ;
  wire \o_ColorCode[3]_i_20_n_0 ;
  wire \o_ColorCode[3]_i_21_n_0 ;
  wire \o_ColorCode[3]_i_22_n_0 ;
  wire \o_ColorCode[3]_i_25_n_0 ;
  wire \o_ColorCode[3]_i_28_n_0 ;
  wire \o_ColorCode[3]_i_29_n_0 ;
  wire \o_ColorCode[3]_i_2_n_0 ;
  wire \o_ColorCode[3]_i_30_n_0 ;
  wire \o_ColorCode[3]_i_31_n_0 ;
  wire \o_ColorCode[3]_i_32_n_0 ;
  wire \o_ColorCode[3]_i_33_n_0 ;
  wire \o_ColorCode[3]_i_34_n_0 ;
  wire \o_ColorCode[3]_i_35_n_0 ;
  wire \o_ColorCode[3]_i_4_n_0 ;
  wire \o_ColorCode[3]_i_6_n_0 ;
  wire \o_ColorCode[3]_i_8_n_0 ;
  wire \o_ColorCode[3]_i_9_n_0 ;
  wire \o_ColorCode_reg[0]_i_10_n_0 ;
  wire \o_ColorCode_reg[0]_i_11_n_0 ;
  wire \o_ColorCode_reg[0]_i_12_n_0 ;
  wire \o_ColorCode_reg[0]_i_4_n_0 ;
  wire \o_ColorCode_reg[0]_i_5_n_0 ;
  wire \o_ColorCode_reg[0]_i_9_n_0 ;
  wire \o_ColorCode_reg[1]_i_6_n_0 ;
  wire \o_ColorCode_reg[1]_i_9_n_0 ;
  wire \o_ColorCode_reg[2]_i_5_n_0 ;
  wire \o_ColorCode_reg[2]_i_6_n_0 ;
  wire \o_ColorCode_reg[2]_i_7_n_0 ;
  wire \o_ColorCode_reg[3]_i_14_n_0 ;
  wire \o_ColorCode_reg[3]_i_16_n_0 ;
  wire \o_ColorCode_reg[3]_i_23_n_0 ;
  wire \o_ColorCode_reg[3]_i_24_n_0 ;
  wire \o_ColorCode_reg[3]_i_26_n_0 ;
  wire \o_ColorCode_reg[3]_i_27_n_0 ;
  wire [0:0]o_dataPixel;
  wire [7:0]p_0_in;
  wire [1:0]rel_rot;
  wire [3:0]rel_t_id;
  wire [7:0]s_index;
  wire \s_index[3]_i_2_n_0 ;
  wire \s_index[6]_i_10_n_0 ;
  wire \s_index[6]_i_2_n_0 ;
  wire \s_index[6]_i_4_n_0 ;
  wire \s_index[6]_i_5_n_0 ;
  wire \s_index[6]_i_6_n_0 ;
  wire \s_index[6]_i_7_n_0 ;
  wire \s_index[6]_i_8_n_0 ;
  wire \s_index[6]_i_9_n_0 ;
  wire \s_index[7]_i_10_n_0 ;
  wire \s_index[7]_i_11_n_0 ;
  wire \s_index[7]_i_12_n_0 ;
  wire \s_index[7]_i_2_n_0 ;
  wire \s_index[7]_i_4_n_0 ;
  wire \s_index[7]_i_5_n_0 ;
  wire \s_index[7]_i_6_n_0 ;
  wire \s_index[7]_i_7_n_0 ;
  wire \s_index[7]_i_8_n_0 ;
  wire \s_index[7]_i_9_n_0 ;
  wire [3:0]\s_tile_textures[0][0]_0 ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_ColorCode[0]_i_1 
       (.I0(\o_ColorCode[2]_i_2_n_0 ),
        .I1(rel_t_id[3]),
        .I2(\o_ColorCode[0]_i_2_n_0 ),
        .I3(rel_t_id[2]),
        .I4(\o_ColorCode[0]_i_3_n_0 ),
        .O(\s_tile_textures[0][0]_0 [0]));
  LUT6 #(
    .INIT(64'hBFFDFFF5D7DFFFFF)) 
    \o_ColorCode[0]_i_13 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h555F555D04440000)) 
    \o_ColorCode[0]_i_14 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h071F020A070A0020)) 
    \o_ColorCode[0]_i_15 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[2]),
        .I3(s_index[1]),
        .I4(s_index[5]),
        .I5(s_index[4]),
        .O(\o_ColorCode[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0DFEFDF)) 
    \o_ColorCode[0]_i_16 
       (.I0(s_index[4]),
        .I1(s_index[5]),
        .I2(s_index[6]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h5B9654C25F7F5FFF)) 
    \o_ColorCode[0]_i_17 
       (.I0(s_index[6]),
        .I1(s_index[4]),
        .I2(s_index[5]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001140000)) 
    \o_ColorCode[0]_i_18 
       (.I0(s_index[2]),
        .I1(s_index[0]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[1]),
        .I5(s_index[6]),
        .O(\o_ColorCode[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h11172E2800000000)) 
    \o_ColorCode[0]_i_19 
       (.I0(s_index[1]),
        .I1(s_index[5]),
        .I2(s_index[4]),
        .I3(s_index[0]),
        .I4(s_index[2]),
        .I5(s_index[6]),
        .O(\o_ColorCode[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAFAFCFC0)) 
    \o_ColorCode[0]_i_2 
       (.I0(\o_ColorCode[3]_i_12_n_0 ),
        .I1(\o_ColorCode[3]_i_13_n_0 ),
        .I2(rel_t_id[1]),
        .I3(\o_ColorCode_reg[0]_i_4_n_0 ),
        .I4(rel_t_id[0]),
        .O(\o_ColorCode[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8A48000)) 
    \o_ColorCode[0]_i_20 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_ColorCode[0]_i_3 
       (.I0(\o_ColorCode_reg[0]_i_5_n_0 ),
        .I1(\o_ColorCode[0]_i_6_n_0 ),
        .I2(rel_t_id[1]),
        .I3(\o_ColorCode[0]_i_7_n_0 ),
        .I4(rel_t_id[0]),
        .I5(\o_ColorCode[0]_i_8_n_0 ),
        .O(\o_ColorCode[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \o_ColorCode[0]_i_6 
       (.I0(s_index[3]),
        .I1(s_index[2]),
        .I2(s_index[6]),
        .O(\o_ColorCode[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \o_ColorCode[0]_i_7 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .O(\o_ColorCode[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \o_ColorCode[0]_i_8 
       (.I0(s_index[3]),
        .I1(s_index[7]),
        .O(\o_ColorCode[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    \o_ColorCode[1]_i_1 
       (.I0(\o_ColorCode[1]_i_2_n_0 ),
        .I1(rel_t_id[3]),
        .I2(\o_ColorCode[1]_i_3_n_0 ),
        .I3(rel_t_id[1]),
        .I4(rel_t_id[2]),
        .I5(\o_ColorCode[1]_i_5_n_0 ),
        .O(\s_tile_textures[0][0]_0 [1]));
  LUT6 #(
    .INIT(64'hF2F2AAEAF2F5DF55)) 
    \o_ColorCode[1]_i_10 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[2]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[5]),
        .O(\o_ColorCode[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001F0F1F)) 
    \o_ColorCode[1]_i_11 
       (.I0(s_index[4]),
        .I1(s_index[5]),
        .I2(s_index[6]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \o_ColorCode[1]_i_12 
       (.I0(\s_index[7]_i_8_n_0 ),
        .I1(\s_index[6]_i_8_n_0 ),
        .I2(\s_index[6]_i_7_n_0 ),
        .I3(\o_ColorCode[1]_i_21_n_0 ),
        .I4(\s_index[6]_i_5_n_0 ),
        .O(\o_ColorCode[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \o_ColorCode[1]_i_13 
       (.I0(\s_index[7]_i_12_n_0 ),
        .I1(\s_index[6]_i_5_n_0 ),
        .I2(\o_ColorCode[1]_i_21_n_0 ),
        .I3(\s_index[6]_i_7_n_0 ),
        .I4(\s_index[6]_i_8_n_0 ),
        .I5(\s_index[7]_i_8_n_0 ),
        .O(\o_ColorCode[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h3088)) 
    \o_ColorCode[1]_i_14 
       (.I0(\o_ColorCode[1]_i_22_n_0 ),
        .I1(s_index[3]),
        .I2(\o_ColorCode[1]_i_23_n_0 ),
        .I3(s_index[7]),
        .O(\o_ColorCode[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_ColorCode[1]_i_15 
       (.I0(s_index[2]),
        .I1(s_index[3]),
        .O(\o_ColorCode[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_ColorCode[1]_i_16 
       (.I0(s_index[3]),
        .I1(s_index[7]),
        .O(\o_ColorCode[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0300300400000000)) 
    \o_ColorCode[1]_i_17 
       (.I0(s_index[0]),
        .I1(s_index[6]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066666226)) 
    \o_ColorCode[1]_i_18 
       (.I0(s_index[1]),
        .I1(s_index[2]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[0]),
        .I5(s_index[6]),
        .O(\o_ColorCode[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hDF804C8000000000)) 
    \o_ColorCode[1]_i_19 
       (.I0(s_index[0]),
        .I1(s_index[5]),
        .I2(s_index[1]),
        .I3(s_index[2]),
        .I4(s_index[4]),
        .I5(s_index[6]),
        .O(\o_ColorCode[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \o_ColorCode[1]_i_2 
       (.I0(\o_ColorCode_reg[1]_i_6_n_0 ),
        .I1(s_index[3]),
        .I2(\o_ColorCode[1]_i_7_n_0 ),
        .I3(s_index[7]),
        .I4(\o_ColorCode[1]_i_8_n_0 ),
        .I5(rel_t_id[0]),
        .O(\o_ColorCode[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFE76FAFFFF3FB7)) 
    \o_ColorCode[1]_i_20 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .I2(s_index[0]),
        .I3(s_index[4]),
        .I4(s_index[5]),
        .I5(s_index[1]),
        .O(\o_ColorCode[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0110044000000000)) 
    \o_ColorCode[1]_i_21 
       (.I0(i_x[8]),
        .I1(i_x[6]),
        .I2(i_x[4]),
        .I3(\s_index[6]_i_10_n_0 ),
        .I4(i_x[5]),
        .I5(i_x[7]),
        .O(\o_ColorCode[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCD9D9504D5555755)) 
    \o_ColorCode[1]_i_22 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .I2(s_index[4]),
        .I3(s_index[0]),
        .I4(s_index[1]),
        .I5(s_index[5]),
        .O(\o_ColorCode[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h1501050000000000)) 
    \o_ColorCode[1]_i_23 
       (.I0(s_index[2]),
        .I1(s_index[0]),
        .I2(s_index[1]),
        .I3(s_index[5]),
        .I4(s_index[4]),
        .I5(s_index[6]),
        .O(\o_ColorCode[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \o_ColorCode[1]_i_3 
       (.I0(\o_ColorCode_reg[1]_i_9_n_0 ),
        .I1(s_index[3]),
        .I2(\o_ColorCode[1]_i_10_n_0 ),
        .I3(s_index[7]),
        .I4(\o_ColorCode[1]_i_11_n_0 ),
        .I5(rel_t_id[0]),
        .O(\o_ColorCode[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \o_ColorCode[1]_i_4 
       (.I0(\s_index[7]_i_5_n_0 ),
        .I1(\s_index[7]_i_6_n_0 ),
        .I2(\o_ColorCode[1]_i_12_n_0 ),
        .I3(\s_index[7]_i_9_n_0 ),
        .I4(\o_ColorCode[1]_i_13_n_0 ),
        .I5(\s_index[7]_i_10_n_0 ),
        .O(rel_t_id[1]));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \o_ColorCode[1]_i_5 
       (.I0(\o_ColorCode[1]_i_14_n_0 ),
        .I1(\o_ColorCode[1]_i_15_n_0 ),
        .I2(rel_t_id[1]),
        .I3(\o_ColorCode[2]_i_9_n_0 ),
        .I4(rel_t_id[0]),
        .I5(\o_ColorCode[1]_i_16_n_0 ),
        .O(\o_ColorCode[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030080300)) 
    \o_ColorCode[1]_i_7 
       (.I0(s_index[0]),
        .I1(s_index[6]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555A22A)) 
    \o_ColorCode[1]_i_8 
       (.I0(s_index[1]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[2]),
        .I5(s_index[6]),
        .O(\o_ColorCode[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \o_ColorCode[2]_i_1 
       (.I0(\o_ColorCode[2]_i_2_n_0 ),
        .I1(rel_t_id[3]),
        .I2(\o_ColorCode[2]_i_3_n_0 ),
        .I3(rel_t_id[2]),
        .I4(\o_ColorCode[2]_i_4_n_0 ),
        .O(\s_tile_textures[0][0]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFF7FFEEAEEE8)) 
    \o_ColorCode[2]_i_10 
       (.I0(s_index[6]),
        .I1(s_index[1]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDDF)) 
    \o_ColorCode[2]_i_11 
       (.I0(s_index[2]),
        .I1(s_index[1]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[0]),
        .I5(s_index[6]),
        .O(\o_ColorCode[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA8FEEAFEFFDFFFFF)) 
    \o_ColorCode[2]_i_12 
       (.I0(s_index[6]),
        .I1(s_index[4]),
        .I2(s_index[5]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBBFFFFF)) 
    \o_ColorCode[2]_i_13 
       (.I0(s_index[2]),
        .I1(s_index[1]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[0]),
        .I5(s_index[6]),
        .O(\o_ColorCode[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2000800000000000)) 
    \o_ColorCode[2]_i_14 
       (.I0(s_index[2]),
        .I1(s_index[0]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[1]),
        .I5(s_index[6]),
        .O(\o_ColorCode[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000282A)) 
    \o_ColorCode[2]_i_15 
       (.I0(s_index[2]),
        .I1(s_index[0]),
        .I2(s_index[1]),
        .I3(s_index[4]),
        .I4(s_index[5]),
        .I5(s_index[6]),
        .O(\o_ColorCode[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000565F7E)) 
    \o_ColorCode[2]_i_16 
       (.I0(s_index[6]),
        .I1(s_index[4]),
        .I2(s_index[5]),
        .I3(s_index[0]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F1F3F00)) 
    \o_ColorCode[2]_i_17 
       (.I0(s_index[4]),
        .I1(s_index[5]),
        .I2(s_index[6]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hC480CC8000000000)) 
    \o_ColorCode[2]_i_18 
       (.I0(s_index[1]),
        .I1(s_index[5]),
        .I2(s_index[4]),
        .I3(s_index[2]),
        .I4(s_index[0]),
        .I5(s_index[6]),
        .O(\o_ColorCode[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \o_ColorCode[2]_i_2 
       (.I0(rel_t_id[1]),
        .I1(\o_ColorCode_reg[2]_i_5_n_0 ),
        .I2(s_index[3]),
        .I3(\o_ColorCode_reg[2]_i_6_n_0 ),
        .I4(rel_t_id[0]),
        .I5(rel_t_id[2]),
        .O(\o_ColorCode[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAFC0CFC0C0)) 
    \o_ColorCode[2]_i_3 
       (.I0(\o_ColorCode[3]_i_12_n_0 ),
        .I1(\o_ColorCode[3]_i_13_n_0 ),
        .I2(rel_t_id[1]),
        .I3(s_index[3]),
        .I4(\o_ColorCode_reg[2]_i_7_n_0 ),
        .I5(rel_t_id[0]),
        .O(\o_ColorCode[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00FC00FC00)) 
    \o_ColorCode[2]_i_4 
       (.I0(\o_ColorCode[2]_i_8_n_0 ),
        .I1(s_index[3]),
        .I2(s_index[2]),
        .I3(rel_t_id[1]),
        .I4(\o_ColorCode[2]_i_9_n_0 ),
        .I5(rel_t_id[0]),
        .O(\o_ColorCode[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB833B800)) 
    \o_ColorCode[2]_i_8 
       (.I0(\o_ColorCode[2]_i_16_n_0 ),
        .I1(s_index[3]),
        .I2(\o_ColorCode[2]_i_17_n_0 ),
        .I3(s_index[7]),
        .I4(\o_ColorCode[2]_i_18_n_0 ),
        .O(\o_ColorCode[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \o_ColorCode[2]_i_9 
       (.I0(s_index[7]),
        .I1(s_index[2]),
        .I2(s_index[6]),
        .I3(s_index[3]),
        .O(\o_ColorCode[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \o_ColorCode[3]_i_1 
       (.I0(\o_ColorCode[3]_i_2_n_0 ),
        .I1(rel_t_id[3]),
        .I2(\o_ColorCode[3]_i_4_n_0 ),
        .I3(rel_t_id[2]),
        .I4(\o_ColorCode[3]_i_6_n_0 ),
        .O(\s_tile_textures[0][0]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \o_ColorCode[3]_i_10 
       (.I0(\s_index[6]_i_6_n_0 ),
        .I1(\s_index[6]_i_7_n_0 ),
        .I2(\s_index[6]_i_5_n_0 ),
        .I3(\s_index[6]_i_8_n_0 ),
        .I4(\s_index[7]_i_12_n_0 ),
        .I5(\s_index[7]_i_8_n_0 ),
        .O(\o_ColorCode[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_ColorCode[3]_i_11 
       (.I0(\s_index[7]_i_11_n_0 ),
        .I1(i_y[6]),
        .O(\o_ColorCode[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    \o_ColorCode[3]_i_12 
       (.I0(\o_ColorCode[3]_i_20_n_0 ),
        .I1(s_index[3]),
        .I2(\o_ColorCode[3]_i_21_n_0 ),
        .I3(s_index[7]),
        .O(\o_ColorCode[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_ColorCode[3]_i_13 
       (.I0(s_index[7]),
        .I1(\o_ColorCode[3]_i_22_n_0 ),
        .I2(s_index[3]),
        .O(\o_ColorCode[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \o_ColorCode[3]_i_15 
       (.I0(\s_index[7]_i_8_n_0 ),
        .I1(\s_index[7]_i_12_n_0 ),
        .I2(\s_index[6]_i_5_n_0 ),
        .I3(\o_ColorCode[3]_i_25_n_0 ),
        .I4(\s_index[6]_i_7_n_0 ),
        .I5(\s_index[6]_i_8_n_0 ),
        .O(\o_ColorCode[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \o_ColorCode[3]_i_17 
       (.I0(s_index[7]),
        .I1(s_index[6]),
        .I2(s_index[2]),
        .I3(s_index[3]),
        .O(\o_ColorCode[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \o_ColorCode[3]_i_18 
       (.I0(\s_index[7]_i_8_n_0 ),
        .I1(\s_index[6]_i_8_n_0 ),
        .I2(\s_index[6]_i_7_n_0 ),
        .I3(\o_ColorCode[3]_i_25_n_0 ),
        .I4(\s_index[6]_i_5_n_0 ),
        .O(\o_ColorCode[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \o_ColorCode[3]_i_19 
       (.I0(\o_ColorCode[3]_i_25_n_0 ),
        .I1(\s_index[6]_i_7_n_0 ),
        .I2(\s_index[6]_i_5_n_0 ),
        .I3(\s_index[6]_i_8_n_0 ),
        .I4(\s_index[7]_i_12_n_0 ),
        .I5(\s_index[7]_i_8_n_0 ),
        .O(\o_ColorCode[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055554540)) 
    \o_ColorCode[3]_i_2 
       (.I0(rel_t_id[0]),
        .I1(\o_ColorCode[3]_i_8_n_0 ),
        .I2(s_index[3]),
        .I3(\o_ColorCode[3]_i_9_n_0 ),
        .I4(s_index[7]),
        .I5(rel_t_id[1]),
        .O(\o_ColorCode[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h15575FFFFFFFFFFF)) 
    \o_ColorCode[3]_i_20 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5FFF455D)) 
    \o_ColorCode[3]_i_21 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEAEEECE888)) 
    \o_ColorCode[3]_i_22 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .I2(s_index[0]),
        .I3(s_index[4]),
        .I4(s_index[5]),
        .I5(s_index[1]),
        .O(\o_ColorCode[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0110000000000000)) 
    \o_ColorCode[3]_i_25 
       (.I0(i_x[8]),
        .I1(i_x[6]),
        .I2(i_x[4]),
        .I3(\s_index[6]_i_10_n_0 ),
        .I4(i_x[5]),
        .I5(i_x[7]),
        .O(\o_ColorCode[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h488A000A22800000)) 
    \o_ColorCode[3]_i_28 
       (.I0(s_index[6]),
        .I1(s_index[0]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00A0008240000444)) 
    \o_ColorCode[3]_i_29 
       (.I0(s_index[6]),
        .I1(s_index[1]),
        .I2(s_index[4]),
        .I3(s_index[5]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000101000)) 
    \o_ColorCode[3]_i_3 
       (.I0(i_y[10]),
        .I1(i_y[8]),
        .I2(\o_ColorCode[3]_i_10_n_0 ),
        .I3(\o_ColorCode[3]_i_11_n_0 ),
        .I4(i_y[7]),
        .I5(i_y[9]),
        .O(rel_t_id[3]));
  LUT6 #(
    .INIT(64'h20204115312208A2)) 
    \o_ColorCode[3]_i_30 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .I2(s_index[0]),
        .I3(s_index[4]),
        .I4(s_index[1]),
        .I5(s_index[5]),
        .O(\o_ColorCode[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F104040)) 
    \o_ColorCode[3]_i_31 
       (.I0(s_index[5]),
        .I1(s_index[4]),
        .I2(s_index[6]),
        .I3(s_index[0]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h1861233508800800)) 
    \o_ColorCode[3]_i_32 
       (.I0(s_index[6]),
        .I1(s_index[5]),
        .I2(s_index[4]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h808080808040201F)) 
    \o_ColorCode[3]_i_33 
       (.I0(s_index[4]),
        .I1(s_index[5]),
        .I2(s_index[6]),
        .I3(s_index[0]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3060088268F32022)) 
    \o_ColorCode[3]_i_34 
       (.I0(s_index[6]),
        .I1(s_index[2]),
        .I2(s_index[4]),
        .I3(s_index[0]),
        .I4(s_index[5]),
        .I5(s_index[1]),
        .O(\o_ColorCode[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0000000056210881)) 
    \o_ColorCode[3]_i_35 
       (.I0(s_index[6]),
        .I1(s_index[5]),
        .I2(s_index[4]),
        .I3(s_index[0]),
        .I4(s_index[1]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hAFAFCFC0)) 
    \o_ColorCode[3]_i_4 
       (.I0(\o_ColorCode[3]_i_12_n_0 ),
        .I1(\o_ColorCode[3]_i_13_n_0 ),
        .I2(rel_t_id[1]),
        .I3(\o_ColorCode_reg[3]_i_14_n_0 ),
        .I4(rel_t_id[0]),
        .O(\o_ColorCode[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010040000)) 
    \o_ColorCode[3]_i_5 
       (.I0(i_y[10]),
        .I1(i_y[8]),
        .I2(\o_ColorCode[3]_i_11_n_0 ),
        .I3(i_y[7]),
        .I4(\o_ColorCode[3]_i_15_n_0 ),
        .I5(i_y[9]),
        .O(rel_t_id[2]));
  LUT6 #(
    .INIT(64'hAAFFAA0003000300)) 
    \o_ColorCode[3]_i_6 
       (.I0(\o_ColorCode_reg[3]_i_16_n_0 ),
        .I1(s_index[2]),
        .I2(s_index[3]),
        .I3(rel_t_id[1]),
        .I4(\o_ColorCode[3]_i_17_n_0 ),
        .I5(rel_t_id[0]),
        .O(\o_ColorCode[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \o_ColorCode[3]_i_7 
       (.I0(\s_index[7]_i_5_n_0 ),
        .I1(\s_index[7]_i_6_n_0 ),
        .I2(\o_ColorCode[3]_i_18_n_0 ),
        .I3(\s_index[7]_i_9_n_0 ),
        .I4(\o_ColorCode[3]_i_19_n_0 ),
        .I5(\s_index[7]_i_10_n_0 ),
        .O(rel_t_id[0]));
  LUT6 #(
    .INIT(64'hA8FEEAFEFFFFFFFF)) 
    \o_ColorCode[3]_i_8 
       (.I0(s_index[6]),
        .I1(s_index[4]),
        .I2(s_index[5]),
        .I3(s_index[1]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEAEEE8)) 
    \o_ColorCode[3]_i_9 
       (.I0(s_index[6]),
        .I1(s_index[1]),
        .I2(s_index[5]),
        .I3(s_index[4]),
        .I4(s_index[0]),
        .I5(s_index[2]),
        .O(\o_ColorCode[3]_i_9_n_0 ));
  FDRE \o_ColorCode_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  MUXF7 \o_ColorCode_reg[0]_i_10 
       (.I0(\o_ColorCode[0]_i_15_n_0 ),
        .I1(\o_ColorCode[0]_i_16_n_0 ),
        .O(\o_ColorCode_reg[0]_i_10_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[0]_i_11 
       (.I0(\o_ColorCode[0]_i_17_n_0 ),
        .I1(\o_ColorCode[0]_i_18_n_0 ),
        .O(\o_ColorCode_reg[0]_i_11_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[0]_i_12 
       (.I0(\o_ColorCode[0]_i_19_n_0 ),
        .I1(\o_ColorCode[0]_i_20_n_0 ),
        .O(\o_ColorCode_reg[0]_i_12_n_0 ),
        .S(s_index[7]));
  MUXF8 \o_ColorCode_reg[0]_i_4 
       (.I0(\o_ColorCode_reg[0]_i_9_n_0 ),
        .I1(\o_ColorCode_reg[0]_i_10_n_0 ),
        .O(\o_ColorCode_reg[0]_i_4_n_0 ),
        .S(s_index[3]));
  MUXF8 \o_ColorCode_reg[0]_i_5 
       (.I0(\o_ColorCode_reg[0]_i_11_n_0 ),
        .I1(\o_ColorCode_reg[0]_i_12_n_0 ),
        .O(\o_ColorCode_reg[0]_i_5_n_0 ),
        .S(s_index[3]));
  MUXF7 \o_ColorCode_reg[0]_i_9 
       (.I0(\o_ColorCode[0]_i_13_n_0 ),
        .I1(\o_ColorCode[0]_i_14_n_0 ),
        .O(\o_ColorCode_reg[0]_i_9_n_0 ),
        .S(s_index[7]));
  FDRE \o_ColorCode_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  MUXF7 \o_ColorCode_reg[1]_i_6 
       (.I0(\o_ColorCode[1]_i_17_n_0 ),
        .I1(\o_ColorCode[1]_i_18_n_0 ),
        .O(\o_ColorCode_reg[1]_i_6_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[1]_i_9 
       (.I0(\o_ColorCode[1]_i_19_n_0 ),
        .I1(\o_ColorCode[1]_i_20_n_0 ),
        .O(\o_ColorCode_reg[1]_i_9_n_0 ),
        .S(s_index[7]));
  FDRE \o_ColorCode_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  MUXF7 \o_ColorCode_reg[2]_i_5 
       (.I0(\o_ColorCode[2]_i_10_n_0 ),
        .I1(\o_ColorCode[2]_i_11_n_0 ),
        .O(\o_ColorCode_reg[2]_i_5_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[2]_i_6 
       (.I0(\o_ColorCode[2]_i_12_n_0 ),
        .I1(\o_ColorCode[2]_i_13_n_0 ),
        .O(\o_ColorCode_reg[2]_i_6_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[2]_i_7 
       (.I0(\o_ColorCode[2]_i_14_n_0 ),
        .I1(\o_ColorCode[2]_i_15_n_0 ),
        .O(\o_ColorCode_reg[2]_i_7_n_0 ),
        .S(s_index[7]));
  FDRE \o_ColorCode_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_tile_textures[0][0]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  MUXF8 \o_ColorCode_reg[3]_i_14 
       (.I0(\o_ColorCode_reg[3]_i_23_n_0 ),
        .I1(\o_ColorCode_reg[3]_i_24_n_0 ),
        .O(\o_ColorCode_reg[3]_i_14_n_0 ),
        .S(s_index[3]));
  MUXF8 \o_ColorCode_reg[3]_i_16 
       (.I0(\o_ColorCode_reg[3]_i_26_n_0 ),
        .I1(\o_ColorCode_reg[3]_i_27_n_0 ),
        .O(\o_ColorCode_reg[3]_i_16_n_0 ),
        .S(s_index[3]));
  MUXF7 \o_ColorCode_reg[3]_i_23 
       (.I0(\o_ColorCode[3]_i_28_n_0 ),
        .I1(\o_ColorCode[3]_i_29_n_0 ),
        .O(\o_ColorCode_reg[3]_i_23_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[3]_i_24 
       (.I0(\o_ColorCode[3]_i_30_n_0 ),
        .I1(\o_ColorCode[3]_i_31_n_0 ),
        .O(\o_ColorCode_reg[3]_i_24_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[3]_i_26 
       (.I0(\o_ColorCode[3]_i_32_n_0 ),
        .I1(\o_ColorCode[3]_i_33_n_0 ),
        .O(\o_ColorCode_reg[3]_i_26_n_0 ),
        .S(s_index[7]));
  MUXF7 \o_ColorCode_reg[3]_i_27 
       (.I0(\o_ColorCode[3]_i_34_n_0 ),
        .I1(\o_ColorCode[3]_i_35_n_0 ),
        .O(\o_ColorCode_reg[3]_i_27_n_0 ),
        .S(s_index[7]));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \o_dataPixel[22]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(o_dataPixel));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \s_index[0]_i_1 
       (.I0(i_y[0]),
        .I1(rel_rot[0]),
        .I2(i_x[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h9FAF90A09FA090AF)) 
    \s_index[1]_i_1 
       (.I0(i_y[1]),
        .I1(i_y[0]),
        .I2(rel_rot[0]),
        .I3(rel_rot[1]),
        .I4(i_x[1]),
        .I5(i_x[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h99C6FFFF99C60000)) 
    \s_index[2]_i_1 
       (.I0(rel_rot[1]),
        .I1(i_y[2]),
        .I2(i_y[0]),
        .I3(i_y[1]),
        .I4(rel_rot[0]),
        .I5(\s_index[6]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_index[3]_i_1 
       (.I0(\s_index[3]_i_2_n_0 ),
        .I1(rel_rot[0]),
        .I2(\s_index[7]_i_2_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAB95546)) 
    \s_index[3]_i_2 
       (.I0(rel_rot[1]),
        .I1(i_y[2]),
        .I2(i_y[0]),
        .I3(i_y[1]),
        .I4(i_y[3]),
        .O(\s_index[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \s_index[4]_i_1 
       (.I0(i_x[0]),
        .I1(rel_rot[0]),
        .I2(i_y[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAF9FA090AF90A09F)) 
    \s_index[5]_i_1 
       (.I0(i_x[1]),
        .I1(i_x[0]),
        .I2(rel_rot[0]),
        .I3(rel_rot[1]),
        .I4(i_y[1]),
        .I5(i_y[0]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h8BB88BB8BB88B88B)) 
    \s_index[6]_i_1 
       (.I0(\s_index[6]_i_2_n_0 ),
        .I1(rel_rot[0]),
        .I2(rel_rot[1]),
        .I3(i_y[2]),
        .I4(i_y[0]),
        .I5(i_y[1]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_index[6]_i_10 
       (.I0(i_x[2]),
        .I1(i_x[0]),
        .I2(i_x[1]),
        .I3(i_x[3]),
        .O(\s_index[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h66C9)) 
    \s_index[6]_i_2 
       (.I0(rel_rot[1]),
        .I1(i_x[2]),
        .I2(i_x[0]),
        .I3(i_x[1]),
        .O(\s_index[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \s_index[6]_i_3 
       (.I0(\s_index[7]_i_5_n_0 ),
        .I1(\s_index[7]_i_6_n_0 ),
        .I2(\s_index[7]_i_9_n_0 ),
        .I3(\s_index[7]_i_8_n_0 ),
        .I4(\s_index[6]_i_4_n_0 ),
        .I5(\s_index[7]_i_10_n_0 ),
        .O(rel_rot[1]));
  LUT4 #(
    .INIT(16'h0080)) 
    \s_index[6]_i_4 
       (.I0(\s_index[6]_i_5_n_0 ),
        .I1(\s_index[6]_i_6_n_0 ),
        .I2(\s_index[6]_i_7_n_0 ),
        .I3(\s_index[6]_i_8_n_0 ),
        .O(\s_index[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \s_index[6]_i_5 
       (.I0(i_x[8]),
        .I1(i_x[6]),
        .I2(\s_index[6]_i_9_n_0 ),
        .I3(i_x[7]),
        .I4(i_x[9]),
        .O(\s_index[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000044000000000)) 
    \s_index[6]_i_6 
       (.I0(i_x[8]),
        .I1(i_x[6]),
        .I2(i_x[4]),
        .I3(\s_index[6]_i_10_n_0 ),
        .I4(i_x[5]),
        .I5(i_x[7]),
        .O(\s_index[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \s_index[6]_i_7 
       (.I0(i_x[9]),
        .I1(i_x[7]),
        .I2(\s_index[6]_i_9_n_0 ),
        .I3(i_x[6]),
        .I4(i_x[8]),
        .I5(i_x[10]),
        .O(\s_index[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \s_index[6]_i_8 
       (.I0(i_y[3]),
        .I1(i_y[1]),
        .I2(i_y[0]),
        .I3(i_y[2]),
        .I4(i_y[4]),
        .O(\s_index[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_index[6]_i_9 
       (.I0(i_x[4]),
        .I1(i_x[2]),
        .I2(i_x[0]),
        .I3(i_x[1]),
        .I4(i_x[3]),
        .I5(i_x[5]),
        .O(\s_index[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_index[7]_i_1 
       (.I0(\s_index[7]_i_2_n_0 ),
        .I1(rel_rot[0]),
        .I2(\s_index[7]_i_4_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \s_index[7]_i_10 
       (.I0(i_y[8]),
        .I1(i_y[6]),
        .I2(\s_index[7]_i_11_n_0 ),
        .I3(i_y[7]),
        .I4(i_y[9]),
        .O(\s_index[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_index[7]_i_11 
       (.I0(i_y[4]),
        .I1(i_y[2]),
        .I2(i_y[0]),
        .I3(i_y[1]),
        .I4(i_y[3]),
        .I5(i_y[5]),
        .O(\s_index[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \s_index[7]_i_12 
       (.I0(i_y[4]),
        .I1(i_y[2]),
        .I2(i_y[0]),
        .I3(i_y[1]),
        .I4(i_y[3]),
        .I5(i_y[5]),
        .O(\s_index[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h66666C69)) 
    \s_index[7]_i_2 
       (.I0(rel_rot[1]),
        .I1(i_x[3]),
        .I2(i_x[1]),
        .I3(i_x[0]),
        .I4(i_x[2]),
        .O(\s_index[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080800000000000)) 
    \s_index[7]_i_3 
       (.I0(\s_index[7]_i_5_n_0 ),
        .I1(\s_index[7]_i_6_n_0 ),
        .I2(\s_index[7]_i_7_n_0 ),
        .I3(\s_index[7]_i_8_n_0 ),
        .I4(\s_index[7]_i_9_n_0 ),
        .I5(\s_index[7]_i_10_n_0 ),
        .O(rel_rot[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h66666C69)) 
    \s_index[7]_i_4 
       (.I0(rel_rot[1]),
        .I1(i_y[3]),
        .I2(i_y[1]),
        .I3(i_y[0]),
        .I4(i_y[2]),
        .O(\s_index[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \s_index[7]_i_5 
       (.I0(i_y[9]),
        .I1(i_y[7]),
        .I2(\s_index[7]_i_11_n_0 ),
        .I3(i_y[6]),
        .I4(i_y[8]),
        .I5(i_y[10]),
        .O(\s_index[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \s_index[7]_i_6 
       (.I0(i_y[7]),
        .I1(\s_index[7]_i_11_n_0 ),
        .I2(i_y[6]),
        .I3(i_y[8]),
        .O(\s_index[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_index[7]_i_7 
       (.I0(\s_index[6]_i_4_n_0 ),
        .I1(\s_index[7]_i_12_n_0 ),
        .O(\s_index[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_index[7]_i_8 
       (.I0(\s_index[7]_i_11_n_0 ),
        .I1(i_y[6]),
        .O(\s_index[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \s_index[7]_i_9 
       (.I0(i_y[6]),
        .I1(\s_index[7]_i_11_n_0 ),
        .I2(i_y[7]),
        .O(\s_index[7]_i_9_n_0 ));
  FDRE \s_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(s_index[0]),
        .R(1'b0));
  FDRE \s_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(s_index[1]),
        .R(1'b0));
  FDRE \s_index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(s_index[2]),
        .R(1'b0));
  FDRE \s_index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(s_index[3]),
        .R(1'b0));
  FDRE \s_index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(s_index[4]),
        .R(1'b0));
  FDRE \s_index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(s_index[5]),
        .R(1'b0));
  FDRE \s_index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(s_index[6]),
        .R(1'b0));
  FDRE \s_index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
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
