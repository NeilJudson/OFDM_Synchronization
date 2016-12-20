@echo off
set xv_path=D:\\jiaweiwei\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_coarse_sync_behav -key {Behavioral:sim_1:Functional:test_coarse_sync} -tclbatch test_coarse_sync.tcl -view F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/test_coarse_sync_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
