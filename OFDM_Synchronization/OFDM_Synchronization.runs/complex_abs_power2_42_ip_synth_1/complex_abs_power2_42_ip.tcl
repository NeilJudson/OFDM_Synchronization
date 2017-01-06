# 
# Synthesis run script generated by Vivado
# 

set_param simulator.modelsimInstallPath D:/modeltech64_10.4/win64
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z045fbg676-3

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.cache/wt [current_project]
set_property parent.project_path E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {{e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/User Repository}} [current_project]
read_ip e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip.xci
set_property is_locked true [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip.xci]

synth_design -top complex_abs_power2_42_ip -part xc7z045fbg676-3 -mode out_of_context
rename_ref -prefix_all complex_abs_power2_42_ip_
write_checkpoint -noxdef complex_abs_power2_42_ip.dcp
catch { report_utilization -file complex_abs_power2_42_ip_utilization_synth.rpt -pb complex_abs_power2_42_ip_utilization_synth.pb }
if { [catch {
  file copy -force E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/complex_abs_power2_42_ip_synth_1/complex_abs_power2_42_ip.dcp e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_42_ip/complex_abs_power2_42_ip_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
