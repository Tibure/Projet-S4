# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\S3\project_1\ProjectMarcheChrist_system\_ide\scripts\debugger_projectmarchechrist-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\S3\project_1\ProjectMarcheChrist_system\_ide\scripts\debugger_projectmarchechrist-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A77E3EA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A77E3EA-13722093-0"}
fpga -file C:/S3/project_1/ProjectMarcheChrist/_ide/bitstream/nomPertinent_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/S3/project_1/nomPertinent_wrapper/export/nomPertinent_wrapper/hw/nomPertinent_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/S3/project_1/ProjectMarcheChrist/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/S3/project_1/ProjectMarcheChrist/Debug/ProjectMarcheChrist.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
