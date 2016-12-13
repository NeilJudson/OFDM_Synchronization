// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Dec 09 13:54:09 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_multiplier_18_18_ip/complex_multiplier_18_18_ip_stub.v
// Design      : complex_multiplier_18_18_ip
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cmpy_v6_0,Vivado 2015.2.1" *)
module complex_multiplier_18_18_ip(aclk, s_axis_a_tvalid, s_axis_a_tdata, s_axis_b_tvalid, s_axis_b_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tdata[47:0],s_axis_b_tvalid,s_axis_b_tdata[47:0],m_axis_dout_tvalid,m_axis_dout_tdata[79:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  input [47:0]s_axis_a_tdata;
  input s_axis_b_tvalid;
  input [47:0]s_axis_b_tdata;
  output m_axis_dout_tvalid;
  output [79:0]m_axis_dout_tdata;
endmodule
