proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param simulator.modelsimInstallPath D:/modeltech64_10.4/win64
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.cache/wt [current_project]
  set_property parent.project_path E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.xpr [current_project]
  set_property ip_repo_paths e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.cache/ip [current_project]
  set_property ip_output_repo e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.cache/ip [current_project]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/synth_1/coarse_sync.dcp
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_72_64_ip_synth_1/spram_72_64_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_72_64_ip_synth_1/spram_72_64_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_36_64_ip_synth_1/spram_36_64_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_36_64_ip_synth_1/spram_36_64_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/complex_multiplier_18_18_ip_synth_1/complex_multiplier_18_18_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/complex_multiplier_18_18_ip_synth_1/complex_multiplier_18_18_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/multiplier_42_42_ip_synth_1/multiplier_42_42_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/multiplier_42_42_ip_synth_1/multiplier_42_42_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/dsp48_mul_ip_synth_1/dsp48_mul_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/dsp48_mul_ip_synth_1/dsp48_mul_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/dsp48_mul_add_ip_synth_1/dsp48_mul_add_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/dsp48_mul_add_ip_synth_1/dsp48_mul_add_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_144_32_ip_synth_1/spram_144_32_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_144_32_ip_synth_1/spram_144_32_ip.dcp]
  add_files -quiet E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_144_512_ip_synth_1/spram_144_512_ip.dcp
  set_property netlist_only true [get_files E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.runs/spram_144_512_ip_synth_1/spram_144_512_ip.dcp]
  read_xdc -mode out_of_context -ref spram_72_64_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_72_64_ip/spram_72_64_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_72_64_ip/spram_72_64_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref spram_36_64_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_36_64_ip/spram_36_64_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_36_64_ip/spram_36_64_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref complex_multiplier_18_18_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_multiplier_18_18_ip/complex_multiplier_18_18_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_multiplier_18_18_ip/complex_multiplier_18_18_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref multiplier_42_42_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_42_42_ip/multiplier_42_42_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_42_42_ip/multiplier_42_42_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref dsp48_mul_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref dsp48_mul_add_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref spram_144_32_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_144_32_ip/spram_144_32_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_144_32_ip/spram_144_32_ip_ooc.xdc]
  read_xdc -mode out_of_context -ref spram_144_512_ip -cells U0 e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_144_512_ip/spram_144_512_ip_ooc.xdc
  set_property processing_order EARLY [get_files e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_144_512_ip/spram_144_512_ip_ooc.xdc]
  link_design -top coarse_sync -part xc7z045fbg676-3
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force coarse_sync_opt.dcp
  catch {report_drc -file coarse_sync_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file coarse_sync.hwdef}
  place_design 
  write_checkpoint -force coarse_sync_placed.dcp
  catch { report_io -file coarse_sync_io_placed.rpt }
  catch { report_utilization -file coarse_sync_utilization_placed.rpt -pb coarse_sync_utilization_placed.pb }
  catch { report_control_sets -verbose -file coarse_sync_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force coarse_sync_routed.dcp
  catch { report_drc -file coarse_sync_drc_routed.rpt -pb coarse_sync_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file coarse_sync_timing_summary_routed.rpt -rpx coarse_sync_timing_summary_routed.rpx }
  catch { report_power -file coarse_sync_power_routed.rpt -pb coarse_sync_power_summary_routed.pb }
  catch { report_route_status -file coarse_sync_route_status.rpt -pb coarse_sync_route_status.pb }
  catch { report_clock_utilization -file coarse_sync_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

