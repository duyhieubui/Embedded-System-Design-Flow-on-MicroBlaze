# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache C:/Users/eashanw/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-37956-XIREASHANW30/incrSyn
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
set_msg_config  -ruleid {1}  -id {[BD 41-1306]}  -suppress 
set_msg_config  -ruleid {2}  -id {[BD 41-1271]}  -suppress 
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/xup/embedded/2018_2_microblz/lab5/lab5.cache/wt [current_project]
set_property parent.project_path C:/xup/embedded/2018_2_microblz/lab5/lab5.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_repo_paths c:/xup/embedded/2018_2_microblz [current_project]
set_property ip_output_repo c:/xup/embedded/2018_2_microblz/lab5/lab5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/hdl/system_wrapper.v
add_files C:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_microblaze_0_0/system_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4_board.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_mdm_1_0/system_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_0/system_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_0/system_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_lmb_bram_0/system_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_bram_ctrl_0_0/system_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_bram_ctrl_0_bram_0/system_axi_bram_ctrl_0_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_5/system_auto_pc_5_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_4/system_auto_pc_4_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_3/system_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_2/system_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/ip/system_auto_pc_6/system_auto_pc_6_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/sources_1/bd/system/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/constrs_1/imports/lab1/Nexys-4-DDR-Master.xdc
set_property used_in_implementation false [get_files C:/xup/embedded/2018_2_microblz/lab5/lab5.srcs/constrs_1/imports/lab1/Nexys-4-DDR-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top system_wrapper -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
