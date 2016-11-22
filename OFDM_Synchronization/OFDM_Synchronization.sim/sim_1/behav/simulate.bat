@echo off
set xv_path=D:\\Xilinx\\15.2\\Vivado\\2015.2\\bin
call %xv_path%/xsim test_psi_operator_behav -key {Behavioral:sim_1:Functional:test_psi_operator} -tclbatch test_psi_operator.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
