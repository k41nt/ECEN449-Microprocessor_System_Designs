# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/School/Spring 2018/ECEN 449/Labs/Lab1_vivado2016/Lab1_vivado2016.cache/wt} [current_project]
set_property parent.project_path {C:/School/Spring 2018/ECEN 449/Labs/Lab1_vivado2016/Lab1_vivado2016.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {c:/School/Spring 2018/ECEN 449/Labs/Lab1_vivado2016/Lab1_vivado2016.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {{C:/School/Spring 2018/ECEN 449/Labs/Jackpot.v}}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/School/Spring 2018/ECEN 449/Labs/Jackpot.xdc}}
set_property used_in_implementation false [get_files {{C:/School/Spring 2018/ECEN 449/Labs/Jackpot.xdc}}]


synth_design -top Jackpot -part xc7z010clg400-1


write_checkpoint -force -noxdef Jackpot.dcp

catch { report_utilization -file Jackpot_utilization_synth.rpt -pb Jackpot_utilization_synth.pb }
