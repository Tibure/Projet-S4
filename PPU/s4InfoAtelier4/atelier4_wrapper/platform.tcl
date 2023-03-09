# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Travail\s4InfoAtelier4\atelier4_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Travail\s4InfoAtelier4\atelier4_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {atelier4_wrapper}\
-hw {C:\Travail\s4InfoAtelier4\atelier4_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Travail/s4InfoAtelier4}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {atelier4_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {C:/Travail/s4InfoAtelier4/atelier4_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Travail/s4InfoAtelier4/atelier4_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {C:/Travail/s4InfoAtelier4/atelier4_wrapper.xsa}
platform generate -domains 
