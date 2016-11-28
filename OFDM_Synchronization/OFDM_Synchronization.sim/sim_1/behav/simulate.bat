@echo off
set xv_path=D:\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_complex_abs_power2_42_behav -key {Behavioral:sim_1:Functional:test_complex_abs_power2_42} -tclbatch test_complex_abs_power2_42.tcl -view E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sim_1/operator/test_psi_phi_operator_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
