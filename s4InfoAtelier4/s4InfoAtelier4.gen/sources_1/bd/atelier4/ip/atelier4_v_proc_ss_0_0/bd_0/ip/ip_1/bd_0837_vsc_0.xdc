
#set_false_path -from [get_cells v_vscaler_CTRL_s_axi_U/int_HwReg_HeightIn_reg[*]]
#set_false_path -from [get_cells v_vscaler_CTRL_s_axi_U/int_HwReg_Width_reg[*]]
#set_false_path -from [get_cells v_vscaler_CTRL_s_axi_U/int_HwReg_HeightOut_reg[*]]
#set_false_path -from [get_cells v_vscaler_CTRL_s_axi_U/int_HwReg_LineRate_reg[*]]

set_false_path -from [get_cells CTRL_s_axi_U/int_HeightIn_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_Width_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_HeightOut_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_LineRate_reg[*]]
set_false_path -from [get_cells CTRL_s_axi_U/int_ColorMode_reg[*]]


#
#set_false_path -from [get_cells CTRL_s_axi_U/int_vfltCoeff*]
#
