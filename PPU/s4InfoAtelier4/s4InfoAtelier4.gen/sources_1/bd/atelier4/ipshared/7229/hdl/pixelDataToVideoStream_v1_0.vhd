library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pixelDataToVideoStream_v1_0 is
	generic (
		-- Users to add parameters here
        C_FRAMERATE : integer := 60;
        C_CLK_SPEED : integer := 74250000;
        C_VID_HEIGHT : integer := 360;
        C_VID_WIDTH : integer := 640;        
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4;

		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 24;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here
        o_stall : out std_logic;
        o_blank : out std_logic;
        o_pixel_x : out std_logic_vector(11 downto 0);
        o_pixel_y : out std_logic_vector(11 downto 0);
        o_frame_cnt : out std_logic_vector(31 downto 0);
        
        i_dataPixel : in std_logic_vector(23 downto 0);
        i_dataValid : in std_logic;
        i_aresetn   : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic;
		m00_axis_tuser : out std_logic
	);
end pixelDataToVideoStream_v1_0;

architecture arch_imp of pixelDataToVideoStream_v1_0 is

	-- component declaration
	component pixelDataToVideoStream_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		
		o_stallActive : out std_logic;
		o_stallOnFrameNb :  out std_logic_vector(31 downto 0);
		i_frameCnt : in std_logic_vector(31 downto 0);
		i_isStalled : in std_logic;
		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component pixelDataToVideoStream_v1_0_S00_AXI;

  type state_videostr is (WAITING, STREAMING, EOL, SOF);
  signal current_state : state_videostr := WAITING;
  signal next_state : state_videostr := WAITING;
  
  signal lineCnt : unsigned(11 downto 0) := (others => '0');
  signal columnCnt : unsigned(11 downto 0) := (others => '0');  
  signal frameCnt : unsigned(31 downto 0) := (others => '0');  --frameCnt is never ressetted during operation, at 60 fps, should be enough for approx. 2 years.
  signal framerateCnt : unsigned(31 downto 0) := (others => '0');  

  signal d_stallActive : std_logic;
  signal d_stallOnFrameNb : std_logic_vector(31 downto 0);
  signal d_stallOnFrameNb_unsigned : unsigned(31 downto 0);
  signal d_stalled : std_logic;
  
  signal d_newFrame : std_logic;
  constant FRAMENB : unsigned(31 downto 0) :=  to_unsigned(C_CLK_SPEED/C_FRAMERATE,32);

begin

--Stall if next frame is frame we should stall on, stall prevent from leaving waiting state
process(d_stallActive, d_stallOnFrameNb, FrameCnt, current_state)
begin
   if(d_stallActive = '1' and current_state = WAITING and d_stallOnFrameNb_unsigned = frameCnt) then
       d_stalled <= '1';
   else
       d_stalled <= '0';
   end if;
end process;


process(s00_axi_aclk)
begin
    if(i_aresetn = '0') then
        current_state <= WAITING;
        columnCnt <= x"000";
        lineCnt  <= x"000";
        frameCnt <= x"00000000"; 
        framerateCnt <= x"00000000";
        d_newFrame <= '0';
        
    elsif(rising_edge(s00_axi_aclk)) then
        current_state <= next_state;
        
        --If we are not stalled, increase framerate counter, if we reach the max value, indicate a new frame is starting.
        if(d_stalled = '0' and not (framerateCnt >= FRAMENB)) then
            framerateCnt <= framerateCnt + "1";
            d_newFrame <= '1';
        elsif(d_stalled = '0') then
            framerateCnt <= x"00000000";
            d_newFrame <= '1';
        end if;
        
        --if we are streaming and a valid data is received, increase pixel cnt. At end of frame, increase frame counter.
        if(m00_axis_tready = '1') then
             if(i_dataValid = '1' and not (current_state = WAITING)) then
                 if(columnCnt = to_unsigned(C_VID_WIDTH-1, 12)) then
                        columnCnt <= x"000";
                        if(lineCnt = to_unsigned(C_VID_HEIGHT-1, 12)) then
                            lineCnt  <= x"000";
                            frameCnt <= frameCnt + "1";
                        else
                            lineCnt <= lineCnt + "1";
                        end if;
                 else
                        columnCnt <= columnCnt + "1";
                 end if;
              end if;
              
              
         end if;
    end if;
end process;


process(current_state, m00_axis_tready,columnCnt,lineCnt,d_stalled,d_newFrame)
begin
    case current_state is
    when WAITING =>
        if(d_stalled = '0' and d_newFrame = '1') then
            next_state <= SOF;
        else
            next_state <= WAITING;
        end if;
    when SOF =>
         if(m00_axis_tready = '1' and i_dataValid = '1') then
             next_state <= STREAMING;
         else
             next_state <= SOF;
         end if;
    when STREAMING =>
        if(columnCnt = to_unsigned(C_VID_WIDTH-2, 12) and m00_axis_tready = '1' and i_dataValid = '1') then
            next_state <= EOL;
        else
            next_state <= STREAMING;
        end if;
    when EOL =>
         if(lineCnt = to_unsigned(C_VID_HEIGHT-1, 12) and m00_axis_tready = '1' and i_dataValid = '1') then
            next_state <= WAITING;
         elsif(m00_axis_tready = '1' and i_dataValid = '1') then
            next_state <= STREAMING;
         end if;
    end case;
end process;


process(current_state)
begin
    case current_state is
    when WAITING =>
        m00_axis_tvalid <= '0';
        m00_axis_tlast <= '0';
        m00_axis_tuser <= '0';
        o_blank <= '1';
   when SOF =>
        m00_axis_tvalid <= m00_axis_tready and i_dataValid;
        m00_axis_tlast <= '0';
        m00_axis_tuser <= '1';
        o_blank <= '0'; 
    when STREAMING =>
        m00_axis_tvalid <= i_dataValid;
        m00_axis_tlast <= '0';
        m00_axis_tuser <= '0';
        o_blank <= '0';
    when EOL =>
        m00_axis_tvalid <= i_dataValid;
        m00_axis_tlast <= '1';
        m00_axis_tuser <= '0';
        o_blank <= '0';
    end case;
end process;     

-- Instantiation of Axi Bus Interface S00_AXI
pixelDataToVideoStream_v1_0_S00_AXI_inst : pixelDataToVideoStream_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	    o_stallActive => d_stallActive,
		o_stallOnFrameNb  => d_stallOnFrameNb,
		i_frameCnt => std_logic_vector(frameCnt),
		i_isStalled => d_stalled,
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

m00_axis_tdata(23 downto 0) <= i_dataPixel;
o_pixel_x <= std_logic_vector(columnCnt);
o_pixel_y <= std_logic_vector(lineCnt);
o_stall <= d_stalled;
d_stallOnFrameNb_unsigned <= unsigned(d_stallOnFrameNb);
o_frame_cnt <= std_logic_vector(frameCnt);

end arch_imp;
