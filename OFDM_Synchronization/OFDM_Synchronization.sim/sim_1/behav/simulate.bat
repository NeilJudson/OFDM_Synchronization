@echo off
set xv_path=D:\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_ofdm_syn_behav -key {Behavioral:sim_1:Functional:test_ofdm_syn} -tclbatch test_ofdm_syn.tcl -view E:/jiaweiwei/Project/OFDM_Synchronization/test_coarse_sync_behav.wcfg -view E:/jiaweiwei/Project/OFDM_Synchronization/test_lambda_behav.wcfg -view E:/jiaweiwei/Project/OFDM_Synchronization/test_peak_search_behav.wcfg -view E:/jiaweiwei/Project/OFDM_Synchronization/test_coarse_sync_fine_sync_behav.wcfg -view E:/jiaweiwei/Project/OFDM_Synchronization/test_ofdm_syn_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
