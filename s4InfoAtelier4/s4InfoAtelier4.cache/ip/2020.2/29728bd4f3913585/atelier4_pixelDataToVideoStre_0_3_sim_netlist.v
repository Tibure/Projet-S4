// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 23 15:36:57 2023
// Host        : DESKTOP-STNSRIB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ atelier4_pixelDataToVideoStre_0_3_sim_netlist.v
// Design      : atelier4_pixelDataToVideoStre_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "atelier4_pixelDataToVideoStre_0_3,pixelDataToVideoStream_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "pixelDataToVideoStream_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (o_stall,
    o_blank,
    o_pixel_x,
    o_pixel_y,
    o_frame_cnt,
    i_dataPixel,
    i_dataValid,
    i_aresetn,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tready,
    m00_axis_tuser);
  output o_stall;
  output o_blank;
  output [11:0]o_pixel_x;
  output [11:0]o_pixel_y;
  output [31:0]o_frame_cnt;
  input [23:0]i_dataPixel;
  input i_dataValid;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_aresetn;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI:M00_AXIS, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 74250000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [23:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TUSER" *) output m00_axis_tuser;

  wire \<const0> ;
  wire i_aresetn;
  wire [23:0]i_dataPixel;
  wire i_dataValid;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire o_blank;
  wire [31:0]o_frame_cnt;
  wire [11:0]o_pixel_x;
  wire [11:0]o_pixel_y;
  wire o_stall;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign m00_axis_tdata[23:0] = i_dataPixel;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixelDataToVideoStream_v1_0 U0
       (.Q(o_pixel_x),
        .i_aresetn(i_aresetn),
        .i_dataValid(i_dataValid),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tuser(m00_axis_tuser),
        .m00_axis_tvalid(m00_axis_tvalid),
        .o_blank(o_blank),
        .o_frame_cnt(o_frame_cnt),
        .o_pixel_y(o_pixel_y),
        .o_stall(o_stall),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixelDataToVideoStream_v1_0
   (o_blank,
    Q,
    m00_axis_tlast,
    m00_axis_tuser,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    o_pixel_y,
    s00_axi_rvalid,
    o_frame_cnt,
    o_stall,
    m00_axis_tvalid,
    s00_axi_bvalid,
    m00_axis_tready,
    i_dataValid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    i_aresetn);
  output o_blank;
  output [11:0]Q;
  output m00_axis_tlast;
  output m00_axis_tuser;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [11:0]o_pixel_y;
  output s00_axi_rvalid;
  output [31:0]o_frame_cnt;
  output o_stall;
  output m00_axis_tvalid;
  output s00_axi_bvalid;
  input m00_axis_tready;
  input i_dataValid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input i_aresetn;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[0]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg[3]_i_3_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire [11:0]Q;
  wire [11:0]columnCnt;
  wire \columnCnt0_inferred__0/i__carry__0_n_0 ;
  wire \columnCnt0_inferred__0/i__carry__0_n_1 ;
  wire \columnCnt0_inferred__0/i__carry__0_n_2 ;
  wire \columnCnt0_inferred__0/i__carry__0_n_3 ;
  wire \columnCnt0_inferred__0/i__carry__1_n_2 ;
  wire \columnCnt0_inferred__0/i__carry__1_n_3 ;
  wire \columnCnt0_inferred__0/i__carry_n_0 ;
  wire \columnCnt0_inferred__0/i__carry_n_1 ;
  wire \columnCnt0_inferred__0/i__carry_n_2 ;
  wire \columnCnt0_inferred__0/i__carry_n_3 ;
  wire \columnCnt[11]_i_1_n_0 ;
  wire \columnCnt[11]_i_3_n_0 ;
  wire \columnCnt[11]_i_4_n_0 ;
  wire d_newFrame;
  wire [11:1]data0;
  wire \frameCnt[31]_i_1_n_0 ;
  wire \frameCnt[3]_i_2_n_0 ;
  wire \frameCnt_reg[11]_i_1_n_0 ;
  wire \frameCnt_reg[11]_i_1_n_1 ;
  wire \frameCnt_reg[11]_i_1_n_2 ;
  wire \frameCnt_reg[11]_i_1_n_3 ;
  wire \frameCnt_reg[11]_i_1_n_4 ;
  wire \frameCnt_reg[11]_i_1_n_5 ;
  wire \frameCnt_reg[11]_i_1_n_6 ;
  wire \frameCnt_reg[11]_i_1_n_7 ;
  wire \frameCnt_reg[15]_i_1_n_0 ;
  wire \frameCnt_reg[15]_i_1_n_1 ;
  wire \frameCnt_reg[15]_i_1_n_2 ;
  wire \frameCnt_reg[15]_i_1_n_3 ;
  wire \frameCnt_reg[15]_i_1_n_4 ;
  wire \frameCnt_reg[15]_i_1_n_5 ;
  wire \frameCnt_reg[15]_i_1_n_6 ;
  wire \frameCnt_reg[15]_i_1_n_7 ;
  wire \frameCnt_reg[19]_i_1_n_0 ;
  wire \frameCnt_reg[19]_i_1_n_1 ;
  wire \frameCnt_reg[19]_i_1_n_2 ;
  wire \frameCnt_reg[19]_i_1_n_3 ;
  wire \frameCnt_reg[19]_i_1_n_4 ;
  wire \frameCnt_reg[19]_i_1_n_5 ;
  wire \frameCnt_reg[19]_i_1_n_6 ;
  wire \frameCnt_reg[19]_i_1_n_7 ;
  wire \frameCnt_reg[23]_i_1_n_0 ;
  wire \frameCnt_reg[23]_i_1_n_1 ;
  wire \frameCnt_reg[23]_i_1_n_2 ;
  wire \frameCnt_reg[23]_i_1_n_3 ;
  wire \frameCnt_reg[23]_i_1_n_4 ;
  wire \frameCnt_reg[23]_i_1_n_5 ;
  wire \frameCnt_reg[23]_i_1_n_6 ;
  wire \frameCnt_reg[23]_i_1_n_7 ;
  wire \frameCnt_reg[27]_i_1_n_0 ;
  wire \frameCnt_reg[27]_i_1_n_1 ;
  wire \frameCnt_reg[27]_i_1_n_2 ;
  wire \frameCnt_reg[27]_i_1_n_3 ;
  wire \frameCnt_reg[27]_i_1_n_4 ;
  wire \frameCnt_reg[27]_i_1_n_5 ;
  wire \frameCnt_reg[27]_i_1_n_6 ;
  wire \frameCnt_reg[27]_i_1_n_7 ;
  wire \frameCnt_reg[31]_i_2_n_1 ;
  wire \frameCnt_reg[31]_i_2_n_2 ;
  wire \frameCnt_reg[31]_i_2_n_3 ;
  wire \frameCnt_reg[31]_i_2_n_4 ;
  wire \frameCnt_reg[31]_i_2_n_5 ;
  wire \frameCnt_reg[31]_i_2_n_6 ;
  wire \frameCnt_reg[31]_i_2_n_7 ;
  wire \frameCnt_reg[3]_i_1_n_0 ;
  wire \frameCnt_reg[3]_i_1_n_1 ;
  wire \frameCnt_reg[3]_i_1_n_2 ;
  wire \frameCnt_reg[3]_i_1_n_3 ;
  wire \frameCnt_reg[3]_i_1_n_4 ;
  wire \frameCnt_reg[3]_i_1_n_5 ;
  wire \frameCnt_reg[3]_i_1_n_6 ;
  wire \frameCnt_reg[3]_i_1_n_7 ;
  wire \frameCnt_reg[7]_i_1_n_0 ;
  wire \frameCnt_reg[7]_i_1_n_1 ;
  wire \frameCnt_reg[7]_i_1_n_2 ;
  wire \frameCnt_reg[7]_i_1_n_3 ;
  wire \frameCnt_reg[7]_i_1_n_4 ;
  wire \frameCnt_reg[7]_i_1_n_5 ;
  wire \frameCnt_reg[7]_i_1_n_6 ;
  wire \frameCnt_reg[7]_i_1_n_7 ;
  wire framerateCnt4;
  wire framerateCnt4_carry__0_n_0;
  wire framerateCnt4_carry__0_n_1;
  wire framerateCnt4_carry__0_n_2;
  wire framerateCnt4_carry__0_n_3;
  wire framerateCnt4_carry__1_n_2;
  wire framerateCnt4_carry__1_n_3;
  wire framerateCnt4_carry_n_0;
  wire framerateCnt4_carry_n_1;
  wire framerateCnt4_carry_n_2;
  wire framerateCnt4_carry_n_3;
  wire i_aresetn;
  wire i_dataValid;
  wire [11:0]lineCnt;
  wire \lineCnt[11]_i_1_n_0 ;
  wire \lineCnt[11]_i_3_n_0 ;
  wire \lineCnt[11]_i_4_n_0 ;
  wire \lineCnt[11]_i_6_n_0 ;
  wire \lineCnt[11]_i_7_n_0 ;
  wire \lineCnt[11]_i_8_n_0 ;
  wire \lineCnt_reg[11]_i_5_n_2 ;
  wire \lineCnt_reg[11]_i_5_n_3 ;
  wire \lineCnt_reg[11]_i_5_n_5 ;
  wire \lineCnt_reg[11]_i_5_n_6 ;
  wire \lineCnt_reg[11]_i_5_n_7 ;
  wire \lineCnt_reg[4]_i_2_n_0 ;
  wire \lineCnt_reg[4]_i_2_n_1 ;
  wire \lineCnt_reg[4]_i_2_n_2 ;
  wire \lineCnt_reg[4]_i_2_n_3 ;
  wire \lineCnt_reg[4]_i_2_n_4 ;
  wire \lineCnt_reg[4]_i_2_n_5 ;
  wire \lineCnt_reg[4]_i_2_n_6 ;
  wire \lineCnt_reg[4]_i_2_n_7 ;
  wire \lineCnt_reg[8]_i_2_n_0 ;
  wire \lineCnt_reg[8]_i_2_n_1 ;
  wire \lineCnt_reg[8]_i_2_n_2 ;
  wire \lineCnt_reg[8]_i_2_n_3 ;
  wire \lineCnt_reg[8]_i_2_n_4 ;
  wire \lineCnt_reg[8]_i_2_n_5 ;
  wire \lineCnt_reg[8]_i_2_n_6 ;
  wire \lineCnt_reg[8]_i_2_n_7 ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tuser;
  wire m00_axis_tvalid;
  wire next_state;
  wire o_blank;
  wire [31:0]o_frame_cnt;
  wire [11:0]o_pixel_y;
  wire o_stall;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7;
  wire pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:2]\NLW_columnCnt0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_columnCnt0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:3]\NLW_frameCnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_framerateCnt4_carry_O_UNCONNECTED;
  wire [3:0]NLW_framerateCnt4_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_framerateCnt4_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_framerateCnt4_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_lineCnt_reg[11]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_lineCnt_reg[11]_i_5_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(i_aresetn),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sof:0010,eol:1000,streaming:0100,waiting:0001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .PRE(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(o_blank));
  (* FSM_ENCODED_STATES = "sof:0010,eol:1000,streaming:0100,waiting:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(m00_axis_tuser));
  (* FSM_ENCODED_STATES = "sof:0010,eol:1000,streaming:0100,waiting:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "sof:0010,eol:1000,streaming:0100,waiting:0001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(m00_axis_tlast));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.CLR(1'b0),
        .D(pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FSM_onehot_next_state_reg[0]_i_2 
       (.I0(\lineCnt[11]_i_8_n_0 ),
        .I1(\lineCnt[11]_i_7_n_0 ),
        .I2(\FSM_onehot_next_state_reg[0]_i_3_n_0 ),
        .I3(m00_axis_tready),
        .I4(i_dataValid),
        .O(\FSM_onehot_next_state_reg[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_next_state_reg[0]_i_3 
       (.I0(o_pixel_y[6]),
        .I1(o_pixel_y[2]),
        .I2(o_pixel_y[5]),
        .I3(o_pixel_y[9]),
        .O(\FSM_onehot_next_state_reg[0]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.CLR(1'b0),
        .D(pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[2]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFF44F4CCFCCCFC)) 
    \FSM_onehot_next_state_reg[2]_i_1 
       (.I0(\lineCnt[11]_i_6_n_0 ),
        .I1(m00_axis_tlast),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .I4(m00_axis_tuser),
        .I5(\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .O(\FSM_onehot_next_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state_reg[2]_i_2 
       (.I0(i_dataValid),
        .I1(m00_axis_tready),
        .O(\FSM_onehot_next_state_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_next_state_reg[3]_i_1_n_0 ),
        .G(next_state),
        .GE(1'b1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state_reg[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_next_state_reg[3]_i_3_n_0 ),
        .O(\FSM_onehot_next_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \FSM_onehot_next_state_reg[3]_i_2 
       (.I0(i_dataValid),
        .I1(m00_axis_tready),
        .I2(m00_axis_tlast),
        .I3(m00_axis_tuser),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(o_blank),
        .O(next_state));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \FSM_onehot_next_state_reg[3]_i_3 
       (.I0(\columnCnt[11]_i_3_n_0 ),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .I5(\columnCnt[11]_i_4_n_0 ),
        .O(\FSM_onehot_next_state_reg[3]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \columnCnt0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\columnCnt0_inferred__0/i__carry_n_0 ,\columnCnt0_inferred__0/i__carry_n_1 ,\columnCnt0_inferred__0/i__carry_n_2 ,\columnCnt0_inferred__0/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \columnCnt0_inferred__0/i__carry__0 
       (.CI(\columnCnt0_inferred__0/i__carry_n_0 ),
        .CO({\columnCnt0_inferred__0/i__carry__0_n_0 ,\columnCnt0_inferred__0/i__carry__0_n_1 ,\columnCnt0_inferred__0/i__carry__0_n_2 ,\columnCnt0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \columnCnt0_inferred__0/i__carry__1 
       (.CI(\columnCnt0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_columnCnt0_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],\columnCnt0_inferred__0/i__carry__1_n_2 ,\columnCnt0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_columnCnt0_inferred__0/i__carry__1_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,Q[11:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \columnCnt[0]_i_1 
       (.I0(Q[0]),
        .O(columnCnt[0]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[10]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[10]),
        .O(columnCnt[10]));
  LUT3 #(
    .INIT(8'h08)) 
    \columnCnt[11]_i_1 
       (.I0(m00_axis_tready),
        .I1(i_dataValid),
        .I2(o_blank),
        .O(\columnCnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[11]_i_2 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[11]),
        .O(columnCnt[11]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \columnCnt[11]_i_3 
       (.I0(Q[10]),
        .I1(Q[5]),
        .I2(Q[8]),
        .I3(Q[11]),
        .I4(Q[4]),
        .O(\columnCnt[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \columnCnt[11]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[9]),
        .O(\columnCnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[1]),
        .O(columnCnt[1]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[2]),
        .O(columnCnt[2]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[3]),
        .O(columnCnt[3]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[4]),
        .O(columnCnt[4]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[5]),
        .O(columnCnt[5]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[6]),
        .O(columnCnt[6]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[7]),
        .O(columnCnt[7]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[8]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[8]),
        .O(columnCnt[8]));
  LUT6 #(
    .INIT(64'hFFFFDFFF00000000)) 
    \columnCnt[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\columnCnt[11]_i_4_n_0 ),
        .I5(data0[9]),
        .O(columnCnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \columnCnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\columnCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(columnCnt[9]),
        .Q(Q[9]));
  FDCE d_newFrame_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5),
        .Q(d_newFrame));
  LUT2 #(
    .INIT(4'h8)) 
    \frameCnt[31]_i_1 
       (.I0(\lineCnt[11]_i_6_n_0 ),
        .I1(\lineCnt[11]_i_1_n_0 ),
        .O(\frameCnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frameCnt[3]_i_2 
       (.I0(o_frame_cnt[0]),
        .O(\frameCnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[3]_i_1_n_7 ),
        .Q(o_frame_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[11]_i_1_n_5 ),
        .Q(o_frame_cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[11]_i_1_n_4 ),
        .Q(o_frame_cnt[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[11]_i_1 
       (.CI(\frameCnt_reg[7]_i_1_n_0 ),
        .CO({\frameCnt_reg[11]_i_1_n_0 ,\frameCnt_reg[11]_i_1_n_1 ,\frameCnt_reg[11]_i_1_n_2 ,\frameCnt_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[11]_i_1_n_4 ,\frameCnt_reg[11]_i_1_n_5 ,\frameCnt_reg[11]_i_1_n_6 ,\frameCnt_reg[11]_i_1_n_7 }),
        .S(o_frame_cnt[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[15]_i_1_n_7 ),
        .Q(o_frame_cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[15]_i_1_n_6 ),
        .Q(o_frame_cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[15]_i_1_n_5 ),
        .Q(o_frame_cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[15]_i_1_n_4 ),
        .Q(o_frame_cnt[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[15]_i_1 
       (.CI(\frameCnt_reg[11]_i_1_n_0 ),
        .CO({\frameCnt_reg[15]_i_1_n_0 ,\frameCnt_reg[15]_i_1_n_1 ,\frameCnt_reg[15]_i_1_n_2 ,\frameCnt_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[15]_i_1_n_4 ,\frameCnt_reg[15]_i_1_n_5 ,\frameCnt_reg[15]_i_1_n_6 ,\frameCnt_reg[15]_i_1_n_7 }),
        .S(o_frame_cnt[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[19]_i_1_n_7 ),
        .Q(o_frame_cnt[16]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[19]_i_1_n_6 ),
        .Q(o_frame_cnt[17]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[19]_i_1_n_5 ),
        .Q(o_frame_cnt[18]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[19]_i_1_n_4 ),
        .Q(o_frame_cnt[19]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[19]_i_1 
       (.CI(\frameCnt_reg[15]_i_1_n_0 ),
        .CO({\frameCnt_reg[19]_i_1_n_0 ,\frameCnt_reg[19]_i_1_n_1 ,\frameCnt_reg[19]_i_1_n_2 ,\frameCnt_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[19]_i_1_n_4 ,\frameCnt_reg[19]_i_1_n_5 ,\frameCnt_reg[19]_i_1_n_6 ,\frameCnt_reg[19]_i_1_n_7 }),
        .S(o_frame_cnt[19:16]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[3]_i_1_n_6 ),
        .Q(o_frame_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[23]_i_1_n_7 ),
        .Q(o_frame_cnt[20]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[23]_i_1_n_6 ),
        .Q(o_frame_cnt[21]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[23]_i_1_n_5 ),
        .Q(o_frame_cnt[22]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[23]_i_1_n_4 ),
        .Q(o_frame_cnt[23]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[23]_i_1 
       (.CI(\frameCnt_reg[19]_i_1_n_0 ),
        .CO({\frameCnt_reg[23]_i_1_n_0 ,\frameCnt_reg[23]_i_1_n_1 ,\frameCnt_reg[23]_i_1_n_2 ,\frameCnt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[23]_i_1_n_4 ,\frameCnt_reg[23]_i_1_n_5 ,\frameCnt_reg[23]_i_1_n_6 ,\frameCnt_reg[23]_i_1_n_7 }),
        .S(o_frame_cnt[23:20]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[27]_i_1_n_7 ),
        .Q(o_frame_cnt[24]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[27]_i_1_n_6 ),
        .Q(o_frame_cnt[25]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[27]_i_1_n_5 ),
        .Q(o_frame_cnt[26]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[27]_i_1_n_4 ),
        .Q(o_frame_cnt[27]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[27]_i_1 
       (.CI(\frameCnt_reg[23]_i_1_n_0 ),
        .CO({\frameCnt_reg[27]_i_1_n_0 ,\frameCnt_reg[27]_i_1_n_1 ,\frameCnt_reg[27]_i_1_n_2 ,\frameCnt_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[27]_i_1_n_4 ,\frameCnt_reg[27]_i_1_n_5 ,\frameCnt_reg[27]_i_1_n_6 ,\frameCnt_reg[27]_i_1_n_7 }),
        .S(o_frame_cnt[27:24]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[31]_i_2_n_7 ),
        .Q(o_frame_cnt[28]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[31]_i_2_n_6 ),
        .Q(o_frame_cnt[29]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[3]_i_1_n_5 ),
        .Q(o_frame_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[31]_i_2_n_5 ),
        .Q(o_frame_cnt[30]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[31]_i_2_n_4 ),
        .Q(o_frame_cnt[31]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[31]_i_2 
       (.CI(\frameCnt_reg[27]_i_1_n_0 ),
        .CO({\NLW_frameCnt_reg[31]_i_2_CO_UNCONNECTED [3],\frameCnt_reg[31]_i_2_n_1 ,\frameCnt_reg[31]_i_2_n_2 ,\frameCnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[31]_i_2_n_4 ,\frameCnt_reg[31]_i_2_n_5 ,\frameCnt_reg[31]_i_2_n_6 ,\frameCnt_reg[31]_i_2_n_7 }),
        .S(o_frame_cnt[31:28]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[3]_i_1_n_4 ),
        .Q(o_frame_cnt[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\frameCnt_reg[3]_i_1_n_0 ,\frameCnt_reg[3]_i_1_n_1 ,\frameCnt_reg[3]_i_1_n_2 ,\frameCnt_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frameCnt_reg[3]_i_1_n_4 ,\frameCnt_reg[3]_i_1_n_5 ,\frameCnt_reg[3]_i_1_n_6 ,\frameCnt_reg[3]_i_1_n_7 }),
        .S({o_frame_cnt[3:1],\frameCnt[3]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[7]_i_1_n_7 ),
        .Q(o_frame_cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[7]_i_1_n_6 ),
        .Q(o_frame_cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[7]_i_1_n_5 ),
        .Q(o_frame_cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[7]_i_1_n_4 ),
        .Q(o_frame_cnt[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frameCnt_reg[7]_i_1 
       (.CI(\frameCnt_reg[3]_i_1_n_0 ),
        .CO({\frameCnt_reg[7]_i_1_n_0 ,\frameCnt_reg[7]_i_1_n_1 ,\frameCnt_reg[7]_i_1_n_2 ,\frameCnt_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frameCnt_reg[7]_i_1_n_4 ,\frameCnt_reg[7]_i_1_n_5 ,\frameCnt_reg[7]_i_1_n_6 ,\frameCnt_reg[7]_i_1_n_7 }),
        .S(o_frame_cnt[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[11]_i_1_n_7 ),
        .Q(o_frame_cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \frameCnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\frameCnt[31]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(\frameCnt_reg[11]_i_1_n_6 ),
        .Q(o_frame_cnt[9]));
  CARRY4 framerateCnt4_carry
       (.CI(1'b0),
        .CO({framerateCnt4_carry_n_0,framerateCnt4_carry_n_1,framerateCnt4_carry_n_2,framerateCnt4_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_framerateCnt4_carry_O_UNCONNECTED[3:0]),
        .S({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12}));
  CARRY4 framerateCnt4_carry__0
       (.CI(framerateCnt4_carry_n_0),
        .CO({framerateCnt4_carry__0_n_0,framerateCnt4_carry__0_n_1,framerateCnt4_carry__0_n_2,framerateCnt4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_framerateCnt4_carry__0_O_UNCONNECTED[3:0]),
        .S({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16}));
  CARRY4 framerateCnt4_carry__1
       (.CI(framerateCnt4_carry__0_n_0),
        .CO({NLW_framerateCnt4_carry__1_CO_UNCONNECTED[3],framerateCnt4,framerateCnt4_carry__1_n_2,framerateCnt4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_framerateCnt4_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \lineCnt[0]_i_1 
       (.I0(o_pixel_y[0]),
        .O(lineCnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[10]_i_1 
       (.I0(\lineCnt_reg[11]_i_5_n_6 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[10]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \lineCnt[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[7]),
        .I2(Q[0]),
        .I3(\columnCnt[11]_i_3_n_0 ),
        .I4(\lineCnt[11]_i_3_n_0 ),
        .I5(\lineCnt[11]_i_4_n_0 ),
        .O(\lineCnt[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[11]_i_2 
       (.I0(\lineCnt_reg[11]_i_5_n_5 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[11]));
  LUT6 #(
    .INIT(64'hFF7FFFFFFFFFFFFF)) 
    \lineCnt[11]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(o_blank),
        .I4(i_dataValid),
        .I5(m00_axis_tready),
        .O(\lineCnt[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \lineCnt[11]_i_4 
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[11]),
        .O(\lineCnt[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \lineCnt[11]_i_6 
       (.I0(o_pixel_y[9]),
        .I1(o_pixel_y[5]),
        .I2(o_pixel_y[2]),
        .I3(o_pixel_y[6]),
        .I4(\lineCnt[11]_i_7_n_0 ),
        .I5(\lineCnt[11]_i_8_n_0 ),
        .O(\lineCnt[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \lineCnt[11]_i_7 
       (.I0(o_pixel_y[1]),
        .I1(o_pixel_y[0]),
        .I2(o_pixel_y[8]),
        .I3(o_pixel_y[11]),
        .O(\lineCnt[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lineCnt[11]_i_8 
       (.I0(o_pixel_y[7]),
        .I1(o_pixel_y[3]),
        .I2(o_pixel_y[4]),
        .I3(o_pixel_y[10]),
        .O(\lineCnt[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[1]_i_1 
       (.I0(\lineCnt_reg[4]_i_2_n_7 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[2]_i_1 
       (.I0(\lineCnt_reg[4]_i_2_n_6 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[3]_i_1 
       (.I0(\lineCnt_reg[4]_i_2_n_5 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[4]_i_1 
       (.I0(\lineCnt_reg[4]_i_2_n_4 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[5]_i_1 
       (.I0(\lineCnt_reg[8]_i_2_n_7 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[6]_i_1 
       (.I0(\lineCnt_reg[8]_i_2_n_6 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[7]_i_1 
       (.I0(\lineCnt_reg[8]_i_2_n_5 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[8]_i_1 
       (.I0(\lineCnt_reg[8]_i_2_n_4 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lineCnt[9]_i_1 
       (.I0(\lineCnt_reg[11]_i_5_n_7 ),
        .I1(\lineCnt[11]_i_6_n_0 ),
        .O(lineCnt[9]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[0]),
        .Q(o_pixel_y[0]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[10]),
        .Q(o_pixel_y[10]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[11]),
        .Q(o_pixel_y[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lineCnt_reg[11]_i_5 
       (.CI(\lineCnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_lineCnt_reg[11]_i_5_CO_UNCONNECTED [3:2],\lineCnt_reg[11]_i_5_n_2 ,\lineCnt_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_lineCnt_reg[11]_i_5_O_UNCONNECTED [3],\lineCnt_reg[11]_i_5_n_5 ,\lineCnt_reg[11]_i_5_n_6 ,\lineCnt_reg[11]_i_5_n_7 }),
        .S({1'b0,o_pixel_y[11:9]}));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[1]),
        .Q(o_pixel_y[1]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[2]),
        .Q(o_pixel_y[2]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[3]),
        .Q(o_pixel_y[3]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[4]),
        .Q(o_pixel_y[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lineCnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\lineCnt_reg[4]_i_2_n_0 ,\lineCnt_reg[4]_i_2_n_1 ,\lineCnt_reg[4]_i_2_n_2 ,\lineCnt_reg[4]_i_2_n_3 }),
        .CYINIT(o_pixel_y[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lineCnt_reg[4]_i_2_n_4 ,\lineCnt_reg[4]_i_2_n_5 ,\lineCnt_reg[4]_i_2_n_6 ,\lineCnt_reg[4]_i_2_n_7 }),
        .S(o_pixel_y[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[5]),
        .Q(o_pixel_y[5]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[6]),
        .Q(o_pixel_y[6]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[7]),
        .Q(o_pixel_y[7]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[8]),
        .Q(o_pixel_y[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \lineCnt_reg[8]_i_2 
       (.CI(\lineCnt_reg[4]_i_2_n_0 ),
        .CO({\lineCnt_reg[8]_i_2_n_0 ,\lineCnt_reg[8]_i_2_n_1 ,\lineCnt_reg[8]_i_2_n_2 ,\lineCnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lineCnt_reg[8]_i_2_n_4 ,\lineCnt_reg[8]_i_2_n_5 ,\lineCnt_reg[8]_i_2_n_6 ,\lineCnt_reg[8]_i_2_n_7 }),
        .S(o_pixel_y[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \lineCnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\lineCnt[11]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .D(lineCnt[9]),
        .Q(o_pixel_y[9]));
  LUT5 #(
    .INIT(32'hF0E0E0E0)) 
    m00_axis_tvalid_INST_0
       (.I0(m00_axis_tlast),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(i_dataValid),
        .I3(m00_axis_tready),
        .I4(m00_axis_tuser),
        .O(m00_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixelDataToVideoStream_v1_0_S00_AXI pixelDataToVideoStream_v1_0_S00_AXI_inst
       (.CO(framerateCnt4),
        .D({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7}),
        .\FSM_onehot_current_state_reg[0] (\FSM_onehot_next_state_reg[0]_i_2_n_0 ),
        .\FSM_onehot_current_state_reg[1] (\FSM_onehot_next_state_reg[2]_i_2_n_0 ),
        .Q({m00_axis_tlast,m00_axis_tuser,o_blank}),
        .S({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12}),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .\axi_rdata_reg[0]_0 (o_frame_cnt[0]),
        .\axi_rdata_reg[11]_0 (o_frame_cnt[11:8]),
        .\axi_rdata_reg[15]_0 (o_frame_cnt[15:12]),
        .\axi_rdata_reg[19]_0 (o_frame_cnt[19:16]),
        .\axi_rdata_reg[23]_0 (o_frame_cnt[23:20]),
        .\axi_rdata_reg[27]_0 (o_frame_cnt[27:24]),
        .\axi_rdata_reg[31]_0 (o_frame_cnt[31:28]),
        .\axi_rdata_reg[3]_0 (o_frame_cnt[3:1]),
        .\axi_rdata_reg[7]_0 (o_frame_cnt[7:4]),
        .axi_wready_reg_0(s00_axi_wready),
        .d_newFrame(d_newFrame),
        .d_newFrame_reg(pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5),
        .\frameCnt_reg[31] ({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19}),
        .o_stall(o_stall),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[21]_0 ({pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15,pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pixelDataToVideoStream_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    d_newFrame_reg,
    D,
    o_stall,
    S,
    \slv_reg1_reg[21]_0 ,
    \frameCnt_reg[31] ,
    s00_axi_rdata,
    s00_axi_aclk,
    d_newFrame,
    Q,
    CO,
    \FSM_onehot_current_state_reg[0] ,
    \FSM_onehot_current_state_reg[1] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[27]_0 ,
    \axi_rdata_reg[31]_0 ,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output d_newFrame_reg;
  output [1:0]D;
  output o_stall;
  output [3:0]S;
  output [3:0]\slv_reg1_reg[21]_0 ;
  output [2:0]\frameCnt_reg[31] ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input d_newFrame;
  input [2:0]Q;
  input [0:0]CO;
  input \FSM_onehot_current_state_reg[0] ;
  input \FSM_onehot_current_state_reg[1] ;
  input \axi_rdata_reg[0]_0 ;
  input [2:0]\axi_rdata_reg[3]_0 ;
  input [3:0]\axi_rdata_reg[7]_0 ;
  input [3:0]\axi_rdata_reg[11]_0 ;
  input [3:0]\axi_rdata_reg[15]_0 ;
  input [3:0]\axi_rdata_reg[19]_0 ;
  input [3:0]\axi_rdata_reg[23]_0 ;
  input [3:0]\axi_rdata_reg[27]_0 ;
  input [3:0]\axi_rdata_reg[31]_0 ;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [1:0]D;
  wire \FSM_onehot_current_state_reg[0] ;
  wire \FSM_onehot_current_state_reg[1] ;
  wire [2:0]Q;
  wire [3:0]S;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire [3:0]\axi_rdata_reg[11]_0 ;
  wire [3:0]\axi_rdata_reg[15]_0 ;
  wire [3:0]\axi_rdata_reg[19]_0 ;
  wire [3:0]\axi_rdata_reg[23]_0 ;
  wire [3:0]\axi_rdata_reg[27]_0 ;
  wire [3:0]\axi_rdata_reg[31]_0 ;
  wire [2:0]\axi_rdata_reg[3]_0 ;
  wire [3:0]\axi_rdata_reg[7]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire d_newFrame;
  wire d_newFrame_reg;
  wire [2:0]\frameCnt_reg[31] ;
  wire o_stall;
  wire o_stallActive;
  wire [1:0]p_0_in;
  wire [31:0]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [3:0]\slv_reg1_reg[21]_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hFFFFC444C444C444)) 
    \FSM_onehot_next_state_reg[0]_i_1 
       (.I0(d_newFrame),
        .I1(Q[0]),
        .I2(o_stallActive),
        .I3(CO),
        .I4(\FSM_onehot_current_state_reg[0] ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4444F444F444F444)) 
    \FSM_onehot_next_state_reg[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1] ),
        .I1(Q[1]),
        .I2(d_newFrame),
        .I3(Q[0]),
        .I4(o_stallActive),
        .I5(CO),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \axi_rdata[0]_i_1 
       (.I0(CO),
        .I1(\axi_rdata[0]_i_2_n_0 ),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[0]),
        .I4(axi_araddr[2]),
        .I5(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \axi_rdata[0]_i_2 
       (.I0(Q[0]),
        .I1(o_stallActive),
        .O(\axi_rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata_reg[0]_0 ),
        .I1(axi_araddr[3]),
        .I2(o_stallActive),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[11]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[11]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[15]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[15]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[15]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[15]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[19]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[19]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[19]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[19]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[3]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[23]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[23]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[23]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[23]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[27]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[27]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[27]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[27]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[31]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[3]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[31]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[31]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[3]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[7]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[7]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[7]_0 [2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[7]_0 [3]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[11]_0 [0]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(axi_araddr[2]),
        .I2(\axi_rdata_reg[11]_0 [1]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    d_newFrame_i_1
       (.I0(d_newFrame),
        .I1(Q[0]),
        .I2(o_stallActive),
        .I3(CO),
        .O(d_newFrame_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__0_i_1
       (.I0(slv_reg1[21]),
        .I1(\axi_rdata_reg[23]_0 [1]),
        .I2(slv_reg1[22]),
        .I3(\axi_rdata_reg[23]_0 [2]),
        .I4(\axi_rdata_reg[23]_0 [3]),
        .I5(slv_reg1[23]),
        .O(\slv_reg1_reg[21]_0 [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__0_i_2
       (.I0(slv_reg1[18]),
        .I1(\axi_rdata_reg[19]_0 [2]),
        .I2(slv_reg1[19]),
        .I3(\axi_rdata_reg[19]_0 [3]),
        .I4(\axi_rdata_reg[23]_0 [0]),
        .I5(slv_reg1[20]),
        .O(\slv_reg1_reg[21]_0 [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__0_i_3
       (.I0(slv_reg1[15]),
        .I1(\axi_rdata_reg[15]_0 [3]),
        .I2(slv_reg1[16]),
        .I3(\axi_rdata_reg[19]_0 [0]),
        .I4(\axi_rdata_reg[19]_0 [1]),
        .I5(slv_reg1[17]),
        .O(\slv_reg1_reg[21]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__0_i_4
       (.I0(slv_reg1[12]),
        .I1(\axi_rdata_reg[15]_0 [0]),
        .I2(slv_reg1[13]),
        .I3(\axi_rdata_reg[15]_0 [1]),
        .I4(\axi_rdata_reg[15]_0 [2]),
        .I5(slv_reg1[14]),
        .O(\slv_reg1_reg[21]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    framerateCnt4_carry__1_i_1
       (.I0(\axi_rdata_reg[31]_0 [3]),
        .I1(slv_reg1[31]),
        .I2(\axi_rdata_reg[31]_0 [2]),
        .I3(slv_reg1[30]),
        .O(\frameCnt_reg[31] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__1_i_2
       (.I0(slv_reg1[27]),
        .I1(\axi_rdata_reg[27]_0 [3]),
        .I2(slv_reg1[28]),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(\axi_rdata_reg[31]_0 [1]),
        .I5(slv_reg1[29]),
        .O(\frameCnt_reg[31] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry__1_i_3
       (.I0(slv_reg1[24]),
        .I1(\axi_rdata_reg[27]_0 [0]),
        .I2(slv_reg1[25]),
        .I3(\axi_rdata_reg[27]_0 [1]),
        .I4(\axi_rdata_reg[27]_0 [2]),
        .I5(slv_reg1[26]),
        .O(\frameCnt_reg[31] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry_i_1
       (.I0(slv_reg1[9]),
        .I1(\axi_rdata_reg[11]_0 [1]),
        .I2(slv_reg1[10]),
        .I3(\axi_rdata_reg[11]_0 [2]),
        .I4(\axi_rdata_reg[11]_0 [3]),
        .I5(slv_reg1[11]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry_i_2
       (.I0(slv_reg1[6]),
        .I1(\axi_rdata_reg[7]_0 [2]),
        .I2(slv_reg1[7]),
        .I3(\axi_rdata_reg[7]_0 [3]),
        .I4(\axi_rdata_reg[11]_0 [0]),
        .I5(slv_reg1[8]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry_i_3
       (.I0(slv_reg1[5]),
        .I1(\axi_rdata_reg[7]_0 [1]),
        .I2(slv_reg1[3]),
        .I3(\axi_rdata_reg[3]_0 [2]),
        .I4(\axi_rdata_reg[7]_0 [0]),
        .I5(slv_reg1[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    framerateCnt4_carry_i_4
       (.I0(slv_reg1[0]),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(slv_reg1[1]),
        .I3(\axi_rdata_reg[3]_0 [0]),
        .I4(\axi_rdata_reg[3]_0 [1]),
        .I5(slv_reg1[2]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    o_stall_INST_0
       (.I0(CO),
        .I1(o_stallActive),
        .I2(Q[0]),
        .O(o_stall));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[0]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[0]),
        .Q(o_stallActive),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
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
