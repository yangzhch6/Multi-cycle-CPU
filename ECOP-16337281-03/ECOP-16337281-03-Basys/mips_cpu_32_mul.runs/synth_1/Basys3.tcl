# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.cache/wt [current_project]
set_property parent.project_path C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/led_7.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/SignExtend.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/RegFile.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/PCJump.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/PC.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Mux_4_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Mux_3_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Mux_2_1.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/MoveL.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/IR.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/InsMem.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/DataMem.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/DataDelay.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/CtrlUnit.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/ALU.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Add.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Button.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/CLK_div.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Display_out.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Top.v
  C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/sources_1/new/Basys3.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/constrs_1/new/Basys3.xdc
set_property used_in_implementation false [get_files C:/Users/DELL/Desktop/ECOP-16337281-03-Basys/mips_cpu_32_mul.srcs/constrs_1/new/Basys3.xdc]


synth_design -top Basys3 -part xc7a35tcpg236-1


write_checkpoint -force -noxdef Basys3.dcp

catch { report_utilization -file Basys3_utilization_synth.rpt -pb Basys3_utilization_synth.pb }
