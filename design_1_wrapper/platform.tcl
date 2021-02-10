# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\julie\Documents\Xilinx\workspace\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\julie\Documents\Xilinx\workspace\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {D:\julie\Documents\S4\Projet\atelier2\design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/julie/Documents/Xilinx/workspace}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp setlib -name xilffs -ver 4.4
bsp setlib -name lwip211 -ver 1.3
bsp removelib -name lwip211
bsp setlib -name lwip211 -ver 1.3
bsp config use_lfn "1"
bsp config api_mode "SOCKET_API"
bsp config dhcp_does_arp_check "true"
bsp config lwip_dhcp "false"
bsp config lwip_dhcp "true"
bsp config pbuf_pool_size "256"
bsp config pbuf_pool_bufsize "2048"
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
bsp reload
catch {bsp regenerate}
bsp reload
catch {platform remove exercice2_bd_wrapper}
catch {platform remove exercice2_bd_wrapper_1}
catch {platform remove design_1_wrapper}
platform create -name {design_1_wrapper}\
-hw {D:\julie\Documents\S4\Projet\atelier2\design_1_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/julie/Documents/Xilinx/workspace}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform write
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
bsp reload
bsp write
platform generate
platform config -updatehw {D:/julie/Documents/S4/Projet/atelier2/design_1_wrapper.xsa}
platform active {design_1_wrapper}
bsp reload
catch {bsp regenerate}
bsp reload
platform generate
platform clean
platform generate
