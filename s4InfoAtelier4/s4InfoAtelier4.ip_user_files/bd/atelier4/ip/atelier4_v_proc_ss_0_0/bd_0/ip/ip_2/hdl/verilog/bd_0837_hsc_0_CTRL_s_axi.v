// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module bd_0837_hsc_0_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 15,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [15:0]                   Height,
    output wire [15:0]                   WidthIn,
    output wire [15:0]                   WidthOut,
    output wire [7:0]                    ColorMode,
    output wire [31:0]                   PixelRate,
    output wire [7:0]                    ColorModeOut,
    input  wire [8:0]                    hfltCoeff_address0,
    input  wire                          hfltCoeff_ce0,
    output wire [15:0]                   hfltCoeff_q0,
    input  wire [10:0]                   phasesH_address0,
    input  wire                          phasesH_ce0,
    output wire [15:0]                   phasesH_q0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0  - enable ap_done interrupt (Read/Write)
//          bit 1  - enable ap_ready interrupt (Read/Write)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0  - ap_done (COR/TOW)
//          bit 1  - ap_ready (COR/TOW)
//          others - reserved
// 0x0010 : Data signal of Height
//          bit 15~0 - Height[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of WidthIn
//          bit 15~0 - WidthIn[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of WidthOut
//          bit 15~0 - WidthOut[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0028 : Data signal of ColorMode
//          bit 7~0 - ColorMode[7:0] (Read/Write)
//          others  - reserved
// 0x002c : reserved
// 0x0030 : Data signal of PixelRate
//          bit 31~0 - PixelRate[31:0] (Read/Write)
// 0x0034 : reserved
// 0x0038 : Data signal of ColorModeOut
//          bit 7~0 - ColorModeOut[7:0] (Read/Write)
//          others  - reserved
// 0x003c : reserved
// 0x0800 ~
// 0x0bff : Memory 'hfltCoeff' (384 * 16b)
//          Word n : bit [15: 0] - hfltCoeff[2n]
//                   bit [31:16] - hfltCoeff[2n+1]
// 0x4000 ~
// 0x4fff : Memory 'phasesH' (1280 * 16b)
//          Word n : bit [15: 0] - phasesH[2n]
//                   bit [31:16] - phasesH[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL             = 15'h0000,
    ADDR_GIE                 = 15'h0004,
    ADDR_IER                 = 15'h0008,
    ADDR_ISR                 = 15'h000c,
    ADDR_HEIGHT_DATA_0       = 15'h0010,
    ADDR_HEIGHT_CTRL         = 15'h0014,
    ADDR_WIDTHIN_DATA_0      = 15'h0018,
    ADDR_WIDTHIN_CTRL        = 15'h001c,
    ADDR_WIDTHOUT_DATA_0     = 15'h0020,
    ADDR_WIDTHOUT_CTRL       = 15'h0024,
    ADDR_COLORMODE_DATA_0    = 15'h0028,
    ADDR_COLORMODE_CTRL      = 15'h002c,
    ADDR_PIXELRATE_DATA_0    = 15'h0030,
    ADDR_PIXELRATE_CTRL      = 15'h0034,
    ADDR_COLORMODEOUT_DATA_0 = 15'h0038,
    ADDR_COLORMODEOUT_CTRL   = 15'h003c,
    ADDR_HFLTCOEFF_BASE      = 15'h0800,
    ADDR_HFLTCOEFF_HIGH      = 15'h0bff,
    ADDR_PHASESH_BASE        = 15'h4000,
    ADDR_PHASESH_HIGH        = 15'h4fff,
    WRIDLE                   = 2'd0,
    WRDATA                   = 2'd1,
    WRRESP                   = 2'd2,
    WRRESET                  = 2'd3,
    RDIDLE                   = 2'd0,
    RDDATA                   = 2'd1,
    RDRESET                  = 2'd2,
    ADDR_BITS                = 15;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [15:0]                   int_Height = 'b0;
    reg  [15:0]                   int_WidthIn = 'b0;
    reg  [15:0]                   int_WidthOut = 'b0;
    reg  [7:0]                    int_ColorMode = 'b0;
    reg  [31:0]                   int_PixelRate = 'b0;
    reg  [7:0]                    int_ColorModeOut = 'b0;
    // memory signals
    wire [7:0]                    int_hfltCoeff_address0;
    wire                          int_hfltCoeff_ce0;
    wire                          int_hfltCoeff_we0;
    wire [3:0]                    int_hfltCoeff_be0;
    wire [31:0]                   int_hfltCoeff_d0;
    wire [31:0]                   int_hfltCoeff_q0;
    wire [7:0]                    int_hfltCoeff_address1;
    wire                          int_hfltCoeff_ce1;
    wire                          int_hfltCoeff_we1;
    wire [3:0]                    int_hfltCoeff_be1;
    wire [31:0]                   int_hfltCoeff_d1;
    wire [31:0]                   int_hfltCoeff_q1;
    reg                           int_hfltCoeff_read;
    reg                           int_hfltCoeff_write;
    reg  [0:0]                    int_hfltCoeff_shift;
    wire [9:0]                    int_phasesH_address0;
    wire                          int_phasesH_ce0;
    wire                          int_phasesH_we0;
    wire [3:0]                    int_phasesH_be0;
    wire [31:0]                   int_phasesH_d0;
    wire [31:0]                   int_phasesH_q0;
    wire [9:0]                    int_phasesH_address1;
    wire                          int_phasesH_ce1;
    wire                          int_phasesH_we1;
    wire [3:0]                    int_phasesH_be1;
    wire [31:0]                   int_phasesH_d1;
    wire [31:0]                   int_phasesH_q1;
    reg                           int_phasesH_read;
    reg                           int_phasesH_write;
    reg  [0:0]                    int_phasesH_shift;

//------------------------Instantiation------------------
// int_hfltCoeff
bd_0837_hsc_0_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 192 )
) int_hfltCoeff (
    .clk0     ( ACLK ),
    .address0 ( int_hfltCoeff_address0 ),
    .ce0      ( int_hfltCoeff_ce0 ),
    .we0      ( int_hfltCoeff_we0 ),
    .be0      ( int_hfltCoeff_be0 ),
    .d0       ( int_hfltCoeff_d0 ),
    .q0       ( int_hfltCoeff_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_hfltCoeff_address1 ),
    .ce1      ( int_hfltCoeff_ce1 ),
    .we1      ( int_hfltCoeff_we1 ),
    .be1      ( int_hfltCoeff_be1 ),
    .d1       ( int_hfltCoeff_d1 ),
    .q1       ( int_hfltCoeff_q1 )
);
// int_phasesH
bd_0837_hsc_0_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 640 )
) int_phasesH (
    .clk0     ( ACLK ),
    .address0 ( int_phasesH_address0 ),
    .ce0      ( int_phasesH_ce0 ),
    .we0      ( int_phasesH_we0 ),
    .be0      ( int_phasesH_be0 ),
    .d0       ( int_phasesH_d0 ),
    .q0       ( int_phasesH_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_phasesH_address1 ),
    .ce1      ( int_phasesH_ce1 ),
    .we1      ( int_phasesH_we1 ),
    .be1      ( int_phasesH_be1 ),
    .d1       ( int_phasesH_d1 ),
    .q1       ( int_phasesH_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_hfltCoeff_read & !int_phasesH_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_HEIGHT_DATA_0: begin
                    rdata <= int_Height[15:0];
                end
                ADDR_WIDTHIN_DATA_0: begin
                    rdata <= int_WidthIn[15:0];
                end
                ADDR_WIDTHOUT_DATA_0: begin
                    rdata <= int_WidthOut[15:0];
                end
                ADDR_COLORMODE_DATA_0: begin
                    rdata <= int_ColorMode[7:0];
                end
                ADDR_PIXELRATE_DATA_0: begin
                    rdata <= int_PixelRate[31:0];
                end
                ADDR_COLORMODEOUT_DATA_0: begin
                    rdata <= int_ColorModeOut[7:0];
                end
            endcase
        end
        else if (int_hfltCoeff_read) begin
            rdata <= int_hfltCoeff_q1;
        end
        else if (int_phasesH_read) begin
            rdata <= int_phasesH_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt    = int_gie & (|int_isr);
assign ap_start     = int_ap_start;
assign Height       = int_Height;
assign WidthIn      = int_WidthIn;
assign WidthOut     = int_WidthOut;
assign ColorMode    = int_ColorMode;
assign PixelRate    = int_PixelRate;
assign ColorModeOut = int_ColorModeOut;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_Height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHT_DATA_0)
            int_Height[15:0] <= (WDATA[31:0] & wmask) | (int_Height[15:0] & ~wmask);
    end
end

// int_WidthIn[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_WidthIn[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTHIN_DATA_0)
            int_WidthIn[15:0] <= (WDATA[31:0] & wmask) | (int_WidthIn[15:0] & ~wmask);
    end
end

// int_WidthOut[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_WidthOut[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTHOUT_DATA_0)
            int_WidthOut[15:0] <= (WDATA[31:0] & wmask) | (int_WidthOut[15:0] & ~wmask);
    end
end

// int_ColorMode[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ColorMode[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLORMODE_DATA_0)
            int_ColorMode[7:0] <= (WDATA[31:0] & wmask) | (int_ColorMode[7:0] & ~wmask);
    end
end

// int_PixelRate[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_PixelRate[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PIXELRATE_DATA_0)
            int_PixelRate[31:0] <= (WDATA[31:0] & wmask) | (int_PixelRate[31:0] & ~wmask);
    end
end

// int_ColorModeOut[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ColorModeOut[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLORMODEOUT_DATA_0)
            int_ColorModeOut[7:0] <= (WDATA[31:0] & wmask) | (int_ColorModeOut[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// hfltCoeff
assign int_hfltCoeff_address0 = hfltCoeff_address0 >> 1;
assign int_hfltCoeff_ce0      = hfltCoeff_ce0;
assign int_hfltCoeff_we0      = 1'b0;
assign int_hfltCoeff_be0      = 1'b0;
assign int_hfltCoeff_d0       = 1'b0;
assign hfltCoeff_q0           = int_hfltCoeff_q0 >> (int_hfltCoeff_shift * 16);
assign int_hfltCoeff_address1 = ar_hs? raddr[9:2] : waddr[9:2];
assign int_hfltCoeff_ce1      = ar_hs | (int_hfltCoeff_write & WVALID);
assign int_hfltCoeff_we1      = int_hfltCoeff_write & w_hs;
assign int_hfltCoeff_be1      = WSTRB;
assign int_hfltCoeff_d1       = WDATA;
// phasesH
assign int_phasesH_address0   = phasesH_address0 >> 1;
assign int_phasesH_ce0        = phasesH_ce0;
assign int_phasesH_we0        = 1'b0;
assign int_phasesH_be0        = 1'b0;
assign int_phasesH_d0         = 1'b0;
assign phasesH_q0             = int_phasesH_q0 >> (int_phasesH_shift * 16);
assign int_phasesH_address1   = ar_hs? raddr[11:2] : waddr[11:2];
assign int_phasesH_ce1        = ar_hs | (int_phasesH_write & WVALID);
assign int_phasesH_we1        = int_phasesH_write & w_hs;
assign int_phasesH_be1        = WSTRB;
assign int_phasesH_d1         = WDATA;
// int_hfltCoeff_read
always @(posedge ACLK) begin
    if (ARESET)
        int_hfltCoeff_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_HFLTCOEFF_BASE && raddr <= ADDR_HFLTCOEFF_HIGH)
            int_hfltCoeff_read <= 1'b1;
        else
            int_hfltCoeff_read <= 1'b0;
    end
end

// int_hfltCoeff_write
always @(posedge ACLK) begin
    if (ARESET)
        int_hfltCoeff_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_HFLTCOEFF_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_HFLTCOEFF_HIGH)
            int_hfltCoeff_write <= 1'b1;
        else if (w_hs)
            int_hfltCoeff_write <= 1'b0;
    end
end

// int_hfltCoeff_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (hfltCoeff_ce0)
            int_hfltCoeff_shift <= hfltCoeff_address0[0];
    end
end

// int_phasesH_read
always @(posedge ACLK) begin
    if (ARESET)
        int_phasesH_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_PHASESH_BASE && raddr <= ADDR_PHASESH_HIGH)
            int_phasesH_read <= 1'b1;
        else
            int_phasesH_read <= 1'b0;
    end
end

// int_phasesH_write
always @(posedge ACLK) begin
    if (ARESET)
        int_phasesH_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_PHASESH_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_PHASESH_HIGH)
            int_phasesH_write <= 1'b1;
        else if (w_hs)
            int_phasesH_write <= 1'b0;
    end
end

// int_phasesH_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (phasesH_ce0)
            int_phasesH_shift <= phasesH_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module bd_0837_hsc_0_CTRL_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

