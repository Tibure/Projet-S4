# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\S3\project_1\nomPertinent_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\S3\project_1\nomPertinent_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {nomPertinent_wrapper}\
-hw {C:\S3\project_1\nomPertinent_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/S3/project_1}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {nomPertinent_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform config -updatehw {C:/S3/project_1/nomPertinent_wrapper.xsa}
platform config -updatehw {C:/S3/project_1/nomPertinent_wrapper.xsa}
platform generate
