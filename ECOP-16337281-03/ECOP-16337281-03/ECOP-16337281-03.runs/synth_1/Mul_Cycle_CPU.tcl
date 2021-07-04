# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {USF-XSim-62}  -string {{ERROR: [USF-XSim-62] 'elaborate' step failed with error(s). Please check the Tcl console output or 'C:/Users/DELL/ECOP-16337281-03/ECOP-16337281-03.sim/sim_1/behav/elaborate.log' file for more information.}}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.cache/wt [current_project]
set_property parent.project_path C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/ALU.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/MoveL.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/IR.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/InsMem.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/DataMem.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/DataDelay.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/CtrlUnit.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/ADD.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/Mux_2_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/Mux_3_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/Mux_4_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/PC.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/PCJump.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/RegFile.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/SignExtend.v
  C:/Users/DELL/Desktop/ECOP-16337281-03/ECOP-16337281-03.srcs/sources_1/new/Mul_Cycle_CPU.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top Mul_Cycle_CPU -part xc7a35tcpg236-1


write_checkpoint -force -noxdef Mul_Cycle_CPU.dcp

catch { report_utilization -file Mul_Cycle_CPU_utilization_synth.rpt -pb Mul_Cycle_CPU_utilization_synth.pb }