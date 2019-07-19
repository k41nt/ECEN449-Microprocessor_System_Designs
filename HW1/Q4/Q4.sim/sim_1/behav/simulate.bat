@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim occur_counter_tb3_behav -key {Behavioral:sim_1:Functional:occur_counter_tb3} -tclbatch occur_counter_tb3.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
