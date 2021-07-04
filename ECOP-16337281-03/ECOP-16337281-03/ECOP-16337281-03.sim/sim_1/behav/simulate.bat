@echo off
set xv_path=E:\\vivado\\Vivado\\2016.3\\bin
call %xv_path%/xsim test_CPU_behav -key {Behavioral:sim_1:Functional:test_CPU} -tclbatch test_CPU.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
