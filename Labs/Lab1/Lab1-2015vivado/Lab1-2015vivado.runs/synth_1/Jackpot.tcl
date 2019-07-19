# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/School/Spring 2018/ECEN 449/Labs/Lab1-2015vivado/Lab1-2015vivado.cache/wt} [current_project]
set_property parent.project_path {C:/School/Spring 2018/ECEN 449/Labs/Lab1-2015vivado/Lab1-2015vivado.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {{C:/School/Spring 2018/ECEN 449/Labs/Lab1/Jackpot.v}}
read_xdc {{C:/School/Spring 2018/ECEN 449/Labs/Lab1/Jackpot.xdc}}
set_property used_in_implementation false [get_files {{C:/School/Spring 2018/ECEN 449/Labs/Lab1/Jackpot.xdc}}]

synth_design -top Jackpot -part xc7z010clg400-1
write_checkpoint -noxdef Jackpot.dcp
catch { report_utilization -file Jackpot_utilization_synth.rpt -pb Jackpot_utilization_synth.pb }