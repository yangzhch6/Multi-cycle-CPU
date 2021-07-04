@echo off
set xv_path=E:\\vivado\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 99e6457fc1034ddab791dc45c3a810e5 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_CPU_behav xil_defaultlib.test_CPU xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
