// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jan 23 15:36:58 2023
// Host        : DESKTOP-STNSRIB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_pixelDataToVideoStre_0_3/atelier4_pixelDataToVideoStre_0_3_stub.v
// Design      : atelier4_pixelDataToVideoStre_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pixelDataToVideoStream_v1_0,Vivado 2020.2" *)
module atelier4_pixelDataToVideoStre_0_3(o_stall, o_blank, o_pixel_x, o_pixel_y, 
  o_frame_cnt, i_dataPixel, i_dataValid, i_aresetn, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, 
  s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, 
  s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, m00_axis_tvalid, 
  m00_axis_tdata, m00_axis_tlast, m00_axis_tready, m00_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="o_stall,o_blank,o_pixel_x[11:0],o_pixel_y[11:0],o_frame_cnt[31:0],i_dataPixel[23:0],i_dataValid,i_aresetn,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,m00_axis_tvalid,m00_axis_tdata[23:0],m00_axis_tlast,m00_axis_tready,m00_axis_tuser" */;
  output o_stall;
  output o_blank;
  output [11:0]o_pixel_x;
  output [11:0]o_pixel_y;
  output [31:0]o_frame_cnt;
  input [23:0]i_dataPixel;
  input i_dataValid;
  input i_aresetn;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output m00_axis_tvalid;
  output [23:0]m00_axis_tdata;
  output m00_axis_tlast;
  input m00_axis_tready;
  output m00_axis_tuser;
endmodule
