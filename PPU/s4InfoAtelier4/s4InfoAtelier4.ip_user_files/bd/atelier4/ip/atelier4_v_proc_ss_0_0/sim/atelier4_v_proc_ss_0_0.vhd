-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_proc_ss:2.3
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY atelier4_v_proc_ss_0_0 IS
  PORT (
    aclk_axis : IN STD_LOGIC;
    aclk_ctrl : IN STD_LOGIC;
    aresetn_ctrl : IN STD_LOGIC;
    aresetn_io_axis : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_ctrl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctrl_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctrl_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_ctrl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_ctrl_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_ctrl_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_axis_tdest : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tkeep : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axis_tlast : IN STD_LOGIC;
    s_axis_tready : OUT STD_LOGIC;
    s_axis_tstrb : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axis_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axis_tvalid : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_tdest : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tkeep : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tready : IN STD_LOGIC;
    m_axis_tstrb : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axis_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axis_tvalid : OUT STD_LOGIC
  );
END atelier4_v_proc_ss_0_0;

ARCHITECTURE atelier4_v_proc_ss_0_0_arch OF atelier4_v_proc_ss_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF atelier4_v_proc_ss_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_0837 IS
    PORT (
      aclk_axis : IN STD_LOGIC;
      aclk_ctrl : IN STD_LOGIC;
      aresetn_ctrl : IN STD_LOGIC;
      aresetn_io_axis : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_ctrl_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctrl_awvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_awready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctrl_wvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_wready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_bvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_bready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_ctrl_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axi_ctrl_arvalid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_arready : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_rvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_ctrl_rready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_axis_tdest : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_tid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_tkeep : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axis_tlast : IN STD_LOGIC;
      s_axis_tready : OUT STD_LOGIC;
      s_axis_tstrb : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_axis_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axis_tvalid : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_tdest : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_tid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_tkeep : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_tready : IN STD_LOGIC;
      m_axis_tstrb : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axis_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axis_tvalid : OUT STD_LOGIC
    );
  END COMPONENT bd_0837;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDEST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdest: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDEST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_ctrl_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_ctrl, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 74250000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREA" & 
"DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn_io_axis: SIGNAL IS "XIL_INTERFACENAME RST.aresetn_io_axis, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn_io_axis: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.aresetn_io_axis RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn_ctrl: SIGNAL IS "XIL_INTERFACENAME RST.aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn_ctrl: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.aresetn_ctrl RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk_ctrl: SIGNAL IS "XIL_INTERFACENAME CLK.aclk_ctrl, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF s_axi_ctrl, INSERT_VIP 0, ASSOCIATED_CLKEN s_sc_aclken";
  ATTRIBUTE X_INTERFACE_INFO OF aclk_ctrl: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.aclk_ctrl CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk_axis: SIGNAL IS "XIL_INTERFACENAME CLK.aclk_axis, ASSOCIATED_RESET aresetn_io_axis, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF m_axis:s_axis, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  ATTRIBUTE X_INTERFACE_INFO OF aclk_axis: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.aclk_axis CLK";
BEGIN
  U0 : bd_0837
    PORT MAP (
      aclk_axis => aclk_axis,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      aresetn_io_axis => aresetn_io_axis,
      s_axi_ctrl_awaddr => s_axi_ctrl_awaddr,
      s_axi_ctrl_awprot => s_axi_ctrl_awprot,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_wdata => s_axi_ctrl_wdata,
      s_axi_ctrl_wstrb => s_axi_ctrl_wstrb,
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axi_ctrl_wready => s_axi_ctrl_wready,
      s_axi_ctrl_bresp => s_axi_ctrl_bresp,
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_araddr => s_axi_ctrl_araddr,
      s_axi_ctrl_arprot => s_axi_ctrl_arprot,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_rdata => s_axi_ctrl_rdata,
      s_axi_ctrl_rresp => s_axi_ctrl_rresp,
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axis_tdata => s_axis_tdata,
      s_axis_tdest => s_axis_tdest,
      s_axis_tid => s_axis_tid,
      s_axis_tkeep => s_axis_tkeep,
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb => s_axis_tstrb,
      s_axis_tuser => s_axis_tuser,
      s_axis_tvalid => s_axis_tvalid,
      m_axis_tdata => m_axis_tdata,
      m_axis_tdest => m_axis_tdest,
      m_axis_tid => m_axis_tid,
      m_axis_tkeep => m_axis_tkeep,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb => m_axis_tstrb,
      m_axis_tuser => m_axis_tuser,
      m_axis_tvalid => m_axis_tvalid
    );
END atelier4_v_proc_ss_0_0_arch;
