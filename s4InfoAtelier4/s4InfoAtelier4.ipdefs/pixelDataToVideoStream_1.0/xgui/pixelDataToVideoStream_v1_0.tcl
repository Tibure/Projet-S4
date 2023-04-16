# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "C_FRAMERATE"
  ipgui::add_param $IPINST -name "C_CLK_SPEED"
  ipgui::add_param $IPINST -name "C_VID_HEIGHT"
  ipgui::add_param $IPINST -name "C_VID_WIDTH"
  #Adding Group
  set axi [ipgui::add_group $IPINST -name "axi"]
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -parent ${axi}]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_M00_AXIS_START_COUNT" -parent ${Page_0}



}

proc update_PARAM_VALUE.C_CLK_SPEED { PARAM_VALUE.C_CLK_SPEED } {
	# Procedure called to update C_CLK_SPEED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_SPEED { PARAM_VALUE.C_CLK_SPEED } {
	# Procedure called to validate C_CLK_SPEED
	return true
}

proc update_PARAM_VALUE.C_FRAMERATE { PARAM_VALUE.C_FRAMERATE } {
	# Procedure called to update C_FRAMERATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FRAMERATE { PARAM_VALUE.C_FRAMERATE } {
	# Procedure called to validate C_FRAMERATE
	return true
}

proc update_PARAM_VALUE.C_VID_HEIGHT { PARAM_VALUE.C_VID_HEIGHT } {
	# Procedure called to update C_VID_HEIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VID_HEIGHT { PARAM_VALUE.C_VID_HEIGHT } {
	# Procedure called to validate C_VID_HEIGHT
	return true
}

proc update_PARAM_VALUE.C_VID_WIDTH { PARAM_VALUE.C_VID_WIDTH } {
	# Procedure called to update C_VID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_VID_WIDTH { PARAM_VALUE.C_VID_WIDTH } {
	# Procedure called to validate C_VID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_START_COUNT { PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to update C_M00_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_START_COUNT { PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to validate C_M00_AXIS_START_COUNT
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_START_COUNT { MODELPARAM_VALUE.C_M00_AXIS_START_COUNT PARAM_VALUE.C_M00_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M00_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_FRAMERATE { MODELPARAM_VALUE.C_FRAMERATE PARAM_VALUE.C_FRAMERATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FRAMERATE}] ${MODELPARAM_VALUE.C_FRAMERATE}
}

proc update_MODELPARAM_VALUE.C_CLK_SPEED { MODELPARAM_VALUE.C_CLK_SPEED PARAM_VALUE.C_CLK_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_SPEED}] ${MODELPARAM_VALUE.C_CLK_SPEED}
}

proc update_MODELPARAM_VALUE.C_VID_HEIGHT { MODELPARAM_VALUE.C_VID_HEIGHT PARAM_VALUE.C_VID_HEIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VID_HEIGHT}] ${MODELPARAM_VALUE.C_VID_HEIGHT}
}

proc update_MODELPARAM_VALUE.C_VID_WIDTH { MODELPARAM_VALUE.C_VID_WIDTH PARAM_VALUE.C_VID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_VID_WIDTH}] ${MODELPARAM_VALUE.C_VID_WIDTH}
}

