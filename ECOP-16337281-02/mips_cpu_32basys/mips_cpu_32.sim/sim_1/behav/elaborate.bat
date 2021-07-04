@echo off
set xv_path=D:\\vivado\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 3d1b48344e6747c09c5ef7cae0fea4ba -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot Top_sim_behav xil_defaultlib.Top_sim xil_defaultlib.glbl -log elaborate.log -cc clang
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
