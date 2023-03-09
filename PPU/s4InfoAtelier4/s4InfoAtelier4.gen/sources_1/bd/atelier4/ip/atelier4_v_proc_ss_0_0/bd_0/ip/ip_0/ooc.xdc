# aclk {FREQ_HZ 74250000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0} aclk1 {FREQ_HZ 74250000 CLK_DOMAIN /clk_wiz_0_clk_out1 PHASE 0.0}
# Clock Domain: /clk_wiz_0_clk_out1
create_clock -name aclk -period 13.468 [get_ports aclk]
# Generated clocks
create_generated_clock -name aclk1 -source [get_ports aclk] -divide_by 1 [get_ports aclk1]
