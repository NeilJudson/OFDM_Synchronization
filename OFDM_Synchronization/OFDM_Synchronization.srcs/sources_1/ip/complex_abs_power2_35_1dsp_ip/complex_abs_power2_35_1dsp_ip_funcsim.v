// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Thu Jan 12 14:40:50 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_35_1dsp_ip/complex_abs_power2_35_1dsp_ip_funcsim.v
// Design      : complex_abs_power2_35_1dsp_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "complex_abs_power2_35_1dsp_ip,complex_abs_power2_35_1dsp,{}" *) (* CORE_GENERATION_INFO = "complex_abs_power2_35_1dsp_ip,complex_abs_power2_35_1dsp,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=complex_abs_power2_35_1dsp,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "complex_abs_power2_35_1dsp,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module complex_abs_power2_35_1dsp_ip
   (i_clk,
    i_rst,
    i_en,
    i_r,
    i_i,
    o_p_en,
    o_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) input i_rst;
  input i_en;
  input [34:0]i_r;
  input [34:0]i_i;
  output o_p_en;
  output [69:0]o_p;

  wire i_clk;
  wire i_en;
  wire [34:0]i_i;
  wire [34:0]i_r;
  wire i_rst;
  wire [69:0]o_p;
  wire o_p_en;

  complex_abs_power2_35_1dsp_ip_complex_abs_power2_35_1dsp inst
       (.i_clk(i_clk),
        .i_en(i_en),
        .i_i(i_i),
        .i_r(i_r),
        .i_rst(i_rst),
        .o_p(o_p),
        .o_p_en(o_p_en));
endmodule

(* ORIG_REF_NAME = "complex_abs_power2_35_1dsp" *) 
module complex_abs_power2_35_1dsp_ip_complex_abs_power2_35_1dsp
   (o_p_en,
    o_p,
    i_clk,
    i_rst,
    i_en,
    i_r,
    i_i);
  output o_p_en;
  output [69:0]o_p;
  input i_clk;
  input i_rst;
  input i_en;
  input [34:0]i_r;
  input [34:0]i_i;

  wire [17:0]data0;
  wire [17:0]data2;
  wire \i_buf_reg_n_0_[0] ;
  wire \i_buf_reg_n_0_[10] ;
  wire \i_buf_reg_n_0_[11] ;
  wire \i_buf_reg_n_0_[12] ;
  wire \i_buf_reg_n_0_[13] ;
  wire \i_buf_reg_n_0_[14] ;
  wire \i_buf_reg_n_0_[15] ;
  wire \i_buf_reg_n_0_[16] ;
  wire \i_buf_reg_n_0_[1] ;
  wire \i_buf_reg_n_0_[2] ;
  wire \i_buf_reg_n_0_[3] ;
  wire \i_buf_reg_n_0_[4] ;
  wire \i_buf_reg_n_0_[5] ;
  wire \i_buf_reg_n_0_[6] ;
  wire \i_buf_reg_n_0_[7] ;
  wire \i_buf_reg_n_0_[8] ;
  wire \i_buf_reg_n_0_[9] ;
  wire i_clk;
  wire i_en;
  wire [34:0]i_i;
  wire [34:0]i_r;
  wire i_rst;
  wire [69:0]in;
  wire [69:0]o_p;
  wire o_p_en;
  wire [11:1]p_0_in;
  wire \p_acc[11]_i_2_n_0 ;
  wire \p_acc[11]_i_3_n_0 ;
  wire \p_acc[11]_i_4_n_0 ;
  wire \p_acc[11]_i_5_n_0 ;
  wire \p_acc[15]_i_2_n_0 ;
  wire \p_acc[15]_i_3_n_0 ;
  wire \p_acc[15]_i_4_n_0 ;
  wire \p_acc[15]_i_5_n_0 ;
  wire \p_acc[19]_i_2_n_0 ;
  wire \p_acc[19]_i_3_n_0 ;
  wire \p_acc[19]_i_4_n_0 ;
  wire \p_acc[19]_i_5_n_0 ;
  wire \p_acc[23]_i_2_n_0 ;
  wire \p_acc[23]_i_3_n_0 ;
  wire \p_acc[23]_i_4_n_0 ;
  wire \p_acc[23]_i_5_n_0 ;
  wire \p_acc[27]_i_2_n_0 ;
  wire \p_acc[27]_i_3_n_0 ;
  wire \p_acc[27]_i_4_n_0 ;
  wire \p_acc[27]_i_5_n_0 ;
  wire \p_acc[31]_i_2_n_0 ;
  wire \p_acc[31]_i_3_n_0 ;
  wire \p_acc[31]_i_4_n_0 ;
  wire \p_acc[31]_i_5_n_0 ;
  wire \p_acc[35]_i_2_n_0 ;
  wire \p_acc[35]_i_3_n_0 ;
  wire \p_acc[35]_i_4_n_0 ;
  wire \p_acc[35]_i_5_n_0 ;
  wire \p_acc[39]_i_2_n_0 ;
  wire \p_acc[39]_i_3_n_0 ;
  wire \p_acc[39]_i_4_n_0 ;
  wire \p_acc[39]_i_5_n_0 ;
  wire \p_acc[3]_i_2_n_0 ;
  wire \p_acc[3]_i_3_n_0 ;
  wire \p_acc[3]_i_4_n_0 ;
  wire \p_acc[3]_i_5_n_0 ;
  wire \p_acc[43]_i_2_n_0 ;
  wire \p_acc[43]_i_3_n_0 ;
  wire \p_acc[43]_i_4_n_0 ;
  wire \p_acc[43]_i_5_n_0 ;
  wire \p_acc[47]_i_2_n_0 ;
  wire \p_acc[47]_i_3_n_0 ;
  wire \p_acc[47]_i_4_n_0 ;
  wire \p_acc[47]_i_5_n_0 ;
  wire \p_acc[51]_i_2_n_0 ;
  wire \p_acc[51]_i_3_n_0 ;
  wire \p_acc[51]_i_4_n_0 ;
  wire \p_acc[51]_i_5_n_0 ;
  wire \p_acc[55]_i_2_n_0 ;
  wire \p_acc[55]_i_3_n_0 ;
  wire \p_acc[55]_i_4_n_0 ;
  wire \p_acc[55]_i_5_n_0 ;
  wire \p_acc[59]_i_2_n_0 ;
  wire \p_acc[59]_i_3_n_0 ;
  wire \p_acc[59]_i_4_n_0 ;
  wire \p_acc[59]_i_5_n_0 ;
  wire \p_acc[63]_i_2_n_0 ;
  wire \p_acc[63]_i_3_n_0 ;
  wire \p_acc[63]_i_4_n_0 ;
  wire \p_acc[63]_i_5_n_0 ;
  wire \p_acc[67]_i_2_n_0 ;
  wire \p_acc[67]_i_3_n_0 ;
  wire \p_acc[67]_i_4_n_0 ;
  wire \p_acc[67]_i_5_n_0 ;
  wire \p_acc[69]_i_2_n_0 ;
  wire \p_acc[69]_i_3_n_0 ;
  wire \p_acc[7]_i_2_n_0 ;
  wire \p_acc[7]_i_3_n_0 ;
  wire \p_acc[7]_i_4_n_0 ;
  wire \p_acc[7]_i_5_n_0 ;
  wire \p_acc_reg[11]_i_1_n_0 ;
  wire \p_acc_reg[11]_i_1_n_1 ;
  wire \p_acc_reg[11]_i_1_n_2 ;
  wire \p_acc_reg[11]_i_1_n_3 ;
  wire \p_acc_reg[11]_i_1_n_4 ;
  wire \p_acc_reg[11]_i_1_n_5 ;
  wire \p_acc_reg[11]_i_1_n_6 ;
  wire \p_acc_reg[11]_i_1_n_7 ;
  wire \p_acc_reg[15]_i_1_n_0 ;
  wire \p_acc_reg[15]_i_1_n_1 ;
  wire \p_acc_reg[15]_i_1_n_2 ;
  wire \p_acc_reg[15]_i_1_n_3 ;
  wire \p_acc_reg[15]_i_1_n_4 ;
  wire \p_acc_reg[15]_i_1_n_5 ;
  wire \p_acc_reg[15]_i_1_n_6 ;
  wire \p_acc_reg[15]_i_1_n_7 ;
  wire \p_acc_reg[19]_i_1_n_0 ;
  wire \p_acc_reg[19]_i_1_n_1 ;
  wire \p_acc_reg[19]_i_1_n_2 ;
  wire \p_acc_reg[19]_i_1_n_3 ;
  wire \p_acc_reg[19]_i_1_n_4 ;
  wire \p_acc_reg[19]_i_1_n_5 ;
  wire \p_acc_reg[19]_i_1_n_6 ;
  wire \p_acc_reg[19]_i_1_n_7 ;
  wire \p_acc_reg[23]_i_1_n_0 ;
  wire \p_acc_reg[23]_i_1_n_1 ;
  wire \p_acc_reg[23]_i_1_n_2 ;
  wire \p_acc_reg[23]_i_1_n_3 ;
  wire \p_acc_reg[23]_i_1_n_4 ;
  wire \p_acc_reg[23]_i_1_n_5 ;
  wire \p_acc_reg[23]_i_1_n_6 ;
  wire \p_acc_reg[23]_i_1_n_7 ;
  wire \p_acc_reg[27]_i_1_n_0 ;
  wire \p_acc_reg[27]_i_1_n_1 ;
  wire \p_acc_reg[27]_i_1_n_2 ;
  wire \p_acc_reg[27]_i_1_n_3 ;
  wire \p_acc_reg[27]_i_1_n_4 ;
  wire \p_acc_reg[27]_i_1_n_5 ;
  wire \p_acc_reg[27]_i_1_n_6 ;
  wire \p_acc_reg[27]_i_1_n_7 ;
  wire \p_acc_reg[31]_i_1_n_0 ;
  wire \p_acc_reg[31]_i_1_n_1 ;
  wire \p_acc_reg[31]_i_1_n_2 ;
  wire \p_acc_reg[31]_i_1_n_3 ;
  wire \p_acc_reg[31]_i_1_n_4 ;
  wire \p_acc_reg[31]_i_1_n_5 ;
  wire \p_acc_reg[31]_i_1_n_6 ;
  wire \p_acc_reg[31]_i_1_n_7 ;
  wire \p_acc_reg[35]_i_1_n_0 ;
  wire \p_acc_reg[35]_i_1_n_1 ;
  wire \p_acc_reg[35]_i_1_n_2 ;
  wire \p_acc_reg[35]_i_1_n_3 ;
  wire \p_acc_reg[35]_i_1_n_4 ;
  wire \p_acc_reg[35]_i_1_n_5 ;
  wire \p_acc_reg[35]_i_1_n_6 ;
  wire \p_acc_reg[35]_i_1_n_7 ;
  wire \p_acc_reg[39]_i_1_n_0 ;
  wire \p_acc_reg[39]_i_1_n_1 ;
  wire \p_acc_reg[39]_i_1_n_2 ;
  wire \p_acc_reg[39]_i_1_n_3 ;
  wire \p_acc_reg[39]_i_1_n_4 ;
  wire \p_acc_reg[39]_i_1_n_5 ;
  wire \p_acc_reg[39]_i_1_n_6 ;
  wire \p_acc_reg[39]_i_1_n_7 ;
  wire \p_acc_reg[3]_i_1_n_0 ;
  wire \p_acc_reg[3]_i_1_n_1 ;
  wire \p_acc_reg[3]_i_1_n_2 ;
  wire \p_acc_reg[3]_i_1_n_3 ;
  wire \p_acc_reg[3]_i_1_n_4 ;
  wire \p_acc_reg[3]_i_1_n_5 ;
  wire \p_acc_reg[3]_i_1_n_6 ;
  wire \p_acc_reg[3]_i_1_n_7 ;
  wire \p_acc_reg[43]_i_1_n_0 ;
  wire \p_acc_reg[43]_i_1_n_1 ;
  wire \p_acc_reg[43]_i_1_n_2 ;
  wire \p_acc_reg[43]_i_1_n_3 ;
  wire \p_acc_reg[43]_i_1_n_4 ;
  wire \p_acc_reg[43]_i_1_n_5 ;
  wire \p_acc_reg[43]_i_1_n_6 ;
  wire \p_acc_reg[43]_i_1_n_7 ;
  wire \p_acc_reg[47]_i_1_n_0 ;
  wire \p_acc_reg[47]_i_1_n_1 ;
  wire \p_acc_reg[47]_i_1_n_2 ;
  wire \p_acc_reg[47]_i_1_n_3 ;
  wire \p_acc_reg[47]_i_1_n_4 ;
  wire \p_acc_reg[47]_i_1_n_5 ;
  wire \p_acc_reg[47]_i_1_n_6 ;
  wire \p_acc_reg[47]_i_1_n_7 ;
  wire \p_acc_reg[51]_i_1_n_0 ;
  wire \p_acc_reg[51]_i_1_n_1 ;
  wire \p_acc_reg[51]_i_1_n_2 ;
  wire \p_acc_reg[51]_i_1_n_3 ;
  wire \p_acc_reg[51]_i_1_n_4 ;
  wire \p_acc_reg[51]_i_1_n_5 ;
  wire \p_acc_reg[51]_i_1_n_6 ;
  wire \p_acc_reg[51]_i_1_n_7 ;
  wire \p_acc_reg[55]_i_1_n_0 ;
  wire \p_acc_reg[55]_i_1_n_1 ;
  wire \p_acc_reg[55]_i_1_n_2 ;
  wire \p_acc_reg[55]_i_1_n_3 ;
  wire \p_acc_reg[55]_i_1_n_4 ;
  wire \p_acc_reg[55]_i_1_n_5 ;
  wire \p_acc_reg[55]_i_1_n_6 ;
  wire \p_acc_reg[55]_i_1_n_7 ;
  wire \p_acc_reg[59]_i_1_n_0 ;
  wire \p_acc_reg[59]_i_1_n_1 ;
  wire \p_acc_reg[59]_i_1_n_2 ;
  wire \p_acc_reg[59]_i_1_n_3 ;
  wire \p_acc_reg[59]_i_1_n_4 ;
  wire \p_acc_reg[59]_i_1_n_5 ;
  wire \p_acc_reg[59]_i_1_n_6 ;
  wire \p_acc_reg[59]_i_1_n_7 ;
  wire \p_acc_reg[63]_i_1_n_0 ;
  wire \p_acc_reg[63]_i_1_n_1 ;
  wire \p_acc_reg[63]_i_1_n_2 ;
  wire \p_acc_reg[63]_i_1_n_3 ;
  wire \p_acc_reg[63]_i_1_n_4 ;
  wire \p_acc_reg[63]_i_1_n_5 ;
  wire \p_acc_reg[63]_i_1_n_6 ;
  wire \p_acc_reg[63]_i_1_n_7 ;
  wire \p_acc_reg[67]_i_1_n_0 ;
  wire \p_acc_reg[67]_i_1_n_1 ;
  wire \p_acc_reg[67]_i_1_n_2 ;
  wire \p_acc_reg[67]_i_1_n_3 ;
  wire \p_acc_reg[67]_i_1_n_4 ;
  wire \p_acc_reg[67]_i_1_n_5 ;
  wire \p_acc_reg[67]_i_1_n_6 ;
  wire \p_acc_reg[67]_i_1_n_7 ;
  wire \p_acc_reg[69]_i_1_n_3 ;
  wire \p_acc_reg[69]_i_1_n_6 ;
  wire \p_acc_reg[69]_i_1_n_7 ;
  wire \p_acc_reg[7]_i_1_n_0 ;
  wire \p_acc_reg[7]_i_1_n_1 ;
  wire \p_acc_reg[7]_i_1_n_2 ;
  wire \p_acc_reg[7]_i_1_n_3 ;
  wire \p_acc_reg[7]_i_1_n_4 ;
  wire \p_acc_reg[7]_i_1_n_5 ;
  wire \p_acc_reg[7]_i_1_n_6 ;
  wire \p_acc_reg[7]_i_1_n_7 ;
  wire \r_buf_reg_n_0_[0] ;
  wire \r_buf_reg_n_0_[10] ;
  wire \r_buf_reg_n_0_[11] ;
  wire \r_buf_reg_n_0_[12] ;
  wire \r_buf_reg_n_0_[13] ;
  wire \r_buf_reg_n_0_[14] ;
  wire \r_buf_reg_n_0_[15] ;
  wire \r_buf_reg_n_0_[16] ;
  wire \r_buf_reg_n_0_[1] ;
  wire \r_buf_reg_n_0_[2] ;
  wire \r_buf_reg_n_0_[3] ;
  wire \r_buf_reg_n_0_[4] ;
  wire \r_buf_reg_n_0_[5] ;
  wire \r_buf_reg_n_0_[6] ;
  wire \r_buf_reg_n_0_[7] ;
  wire \r_buf_reg_n_0_[8] ;
  wire \r_buf_reg_n_0_[9] ;
  wire [17:0]u_a;
  wire \u_a[0]_i_2_n_0 ;
  wire \u_a[10]_i_2_n_0 ;
  wire \u_a[11]_i_2_n_0 ;
  wire \u_a[12]_i_2_n_0 ;
  wire \u_a[13]_i_2_n_0 ;
  wire \u_a[14]_i_2_n_0 ;
  wire \u_a[15]_i_2_n_0 ;
  wire \u_a[16]_i_2_n_0 ;
  wire \u_a[16]_i_3_n_0 ;
  wire \u_a[17]_i_2_n_0 ;
  wire \u_a[17]_i_3_n_0 ;
  wire \u_a[17]_i_4_n_0 ;
  wire \u_a[17]_i_5_n_0 ;
  wire \u_a[1]_i_2_n_0 ;
  wire \u_a[2]_i_2_n_0 ;
  wire \u_a[3]_i_2_n_0 ;
  wire \u_a[4]_i_2_n_0 ;
  wire \u_a[5]_i_2_n_0 ;
  wire \u_a[6]_i_2_n_0 ;
  wire \u_a[7]_i_2_n_0 ;
  wire \u_a[8]_i_2_n_0 ;
  wire \u_a[9]_i_2_n_0 ;
  wire \u_a_reg_n_0_[0] ;
  wire \u_a_reg_n_0_[10] ;
  wire \u_a_reg_n_0_[11] ;
  wire \u_a_reg_n_0_[12] ;
  wire \u_a_reg_n_0_[13] ;
  wire \u_a_reg_n_0_[14] ;
  wire \u_a_reg_n_0_[15] ;
  wire \u_a_reg_n_0_[16] ;
  wire \u_a_reg_n_0_[17] ;
  wire \u_a_reg_n_0_[1] ;
  wire \u_a_reg_n_0_[2] ;
  wire \u_a_reg_n_0_[3] ;
  wire \u_a_reg_n_0_[4] ;
  wire \u_a_reg_n_0_[5] ;
  wire \u_a_reg_n_0_[6] ;
  wire \u_a_reg_n_0_[7] ;
  wire \u_a_reg_n_0_[8] ;
  wire \u_a_reg_n_0_[9] ;
  wire [17:0]u_b;
  wire \u_b[0]_i_2_n_0 ;
  wire \u_b[10]_i_2_n_0 ;
  wire \u_b[11]_i_2_n_0 ;
  wire \u_b[12]_i_2_n_0 ;
  wire \u_b[13]_i_2_n_0 ;
  wire \u_b[14]_i_2_n_0 ;
  wire \u_b[15]_i_2_n_0 ;
  wire \u_b[16]_i_2_n_0 ;
  wire \u_b[16]_i_3_n_0 ;
  wire \u_b[1]_i_2_n_0 ;
  wire \u_b[2]_i_2_n_0 ;
  wire \u_b[3]_i_2_n_0 ;
  wire \u_b[4]_i_2_n_0 ;
  wire \u_b[5]_i_2_n_0 ;
  wire \u_b[6]_i_2_n_0 ;
  wire \u_b[7]_i_2_n_0 ;
  wire \u_b[8]_i_2_n_0 ;
  wire \u_b[9]_i_2_n_0 ;
  wire \u_b_reg_n_0_[0] ;
  wire \u_b_reg_n_0_[10] ;
  wire \u_b_reg_n_0_[11] ;
  wire \u_b_reg_n_0_[12] ;
  wire \u_b_reg_n_0_[13] ;
  wire \u_b_reg_n_0_[14] ;
  wire \u_b_reg_n_0_[15] ;
  wire \u_b_reg_n_0_[16] ;
  wire \u_b_reg_n_0_[17] ;
  wire \u_b_reg_n_0_[1] ;
  wire \u_b_reg_n_0_[2] ;
  wire \u_b_reg_n_0_[3] ;
  wire \u_b_reg_n_0_[4] ;
  wire \u_b_reg_n_0_[5] ;
  wire \u_b_reg_n_0_[6] ;
  wire \u_b_reg_n_0_[7] ;
  wire \u_b_reg_n_0_[8] ;
  wire \u_b_reg_n_0_[9] ;
  wire [47:0]u_c;
  wire \u_c[47]_i_2_n_0 ;
  wire \u_c_reg_n_0_[0] ;
  wire \u_c_reg_n_0_[10] ;
  wire \u_c_reg_n_0_[11] ;
  wire \u_c_reg_n_0_[12] ;
  wire \u_c_reg_n_0_[13] ;
  wire \u_c_reg_n_0_[14] ;
  wire \u_c_reg_n_0_[15] ;
  wire \u_c_reg_n_0_[16] ;
  wire \u_c_reg_n_0_[17] ;
  wire \u_c_reg_n_0_[18] ;
  wire \u_c_reg_n_0_[19] ;
  wire \u_c_reg_n_0_[1] ;
  wire \u_c_reg_n_0_[20] ;
  wire \u_c_reg_n_0_[21] ;
  wire \u_c_reg_n_0_[22] ;
  wire \u_c_reg_n_0_[23] ;
  wire \u_c_reg_n_0_[24] ;
  wire \u_c_reg_n_0_[25] ;
  wire \u_c_reg_n_0_[26] ;
  wire \u_c_reg_n_0_[27] ;
  wire \u_c_reg_n_0_[28] ;
  wire \u_c_reg_n_0_[29] ;
  wire \u_c_reg_n_0_[2] ;
  wire \u_c_reg_n_0_[30] ;
  wire \u_c_reg_n_0_[31] ;
  wire \u_c_reg_n_0_[32] ;
  wire \u_c_reg_n_0_[33] ;
  wire \u_c_reg_n_0_[34] ;
  wire \u_c_reg_n_0_[35] ;
  wire \u_c_reg_n_0_[36] ;
  wire \u_c_reg_n_0_[37] ;
  wire \u_c_reg_n_0_[38] ;
  wire \u_c_reg_n_0_[39] ;
  wire \u_c_reg_n_0_[3] ;
  wire \u_c_reg_n_0_[40] ;
  wire \u_c_reg_n_0_[41] ;
  wire \u_c_reg_n_0_[42] ;
  wire \u_c_reg_n_0_[43] ;
  wire \u_c_reg_n_0_[44] ;
  wire \u_c_reg_n_0_[45] ;
  wire \u_c_reg_n_0_[46] ;
  wire \u_c_reg_n_0_[47] ;
  wire \u_c_reg_n_0_[4] ;
  wire \u_c_reg_n_0_[5] ;
  wire \u_c_reg_n_0_[6] ;
  wire \u_c_reg_n_0_[7] ;
  wire \u_c_reg_n_0_[8] ;
  wire \u_c_reg_n_0_[9] ;
  wire u_dsp48_mul_add_ip_n_100;
  wire u_dsp48_mul_add_ip_n_101;
  wire u_dsp48_mul_add_ip_n_102;
  wire u_dsp48_mul_add_ip_n_103;
  wire u_dsp48_mul_add_ip_n_104;
  wire u_dsp48_mul_add_ip_n_105;
  wire u_dsp48_mul_add_ip_n_106;
  wire u_dsp48_mul_add_ip_n_107;
  wire u_dsp48_mul_add_ip_n_108;
  wire u_dsp48_mul_add_ip_n_109;
  wire u_dsp48_mul_add_ip_n_110;
  wire u_dsp48_mul_add_ip_n_111;
  wire u_dsp48_mul_add_ip_n_112;
  wire u_dsp48_mul_add_ip_n_113;
  wire u_dsp48_mul_add_ip_n_114;
  wire u_dsp48_mul_add_ip_n_115;
  wire u_dsp48_mul_add_ip_n_116;
  wire u_dsp48_mul_add_ip_n_117;
  wire u_dsp48_mul_add_ip_n_48;
  wire u_dsp48_mul_add_ip_n_49;
  wire u_dsp48_mul_add_ip_n_50;
  wire u_dsp48_mul_add_ip_n_51;
  wire u_dsp48_mul_add_ip_n_52;
  wire u_dsp48_mul_add_ip_n_53;
  wire u_dsp48_mul_add_ip_n_54;
  wire u_dsp48_mul_add_ip_n_55;
  wire u_dsp48_mul_add_ip_n_56;
  wire u_dsp48_mul_add_ip_n_57;
  wire u_dsp48_mul_add_ip_n_58;
  wire u_dsp48_mul_add_ip_n_59;
  wire u_dsp48_mul_add_ip_n_60;
  wire u_dsp48_mul_add_ip_n_61;
  wire u_dsp48_mul_add_ip_n_62;
  wire u_dsp48_mul_add_ip_n_63;
  wire u_dsp48_mul_add_ip_n_64;
  wire u_dsp48_mul_add_ip_n_65;
  wire u_dsp48_mul_add_ip_n_66;
  wire u_dsp48_mul_add_ip_n_67;
  wire u_dsp48_mul_add_ip_n_68;
  wire u_dsp48_mul_add_ip_n_69;
  wire u_dsp48_mul_add_ip_n_70;
  wire u_dsp48_mul_add_ip_n_71;
  wire u_dsp48_mul_add_ip_n_72;
  wire u_dsp48_mul_add_ip_n_73;
  wire u_dsp48_mul_add_ip_n_74;
  wire u_dsp48_mul_add_ip_n_75;
  wire u_dsp48_mul_add_ip_n_76;
  wire u_dsp48_mul_add_ip_n_77;
  wire u_dsp48_mul_add_ip_n_78;
  wire u_dsp48_mul_add_ip_n_79;
  wire u_dsp48_mul_add_ip_n_80;
  wire u_dsp48_mul_add_ip_n_81;
  wire u_dsp48_mul_add_ip_n_82;
  wire u_dsp48_mul_add_ip_n_83;
  wire u_dsp48_mul_add_ip_n_84;
  wire u_dsp48_mul_add_ip_n_85;
  wire u_dsp48_mul_add_ip_n_86;
  wire u_dsp48_mul_add_ip_n_87;
  wire u_dsp48_mul_add_ip_n_88;
  wire u_dsp48_mul_add_ip_n_89;
  wire u_dsp48_mul_add_ip_n_90;
  wire u_dsp48_mul_add_ip_n_91;
  wire u_dsp48_mul_add_ip_n_92;
  wire u_dsp48_mul_add_ip_n_93;
  wire u_dsp48_mul_add_ip_n_94;
  wire u_dsp48_mul_add_ip_n_95;
  wire u_dsp48_mul_add_ip_n_96;
  wire u_dsp48_mul_add_ip_n_97;
  wire u_dsp48_mul_add_ip_n_98;
  wire u_dsp48_mul_add_ip_n_99;
  wire [3:1]\NLW_p_acc_reg[69]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_p_acc_reg[69]_i_1_O_UNCONNECTED ;

  FDCE \en_buf_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(i_en),
        .Q(p_0_in[1]));
  FDCE \en_buf_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[10]),
        .Q(p_0_in[11]));
  FDCE \en_buf_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[11]),
        .Q(o_p_en));
  FDCE \en_buf_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[1]),
        .Q(p_0_in[2]));
  FDCE \en_buf_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[2]),
        .Q(p_0_in[3]));
  FDCE \en_buf_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[3]),
        .Q(p_0_in[4]));
  FDCE \en_buf_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[4]),
        .Q(p_0_in[5]));
  FDCE \en_buf_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[5]),
        .Q(p_0_in[6]));
  FDCE \en_buf_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[6]),
        .Q(p_0_in[7]));
  FDCE \en_buf_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[7]),
        .Q(p_0_in[8]));
  FDCE \en_buf_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[8]),
        .Q(p_0_in[9]));
  FDCE \en_buf_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(p_0_in[9]),
        .Q(p_0_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[0]),
        .Q(\i_buf_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[10]),
        .Q(\i_buf_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[11]),
        .Q(\i_buf_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[12]),
        .Q(\i_buf_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[13]),
        .Q(\i_buf_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[14]),
        .Q(\i_buf_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[15]),
        .Q(\i_buf_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[16]),
        .Q(\i_buf_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[17]),
        .Q(data2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[18] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[18]),
        .Q(data2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[19] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[19]),
        .Q(data2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[1]),
        .Q(\i_buf_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[20] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[20]),
        .Q(data2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[21] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[21]),
        .Q(data2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[22] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[22]),
        .Q(data2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[23] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[23]),
        .Q(data2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[24] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[24]),
        .Q(data2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[25] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[25]),
        .Q(data2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[26] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[26]),
        .Q(data2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[27] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[27]),
        .Q(data2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[28] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[28]),
        .Q(data2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[29] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[29]),
        .Q(data2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[2]),
        .Q(\i_buf_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[30] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[30]),
        .Q(data2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[31] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[31]),
        .Q(data2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[32] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[32]),
        .Q(data2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[33] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[33]),
        .Q(data2[16]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[34] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[34]),
        .Q(data2[17]));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[3]),
        .Q(\i_buf_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[4]),
        .Q(\i_buf_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[5]),
        .Q(\i_buf_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[6]),
        .Q(\i_buf_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[7]),
        .Q(\i_buf_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[8]),
        .Q(\i_buf_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_i[9]),
        .Q(\i_buf_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[11]_i_2 
       (.I0(in[11]),
        .I1(p_0_in[9]),
        .I2(o_p[11]),
        .O(\p_acc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[11]_i_3 
       (.I0(in[10]),
        .I1(p_0_in[9]),
        .I2(o_p[10]),
        .O(\p_acc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[11]_i_4 
       (.I0(in[9]),
        .I1(p_0_in[9]),
        .I2(o_p[9]),
        .O(\p_acc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[11]_i_5 
       (.I0(in[8]),
        .I1(p_0_in[9]),
        .I2(o_p[8]),
        .O(\p_acc[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[15]_i_2 
       (.I0(in[15]),
        .I1(p_0_in[9]),
        .I2(o_p[15]),
        .O(\p_acc[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[15]_i_3 
       (.I0(in[14]),
        .I1(p_0_in[9]),
        .I2(o_p[14]),
        .O(\p_acc[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[15]_i_4 
       (.I0(in[13]),
        .I1(p_0_in[9]),
        .I2(o_p[13]),
        .O(\p_acc[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[15]_i_5 
       (.I0(in[12]),
        .I1(p_0_in[9]),
        .I2(o_p[12]),
        .O(\p_acc[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[19]_i_2 
       (.I0(in[19]),
        .I1(p_0_in[9]),
        .I2(o_p[19]),
        .O(\p_acc[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[19]_i_3 
       (.I0(in[18]),
        .I1(p_0_in[9]),
        .I2(o_p[18]),
        .O(\p_acc[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[19]_i_4 
       (.I0(in[17]),
        .I1(p_0_in[9]),
        .I2(o_p[17]),
        .O(\p_acc[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[19]_i_5 
       (.I0(in[16]),
        .I1(p_0_in[9]),
        .I2(o_p[16]),
        .O(\p_acc[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[23]_i_2 
       (.I0(in[23]),
        .I1(p_0_in[9]),
        .I2(o_p[23]),
        .O(\p_acc[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[23]_i_3 
       (.I0(in[22]),
        .I1(p_0_in[9]),
        .I2(o_p[22]),
        .O(\p_acc[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[23]_i_4 
       (.I0(in[21]),
        .I1(p_0_in[9]),
        .I2(o_p[21]),
        .O(\p_acc[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[23]_i_5 
       (.I0(in[20]),
        .I1(p_0_in[9]),
        .I2(o_p[20]),
        .O(\p_acc[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[27]_i_2 
       (.I0(in[27]),
        .I1(p_0_in[9]),
        .I2(o_p[27]),
        .O(\p_acc[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[27]_i_3 
       (.I0(in[26]),
        .I1(p_0_in[9]),
        .I2(o_p[26]),
        .O(\p_acc[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[27]_i_4 
       (.I0(in[25]),
        .I1(p_0_in[9]),
        .I2(o_p[25]),
        .O(\p_acc[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[27]_i_5 
       (.I0(in[24]),
        .I1(p_0_in[9]),
        .I2(o_p[24]),
        .O(\p_acc[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[31]_i_2 
       (.I0(in[31]),
        .I1(p_0_in[9]),
        .I2(o_p[31]),
        .O(\p_acc[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[31]_i_3 
       (.I0(in[30]),
        .I1(p_0_in[9]),
        .I2(o_p[30]),
        .O(\p_acc[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[31]_i_4 
       (.I0(in[29]),
        .I1(p_0_in[9]),
        .I2(o_p[29]),
        .O(\p_acc[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[31]_i_5 
       (.I0(in[28]),
        .I1(p_0_in[9]),
        .I2(o_p[28]),
        .O(\p_acc[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[35]_i_2 
       (.I0(in[35]),
        .I1(p_0_in[9]),
        .I2(o_p[35]),
        .O(\p_acc[35]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[35]_i_3 
       (.I0(in[34]),
        .I1(p_0_in[9]),
        .I2(o_p[34]),
        .O(\p_acc[35]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[35]_i_4 
       (.I0(in[33]),
        .I1(p_0_in[9]),
        .I2(o_p[33]),
        .O(\p_acc[35]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[35]_i_5 
       (.I0(in[32]),
        .I1(p_0_in[9]),
        .I2(o_p[32]),
        .O(\p_acc[35]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[39]_i_2 
       (.I0(in[39]),
        .I1(p_0_in[9]),
        .I2(o_p[39]),
        .O(\p_acc[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[39]_i_3 
       (.I0(in[38]),
        .I1(p_0_in[9]),
        .I2(o_p[38]),
        .O(\p_acc[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[39]_i_4 
       (.I0(in[37]),
        .I1(p_0_in[9]),
        .I2(o_p[37]),
        .O(\p_acc[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[39]_i_5 
       (.I0(in[36]),
        .I1(p_0_in[9]),
        .I2(o_p[36]),
        .O(\p_acc[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[3]_i_2 
       (.I0(in[3]),
        .I1(p_0_in[9]),
        .I2(o_p[3]),
        .O(\p_acc[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[3]_i_3 
       (.I0(in[2]),
        .I1(p_0_in[9]),
        .I2(o_p[2]),
        .O(\p_acc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[3]_i_4 
       (.I0(in[1]),
        .I1(p_0_in[9]),
        .I2(o_p[1]),
        .O(\p_acc[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[3]_i_5 
       (.I0(in[0]),
        .I1(p_0_in[9]),
        .I2(o_p[0]),
        .O(\p_acc[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[43]_i_2 
       (.I0(in[43]),
        .I1(p_0_in[9]),
        .I2(o_p[43]),
        .O(\p_acc[43]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[43]_i_3 
       (.I0(in[42]),
        .I1(p_0_in[9]),
        .I2(o_p[42]),
        .O(\p_acc[43]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[43]_i_4 
       (.I0(in[41]),
        .I1(p_0_in[9]),
        .I2(o_p[41]),
        .O(\p_acc[43]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[43]_i_5 
       (.I0(in[40]),
        .I1(p_0_in[9]),
        .I2(o_p[40]),
        .O(\p_acc[43]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[47]_i_2 
       (.I0(in[47]),
        .I1(p_0_in[9]),
        .I2(o_p[47]),
        .O(\p_acc[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[47]_i_3 
       (.I0(in[46]),
        .I1(p_0_in[9]),
        .I2(o_p[46]),
        .O(\p_acc[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[47]_i_4 
       (.I0(in[45]),
        .I1(p_0_in[9]),
        .I2(o_p[45]),
        .O(\p_acc[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[47]_i_5 
       (.I0(in[44]),
        .I1(p_0_in[9]),
        .I2(o_p[44]),
        .O(\p_acc[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[51]_i_2 
       (.I0(in[51]),
        .I1(p_0_in[9]),
        .I2(o_p[51]),
        .O(\p_acc[51]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[51]_i_3 
       (.I0(in[50]),
        .I1(p_0_in[9]),
        .I2(o_p[50]),
        .O(\p_acc[51]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[51]_i_4 
       (.I0(in[49]),
        .I1(p_0_in[9]),
        .I2(o_p[49]),
        .O(\p_acc[51]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[51]_i_5 
       (.I0(in[48]),
        .I1(p_0_in[9]),
        .I2(o_p[48]),
        .O(\p_acc[51]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[55]_i_2 
       (.I0(in[55]),
        .I1(p_0_in[9]),
        .I2(o_p[55]),
        .O(\p_acc[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[55]_i_3 
       (.I0(in[54]),
        .I1(p_0_in[9]),
        .I2(o_p[54]),
        .O(\p_acc[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[55]_i_4 
       (.I0(in[53]),
        .I1(p_0_in[9]),
        .I2(o_p[53]),
        .O(\p_acc[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[55]_i_5 
       (.I0(in[52]),
        .I1(p_0_in[9]),
        .I2(o_p[52]),
        .O(\p_acc[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[59]_i_2 
       (.I0(in[59]),
        .I1(p_0_in[9]),
        .I2(o_p[59]),
        .O(\p_acc[59]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[59]_i_3 
       (.I0(in[58]),
        .I1(p_0_in[9]),
        .I2(o_p[58]),
        .O(\p_acc[59]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[59]_i_4 
       (.I0(in[57]),
        .I1(p_0_in[9]),
        .I2(o_p[57]),
        .O(\p_acc[59]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[59]_i_5 
       (.I0(in[56]),
        .I1(p_0_in[9]),
        .I2(o_p[56]),
        .O(\p_acc[59]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[63]_i_2 
       (.I0(in[63]),
        .I1(p_0_in[9]),
        .I2(o_p[63]),
        .O(\p_acc[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[63]_i_3 
       (.I0(in[62]),
        .I1(p_0_in[9]),
        .I2(o_p[62]),
        .O(\p_acc[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[63]_i_4 
       (.I0(in[61]),
        .I1(p_0_in[9]),
        .I2(o_p[61]),
        .O(\p_acc[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[63]_i_5 
       (.I0(in[60]),
        .I1(p_0_in[9]),
        .I2(o_p[60]),
        .O(\p_acc[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[67]_i_2 
       (.I0(in[67]),
        .I1(p_0_in[9]),
        .I2(o_p[67]),
        .O(\p_acc[67]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[67]_i_3 
       (.I0(in[66]),
        .I1(p_0_in[9]),
        .I2(o_p[66]),
        .O(\p_acc[67]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[67]_i_4 
       (.I0(in[65]),
        .I1(p_0_in[9]),
        .I2(o_p[65]),
        .O(\p_acc[67]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[67]_i_5 
       (.I0(in[64]),
        .I1(p_0_in[9]),
        .I2(o_p[64]),
        .O(\p_acc[67]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[69]_i_2 
       (.I0(in[69]),
        .I1(p_0_in[9]),
        .I2(o_p[69]),
        .O(\p_acc[69]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[69]_i_3 
       (.I0(in[68]),
        .I1(p_0_in[9]),
        .I2(o_p[68]),
        .O(\p_acc[69]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[7]_i_2 
       (.I0(in[7]),
        .I1(p_0_in[9]),
        .I2(o_p[7]),
        .O(\p_acc[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[7]_i_3 
       (.I0(in[6]),
        .I1(p_0_in[9]),
        .I2(o_p[6]),
        .O(\p_acc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[7]_i_4 
       (.I0(in[5]),
        .I1(p_0_in[9]),
        .I2(o_p[5]),
        .O(\p_acc[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \p_acc[7]_i_5 
       (.I0(in[4]),
        .I1(p_0_in[9]),
        .I2(o_p[4]),
        .O(\p_acc[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[3]_i_1_n_7 ),
        .Q(o_p[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[11]_i_1_n_5 ),
        .Q(o_p[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[11]_i_1_n_4 ),
        .Q(o_p[11]));
  CARRY4 \p_acc_reg[11]_i_1 
       (.CI(\p_acc_reg[7]_i_1_n_0 ),
        .CO({\p_acc_reg[11]_i_1_n_0 ,\p_acc_reg[11]_i_1_n_1 ,\p_acc_reg[11]_i_1_n_2 ,\p_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\p_acc_reg[11]_i_1_n_4 ,\p_acc_reg[11]_i_1_n_5 ,\p_acc_reg[11]_i_1_n_6 ,\p_acc_reg[11]_i_1_n_7 }),
        .S({\p_acc[11]_i_2_n_0 ,\p_acc[11]_i_3_n_0 ,\p_acc[11]_i_4_n_0 ,\p_acc[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[15]_i_1_n_7 ),
        .Q(o_p[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[15]_i_1_n_6 ),
        .Q(o_p[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[15]_i_1_n_5 ),
        .Q(o_p[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[15]_i_1_n_4 ),
        .Q(o_p[15]));
  CARRY4 \p_acc_reg[15]_i_1 
       (.CI(\p_acc_reg[11]_i_1_n_0 ),
        .CO({\p_acc_reg[15]_i_1_n_0 ,\p_acc_reg[15]_i_1_n_1 ,\p_acc_reg[15]_i_1_n_2 ,\p_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\p_acc_reg[15]_i_1_n_4 ,\p_acc_reg[15]_i_1_n_5 ,\p_acc_reg[15]_i_1_n_6 ,\p_acc_reg[15]_i_1_n_7 }),
        .S({\p_acc[15]_i_2_n_0 ,\p_acc[15]_i_3_n_0 ,\p_acc[15]_i_4_n_0 ,\p_acc[15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[19]_i_1_n_7 ),
        .Q(o_p[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[19]_i_1_n_6 ),
        .Q(o_p[17]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[19]_i_1_n_5 ),
        .Q(o_p[18]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[19]_i_1_n_4 ),
        .Q(o_p[19]));
  CARRY4 \p_acc_reg[19]_i_1 
       (.CI(\p_acc_reg[15]_i_1_n_0 ),
        .CO({\p_acc_reg[19]_i_1_n_0 ,\p_acc_reg[19]_i_1_n_1 ,\p_acc_reg[19]_i_1_n_2 ,\p_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\p_acc_reg[19]_i_1_n_4 ,\p_acc_reg[19]_i_1_n_5 ,\p_acc_reg[19]_i_1_n_6 ,\p_acc_reg[19]_i_1_n_7 }),
        .S({\p_acc[19]_i_2_n_0 ,\p_acc[19]_i_3_n_0 ,\p_acc[19]_i_4_n_0 ,\p_acc[19]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[3]_i_1_n_6 ),
        .Q(o_p[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[23]_i_1_n_7 ),
        .Q(o_p[20]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[23]_i_1_n_6 ),
        .Q(o_p[21]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[23]_i_1_n_5 ),
        .Q(o_p[22]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[23]_i_1_n_4 ),
        .Q(o_p[23]));
  CARRY4 \p_acc_reg[23]_i_1 
       (.CI(\p_acc_reg[19]_i_1_n_0 ),
        .CO({\p_acc_reg[23]_i_1_n_0 ,\p_acc_reg[23]_i_1_n_1 ,\p_acc_reg[23]_i_1_n_2 ,\p_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\p_acc_reg[23]_i_1_n_4 ,\p_acc_reg[23]_i_1_n_5 ,\p_acc_reg[23]_i_1_n_6 ,\p_acc_reg[23]_i_1_n_7 }),
        .S({\p_acc[23]_i_2_n_0 ,\p_acc[23]_i_3_n_0 ,\p_acc[23]_i_4_n_0 ,\p_acc[23]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[27]_i_1_n_7 ),
        .Q(o_p[24]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[27]_i_1_n_6 ),
        .Q(o_p[25]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[27]_i_1_n_5 ),
        .Q(o_p[26]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[27]_i_1_n_4 ),
        .Q(o_p[27]));
  CARRY4 \p_acc_reg[27]_i_1 
       (.CI(\p_acc_reg[23]_i_1_n_0 ),
        .CO({\p_acc_reg[27]_i_1_n_0 ,\p_acc_reg[27]_i_1_n_1 ,\p_acc_reg[27]_i_1_n_2 ,\p_acc_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\p_acc_reg[27]_i_1_n_4 ,\p_acc_reg[27]_i_1_n_5 ,\p_acc_reg[27]_i_1_n_6 ,\p_acc_reg[27]_i_1_n_7 }),
        .S({\p_acc[27]_i_2_n_0 ,\p_acc[27]_i_3_n_0 ,\p_acc[27]_i_4_n_0 ,\p_acc[27]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[31]_i_1_n_7 ),
        .Q(o_p[28]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[31]_i_1_n_6 ),
        .Q(o_p[29]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[3]_i_1_n_5 ),
        .Q(o_p[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[31]_i_1_n_5 ),
        .Q(o_p[30]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[31]_i_1_n_4 ),
        .Q(o_p[31]));
  CARRY4 \p_acc_reg[31]_i_1 
       (.CI(\p_acc_reg[27]_i_1_n_0 ),
        .CO({\p_acc_reg[31]_i_1_n_0 ,\p_acc_reg[31]_i_1_n_1 ,\p_acc_reg[31]_i_1_n_2 ,\p_acc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[31:28]),
        .O({\p_acc_reg[31]_i_1_n_4 ,\p_acc_reg[31]_i_1_n_5 ,\p_acc_reg[31]_i_1_n_6 ,\p_acc_reg[31]_i_1_n_7 }),
        .S({\p_acc[31]_i_2_n_0 ,\p_acc[31]_i_3_n_0 ,\p_acc[31]_i_4_n_0 ,\p_acc[31]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[35]_i_1_n_7 ),
        .Q(o_p[32]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[35]_i_1_n_6 ),
        .Q(o_p[33]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[35]_i_1_n_5 ),
        .Q(o_p[34]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[35]_i_1_n_4 ),
        .Q(o_p[35]));
  CARRY4 \p_acc_reg[35]_i_1 
       (.CI(\p_acc_reg[31]_i_1_n_0 ),
        .CO({\p_acc_reg[35]_i_1_n_0 ,\p_acc_reg[35]_i_1_n_1 ,\p_acc_reg[35]_i_1_n_2 ,\p_acc_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[35:32]),
        .O({\p_acc_reg[35]_i_1_n_4 ,\p_acc_reg[35]_i_1_n_5 ,\p_acc_reg[35]_i_1_n_6 ,\p_acc_reg[35]_i_1_n_7 }),
        .S({\p_acc[35]_i_2_n_0 ,\p_acc[35]_i_3_n_0 ,\p_acc[35]_i_4_n_0 ,\p_acc[35]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[39]_i_1_n_7 ),
        .Q(o_p[36]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[39]_i_1_n_6 ),
        .Q(o_p[37]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[39]_i_1_n_5 ),
        .Q(o_p[38]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[39]_i_1_n_4 ),
        .Q(o_p[39]));
  CARRY4 \p_acc_reg[39]_i_1 
       (.CI(\p_acc_reg[35]_i_1_n_0 ),
        .CO({\p_acc_reg[39]_i_1_n_0 ,\p_acc_reg[39]_i_1_n_1 ,\p_acc_reg[39]_i_1_n_2 ,\p_acc_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[39:36]),
        .O({\p_acc_reg[39]_i_1_n_4 ,\p_acc_reg[39]_i_1_n_5 ,\p_acc_reg[39]_i_1_n_6 ,\p_acc_reg[39]_i_1_n_7 }),
        .S({\p_acc[39]_i_2_n_0 ,\p_acc[39]_i_3_n_0 ,\p_acc[39]_i_4_n_0 ,\p_acc[39]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[3]_i_1_n_4 ),
        .Q(o_p[3]));
  CARRY4 \p_acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\p_acc_reg[3]_i_1_n_0 ,\p_acc_reg[3]_i_1_n_1 ,\p_acc_reg[3]_i_1_n_2 ,\p_acc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\p_acc_reg[3]_i_1_n_4 ,\p_acc_reg[3]_i_1_n_5 ,\p_acc_reg[3]_i_1_n_6 ,\p_acc_reg[3]_i_1_n_7 }),
        .S({\p_acc[3]_i_2_n_0 ,\p_acc[3]_i_3_n_0 ,\p_acc[3]_i_4_n_0 ,\p_acc[3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[43]_i_1_n_7 ),
        .Q(o_p[40]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[43]_i_1_n_6 ),
        .Q(o_p[41]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[43]_i_1_n_5 ),
        .Q(o_p[42]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[43]_i_1_n_4 ),
        .Q(o_p[43]));
  CARRY4 \p_acc_reg[43]_i_1 
       (.CI(\p_acc_reg[39]_i_1_n_0 ),
        .CO({\p_acc_reg[43]_i_1_n_0 ,\p_acc_reg[43]_i_1_n_1 ,\p_acc_reg[43]_i_1_n_2 ,\p_acc_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[43:40]),
        .O({\p_acc_reg[43]_i_1_n_4 ,\p_acc_reg[43]_i_1_n_5 ,\p_acc_reg[43]_i_1_n_6 ,\p_acc_reg[43]_i_1_n_7 }),
        .S({\p_acc[43]_i_2_n_0 ,\p_acc[43]_i_3_n_0 ,\p_acc[43]_i_4_n_0 ,\p_acc[43]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[47]_i_1_n_7 ),
        .Q(o_p[44]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[47]_i_1_n_6 ),
        .Q(o_p[45]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[47]_i_1_n_5 ),
        .Q(o_p[46]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[47]_i_1_n_4 ),
        .Q(o_p[47]));
  CARRY4 \p_acc_reg[47]_i_1 
       (.CI(\p_acc_reg[43]_i_1_n_0 ),
        .CO({\p_acc_reg[47]_i_1_n_0 ,\p_acc_reg[47]_i_1_n_1 ,\p_acc_reg[47]_i_1_n_2 ,\p_acc_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[47:44]),
        .O({\p_acc_reg[47]_i_1_n_4 ,\p_acc_reg[47]_i_1_n_5 ,\p_acc_reg[47]_i_1_n_6 ,\p_acc_reg[47]_i_1_n_7 }),
        .S({\p_acc[47]_i_2_n_0 ,\p_acc[47]_i_3_n_0 ,\p_acc[47]_i_4_n_0 ,\p_acc[47]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[51]_i_1_n_7 ),
        .Q(o_p[48]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[51]_i_1_n_6 ),
        .Q(o_p[49]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[7]_i_1_n_7 ),
        .Q(o_p[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[51]_i_1_n_5 ),
        .Q(o_p[50]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[51]_i_1_n_4 ),
        .Q(o_p[51]));
  CARRY4 \p_acc_reg[51]_i_1 
       (.CI(\p_acc_reg[47]_i_1_n_0 ),
        .CO({\p_acc_reg[51]_i_1_n_0 ,\p_acc_reg[51]_i_1_n_1 ,\p_acc_reg[51]_i_1_n_2 ,\p_acc_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[51:48]),
        .O({\p_acc_reg[51]_i_1_n_4 ,\p_acc_reg[51]_i_1_n_5 ,\p_acc_reg[51]_i_1_n_6 ,\p_acc_reg[51]_i_1_n_7 }),
        .S({\p_acc[51]_i_2_n_0 ,\p_acc[51]_i_3_n_0 ,\p_acc[51]_i_4_n_0 ,\p_acc[51]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[55]_i_1_n_7 ),
        .Q(o_p[52]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[55]_i_1_n_6 ),
        .Q(o_p[53]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[55]_i_1_n_5 ),
        .Q(o_p[54]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[55]_i_1_n_4 ),
        .Q(o_p[55]));
  CARRY4 \p_acc_reg[55]_i_1 
       (.CI(\p_acc_reg[51]_i_1_n_0 ),
        .CO({\p_acc_reg[55]_i_1_n_0 ,\p_acc_reg[55]_i_1_n_1 ,\p_acc_reg[55]_i_1_n_2 ,\p_acc_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[55:52]),
        .O({\p_acc_reg[55]_i_1_n_4 ,\p_acc_reg[55]_i_1_n_5 ,\p_acc_reg[55]_i_1_n_6 ,\p_acc_reg[55]_i_1_n_7 }),
        .S({\p_acc[55]_i_2_n_0 ,\p_acc[55]_i_3_n_0 ,\p_acc[55]_i_4_n_0 ,\p_acc[55]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[59]_i_1_n_7 ),
        .Q(o_p[56]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[59]_i_1_n_6 ),
        .Q(o_p[57]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[59]_i_1_n_5 ),
        .Q(o_p[58]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[59]_i_1_n_4 ),
        .Q(o_p[59]));
  CARRY4 \p_acc_reg[59]_i_1 
       (.CI(\p_acc_reg[55]_i_1_n_0 ),
        .CO({\p_acc_reg[59]_i_1_n_0 ,\p_acc_reg[59]_i_1_n_1 ,\p_acc_reg[59]_i_1_n_2 ,\p_acc_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[59:56]),
        .O({\p_acc_reg[59]_i_1_n_4 ,\p_acc_reg[59]_i_1_n_5 ,\p_acc_reg[59]_i_1_n_6 ,\p_acc_reg[59]_i_1_n_7 }),
        .S({\p_acc[59]_i_2_n_0 ,\p_acc[59]_i_3_n_0 ,\p_acc[59]_i_4_n_0 ,\p_acc[59]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[7]_i_1_n_6 ),
        .Q(o_p[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[63]_i_1_n_7 ),
        .Q(o_p[60]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[63]_i_1_n_6 ),
        .Q(o_p[61]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[63]_i_1_n_5 ),
        .Q(o_p[62]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[63]_i_1_n_4 ),
        .Q(o_p[63]));
  CARRY4 \p_acc_reg[63]_i_1 
       (.CI(\p_acc_reg[59]_i_1_n_0 ),
        .CO({\p_acc_reg[63]_i_1_n_0 ,\p_acc_reg[63]_i_1_n_1 ,\p_acc_reg[63]_i_1_n_2 ,\p_acc_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[63:60]),
        .O({\p_acc_reg[63]_i_1_n_4 ,\p_acc_reg[63]_i_1_n_5 ,\p_acc_reg[63]_i_1_n_6 ,\p_acc_reg[63]_i_1_n_7 }),
        .S({\p_acc[63]_i_2_n_0 ,\p_acc[63]_i_3_n_0 ,\p_acc[63]_i_4_n_0 ,\p_acc[63]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[67]_i_1_n_7 ),
        .Q(o_p[64]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[67]_i_1_n_6 ),
        .Q(o_p[65]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[67]_i_1_n_5 ),
        .Q(o_p[66]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[67]_i_1_n_4 ),
        .Q(o_p[67]));
  CARRY4 \p_acc_reg[67]_i_1 
       (.CI(\p_acc_reg[63]_i_1_n_0 ),
        .CO({\p_acc_reg[67]_i_1_n_0 ,\p_acc_reg[67]_i_1_n_1 ,\p_acc_reg[67]_i_1_n_2 ,\p_acc_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[67:64]),
        .O({\p_acc_reg[67]_i_1_n_4 ,\p_acc_reg[67]_i_1_n_5 ,\p_acc_reg[67]_i_1_n_6 ,\p_acc_reg[67]_i_1_n_7 }),
        .S({\p_acc[67]_i_2_n_0 ,\p_acc[67]_i_3_n_0 ,\p_acc[67]_i_4_n_0 ,\p_acc[67]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[69]_i_1_n_7 ),
        .Q(o_p[68]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[69]_i_1_n_6 ),
        .Q(o_p[69]));
  CARRY4 \p_acc_reg[69]_i_1 
       (.CI(\p_acc_reg[67]_i_1_n_0 ),
        .CO({\NLW_p_acc_reg[69]_i_1_CO_UNCONNECTED [3:1],\p_acc_reg[69]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in[68]}),
        .O({\NLW_p_acc_reg[69]_i_1_O_UNCONNECTED [3:2],\p_acc_reg[69]_i_1_n_6 ,\p_acc_reg[69]_i_1_n_7 }),
        .S({1'b0,1'b0,\p_acc[69]_i_2_n_0 ,\p_acc[69]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[7]_i_1_n_5 ),
        .Q(o_p[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[7]_i_1_n_4 ),
        .Q(o_p[7]));
  CARRY4 \p_acc_reg[7]_i_1 
       (.CI(\p_acc_reg[3]_i_1_n_0 ),
        .CO({\p_acc_reg[7]_i_1_n_0 ,\p_acc_reg[7]_i_1_n_1 ,\p_acc_reg[7]_i_1_n_2 ,\p_acc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\p_acc_reg[7]_i_1_n_4 ,\p_acc_reg[7]_i_1_n_5 ,\p_acc_reg[7]_i_1_n_6 ,\p_acc_reg[7]_i_1_n_7 }),
        .S({\p_acc[7]_i_2_n_0 ,\p_acc[7]_i_3_n_0 ,\p_acc[7]_i_4_n_0 ,\p_acc[7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[11]_i_1_n_7 ),
        .Q(o_p[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p_acc_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\p_acc_reg[11]_i_1_n_6 ),
        .Q(o_p[9]));
  FDCE \p_in_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_117),
        .Q(in[0]));
  FDCE \p_in_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_107),
        .Q(in[10]));
  FDCE \p_in_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_106),
        .Q(in[11]));
  FDCE \p_in_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_105),
        .Q(in[12]));
  FDCE \p_in_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_104),
        .Q(in[13]));
  FDCE \p_in_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_103),
        .Q(in[14]));
  FDCE \p_in_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_102),
        .Q(in[15]));
  FDCE \p_in_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_101),
        .Q(in[16]));
  FDCE \p_in_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_100),
        .Q(in[17]));
  FDCE \p_in_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_99),
        .Q(in[18]));
  FDCE \p_in_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_98),
        .Q(in[19]));
  FDCE \p_in_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_116),
        .Q(in[1]));
  FDCE \p_in_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_97),
        .Q(in[20]));
  FDCE \p_in_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_96),
        .Q(in[21]));
  FDCE \p_in_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_95),
        .Q(in[22]));
  FDCE \p_in_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_94),
        .Q(in[23]));
  FDCE \p_in_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_93),
        .Q(in[24]));
  FDCE \p_in_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_92),
        .Q(in[25]));
  FDCE \p_in_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_91),
        .Q(in[26]));
  FDCE \p_in_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_90),
        .Q(in[27]));
  FDCE \p_in_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_89),
        .Q(in[28]));
  FDCE \p_in_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_88),
        .Q(in[29]));
  FDCE \p_in_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_115),
        .Q(in[2]));
  FDCE \p_in_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_87),
        .Q(in[30]));
  FDCE \p_in_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_86),
        .Q(in[31]));
  FDCE \p_in_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_85),
        .Q(in[32]));
  FDCE \p_in_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_84),
        .Q(in[33]));
  FDCE \p_in_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_83),
        .Q(in[34]));
  FDCE \p_in_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_82),
        .Q(in[35]));
  FDCE \p_in_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_81),
        .Q(in[36]));
  FDCE \p_in_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_80),
        .Q(in[37]));
  FDCE \p_in_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_79),
        .Q(in[38]));
  FDCE \p_in_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_78),
        .Q(in[39]));
  FDCE \p_in_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_114),
        .Q(in[3]));
  FDCE \p_in_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_77),
        .Q(in[40]));
  FDCE \p_in_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_76),
        .Q(in[41]));
  FDCE \p_in_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_75),
        .Q(in[42]));
  FDCE \p_in_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_74),
        .Q(in[43]));
  FDCE \p_in_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_73),
        .Q(in[44]));
  FDCE \p_in_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_72),
        .Q(in[45]));
  FDCE \p_in_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_71),
        .Q(in[46]));
  FDCE \p_in_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_70),
        .Q(in[47]));
  FDCE \p_in_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_69),
        .Q(in[48]));
  FDCE \p_in_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_68),
        .Q(in[49]));
  FDCE \p_in_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_113),
        .Q(in[4]));
  FDCE \p_in_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_67),
        .Q(in[50]));
  FDCE \p_in_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_66),
        .Q(in[51]));
  FDCE \p_in_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_65),
        .Q(in[52]));
  FDCE \p_in_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_64),
        .Q(in[53]));
  FDCE \p_in_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_63),
        .Q(in[54]));
  FDCE \p_in_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_62),
        .Q(in[55]));
  FDCE \p_in_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_61),
        .Q(in[56]));
  FDCE \p_in_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_60),
        .Q(in[57]));
  FDCE \p_in_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_59),
        .Q(in[58]));
  FDCE \p_in_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_58),
        .Q(in[59]));
  FDCE \p_in_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_112),
        .Q(in[5]));
  FDCE \p_in_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_57),
        .Q(in[60]));
  FDCE \p_in_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_56),
        .Q(in[61]));
  FDCE \p_in_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_55),
        .Q(in[62]));
  FDCE \p_in_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_54),
        .Q(in[63]));
  FDCE \p_in_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_53),
        .Q(in[64]));
  FDCE \p_in_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_52),
        .Q(in[65]));
  FDCE \p_in_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_51),
        .Q(in[66]));
  FDCE \p_in_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_50),
        .Q(in[67]));
  FDCE \p_in_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_49),
        .Q(in[68]));
  FDCE \p_in_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_48),
        .Q(in[69]));
  FDCE \p_in_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_111),
        .Q(in[6]));
  FDCE \p_in_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_110),
        .Q(in[7]));
  FDCE \p_in_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_109),
        .Q(in[8]));
  FDCE \p_in_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_dsp48_mul_add_ip_n_108),
        .Q(in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[0]),
        .Q(\r_buf_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[10]),
        .Q(\r_buf_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[11]),
        .Q(\r_buf_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[12]),
        .Q(\r_buf_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[13]),
        .Q(\r_buf_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[14]),
        .Q(\r_buf_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[15]),
        .Q(\r_buf_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[16]),
        .Q(\r_buf_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[17]),
        .Q(data0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[18] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[18]),
        .Q(data0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[19] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[19]),
        .Q(data0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[1]),
        .Q(\r_buf_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[20] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[20]),
        .Q(data0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[21] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[21]),
        .Q(data0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[22] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[22]),
        .Q(data0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[23] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[23]),
        .Q(data0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[24] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[24]),
        .Q(data0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[25] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[25]),
        .Q(data0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[26] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[26]),
        .Q(data0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[27] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[27]),
        .Q(data0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[28] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[28]),
        .Q(data0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[29] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[29]),
        .Q(data0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[2]),
        .Q(\r_buf_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[30] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[30]),
        .Q(data0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[31] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[31]),
        .Q(data0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[32] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[32]),
        .Q(data0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[33] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[33]),
        .Q(data0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[34] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[34]),
        .Q(data0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[3]),
        .Q(\r_buf_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[4]),
        .Q(\r_buf_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[5]),
        .Q(\r_buf_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[6]),
        .Q(\r_buf_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[7]),
        .Q(\r_buf_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[8]),
        .Q(\r_buf_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \r_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_r[9]),
        .Q(\r_buf_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[0]_i_1 
       (.I0(data0[0]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[0]),
        .I4(\u_a[0]_i_2_n_0 ),
        .O(u_a[0]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[0]_i_2 
       (.I0(\r_buf_reg_n_0_[0] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[0] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[10]_i_1 
       (.I0(data0[10]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[10]),
        .I4(\u_a[10]_i_2_n_0 ),
        .O(u_a[10]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[10]_i_2 
       (.I0(\r_buf_reg_n_0_[10] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[10] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[11]_i_1 
       (.I0(data0[11]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[11]),
        .I4(\u_a[11]_i_2_n_0 ),
        .O(u_a[11]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[11]_i_2 
       (.I0(\r_buf_reg_n_0_[11] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[11] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[12]_i_1 
       (.I0(data0[12]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[12]),
        .I4(\u_a[12]_i_2_n_0 ),
        .O(u_a[12]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[12]_i_2 
       (.I0(\r_buf_reg_n_0_[12] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[12] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[13]_i_1 
       (.I0(data0[13]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[13]),
        .I4(\u_a[13]_i_2_n_0 ),
        .O(u_a[13]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[13]_i_2 
       (.I0(\r_buf_reg_n_0_[13] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[13] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[14]_i_1 
       (.I0(data0[14]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[14]),
        .I4(\u_a[14]_i_2_n_0 ),
        .O(u_a[14]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[14]_i_2 
       (.I0(\r_buf_reg_n_0_[14] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[14] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[15]_i_1 
       (.I0(data0[15]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[15]),
        .I4(\u_a[15]_i_2_n_0 ),
        .O(u_a[15]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[15]_i_2 
       (.I0(\r_buf_reg_n_0_[15] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[15] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[16]_i_1 
       (.I0(data0[16]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[16]),
        .I4(\u_a[16]_i_3_n_0 ),
        .O(u_a[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \u_a[16]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(\u_a[17]_i_2_n_0 ),
        .O(\u_a[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[16]_i_3 
       (.I0(\r_buf_reg_n_0_[16] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[16] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA800A800A800)) 
    \u_a[17]_i_1 
       (.I0(data0[17]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(data2[17]),
        .I5(\u_a[17]_i_3_n_0 ),
        .O(u_a[17]));
  LUT5 #(
    .INIT(32'h00000116)) 
    \u_a[17]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(\u_a[17]_i_4_n_0 ),
        .I4(\u_a[17]_i_5_n_0 ),
        .O(\u_a[17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \u_a[17]_i_3 
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(\u_a[17]_i_2_n_0 ),
        .O(\u_a[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \u_a[17]_i_4 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .O(\u_a[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \u_a[17]_i_5 
       (.I0(p_0_in[4]),
        .I1(p_0_in[5]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .O(\u_a[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[1]_i_1 
       (.I0(data0[1]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[1]),
        .I4(\u_a[1]_i_2_n_0 ),
        .O(u_a[1]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[1]_i_2 
       (.I0(\r_buf_reg_n_0_[1] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[1] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[2]_i_1 
       (.I0(data0[2]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[2]),
        .I4(\u_a[2]_i_2_n_0 ),
        .O(u_a[2]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[2]_i_2 
       (.I0(\r_buf_reg_n_0_[2] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[2] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[3]_i_1 
       (.I0(data0[3]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[3]),
        .I4(\u_a[3]_i_2_n_0 ),
        .O(u_a[3]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[3]_i_2 
       (.I0(\r_buf_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[3] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[4]_i_1 
       (.I0(data0[4]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[4]),
        .I4(\u_a[4]_i_2_n_0 ),
        .O(u_a[4]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[4]_i_2 
       (.I0(\r_buf_reg_n_0_[4] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[4] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[5]_i_1 
       (.I0(data0[5]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[5]),
        .I4(\u_a[5]_i_2_n_0 ),
        .O(u_a[5]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[5]_i_2 
       (.I0(\r_buf_reg_n_0_[5] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[5] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[6]_i_1 
       (.I0(data0[6]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[6]),
        .I4(\u_a[6]_i_2_n_0 ),
        .O(u_a[6]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[6]_i_2 
       (.I0(\r_buf_reg_n_0_[6] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[6] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[7]_i_1 
       (.I0(data0[7]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[7]),
        .I4(\u_a[7]_i_2_n_0 ),
        .O(u_a[7]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[7]_i_2 
       (.I0(\r_buf_reg_n_0_[7] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[7] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[8]_i_1 
       (.I0(data0[8]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[8]),
        .I4(\u_a[8]_i_2_n_0 ),
        .O(u_a[8]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[8]_i_2 
       (.I0(\r_buf_reg_n_0_[8] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[8] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \u_a[9]_i_1 
       (.I0(data0[9]),
        .I1(\u_a[16]_i_2_n_0 ),
        .I2(\u_a[17]_i_3_n_0 ),
        .I3(data2[9]),
        .I4(\u_a[9]_i_2_n_0 ),
        .O(u_a[9]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[9]_i_2 
       (.I0(\r_buf_reg_n_0_[9] ),
        .I1(p_0_in[3]),
        .I2(\i_buf_reg_n_0_[9] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[6]),
        .O(\u_a[9]_i_2_n_0 ));
  FDCE \u_a_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[0]),
        .Q(\u_a_reg_n_0_[0] ));
  FDCE \u_a_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[10]),
        .Q(\u_a_reg_n_0_[10] ));
  FDCE \u_a_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[11]),
        .Q(\u_a_reg_n_0_[11] ));
  FDCE \u_a_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[12]),
        .Q(\u_a_reg_n_0_[12] ));
  FDCE \u_a_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[13]),
        .Q(\u_a_reg_n_0_[13] ));
  FDCE \u_a_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[14]),
        .Q(\u_a_reg_n_0_[14] ));
  FDCE \u_a_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[15]),
        .Q(\u_a_reg_n_0_[15] ));
  FDCE \u_a_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[16]),
        .Q(\u_a_reg_n_0_[16] ));
  FDCE \u_a_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[17]),
        .Q(\u_a_reg_n_0_[17] ));
  FDCE \u_a_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[1]),
        .Q(\u_a_reg_n_0_[1] ));
  FDCE \u_a_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[2]),
        .Q(\u_a_reg_n_0_[2] ));
  FDCE \u_a_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[3]),
        .Q(\u_a_reg_n_0_[3] ));
  FDCE \u_a_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[4]),
        .Q(\u_a_reg_n_0_[4] ));
  FDCE \u_a_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[5]),
        .Q(\u_a_reg_n_0_[5] ));
  FDCE \u_a_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[6]),
        .Q(\u_a_reg_n_0_[6] ));
  FDCE \u_a_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[7]),
        .Q(\u_a_reg_n_0_[7] ));
  FDCE \u_a_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[8]),
        .Q(\u_a_reg_n_0_[8] ));
  FDCE \u_a_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_a[9]),
        .Q(\u_a_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[0]_i_1 
       (.I0(data0[0]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[0] ),
        .I5(\u_b[0]_i_2_n_0 ),
        .O(u_b[0]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[0]_i_2 
       (.I0(data2[0]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[0] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[10]_i_1 
       (.I0(data0[10]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[10] ),
        .I5(\u_b[10]_i_2_n_0 ),
        .O(u_b[10]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[10]_i_2 
       (.I0(data2[10]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[10] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[11]_i_1 
       (.I0(data0[11]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[11] ),
        .I5(\u_b[11]_i_2_n_0 ),
        .O(u_b[11]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[11]_i_2 
       (.I0(data2[11]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[11] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[12]_i_1 
       (.I0(data0[12]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[12] ),
        .I5(\u_b[12]_i_2_n_0 ),
        .O(u_b[12]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[12]_i_2 
       (.I0(data2[12]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[12] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[13]_i_1 
       (.I0(data0[13]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[13] ),
        .I5(\u_b[13]_i_2_n_0 ),
        .O(u_b[13]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[13]_i_2 
       (.I0(data2[13]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[13] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[14]_i_1 
       (.I0(data0[14]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[14] ),
        .I5(\u_b[14]_i_2_n_0 ),
        .O(u_b[14]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[14]_i_2 
       (.I0(data2[14]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[14] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[15]_i_1 
       (.I0(data0[15]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[15] ),
        .I5(\u_b[15]_i_2_n_0 ),
        .O(u_b[15]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[15]_i_2 
       (.I0(data2[15]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[15] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[16]_i_1 
       (.I0(data0[16]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[16] ),
        .I5(\u_b[16]_i_3_n_0 ),
        .O(u_b[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \u_b[16]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(\u_a[17]_i_2_n_0 ),
        .O(\u_b[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[16]_i_3 
       (.I0(data2[16]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[16] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_b[17]_i_1 
       (.I0(data0[17]),
        .I1(p_0_in[1]),
        .I2(data2[17]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(u_b[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[1]_i_1 
       (.I0(data0[1]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[1] ),
        .I5(\u_b[1]_i_2_n_0 ),
        .O(u_b[1]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[1]_i_2 
       (.I0(data2[1]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[1] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[2]_i_1 
       (.I0(data0[2]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[2] ),
        .I5(\u_b[2]_i_2_n_0 ),
        .O(u_b[2]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[2]_i_2 
       (.I0(data2[2]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[2] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[3]_i_1 
       (.I0(data0[3]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[3] ),
        .I5(\u_b[3]_i_2_n_0 ),
        .O(u_b[3]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[3]_i_2 
       (.I0(data2[3]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[3] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[4]_i_1 
       (.I0(data0[4]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[4] ),
        .I5(\u_b[4]_i_2_n_0 ),
        .O(u_b[4]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[4]_i_2 
       (.I0(data2[4]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[4] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[5]_i_1 
       (.I0(data0[5]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[5] ),
        .I5(\u_b[5]_i_2_n_0 ),
        .O(u_b[5]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[5]_i_2 
       (.I0(data2[5]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[5] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[6]_i_1 
       (.I0(data0[6]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[6] ),
        .I5(\u_b[6]_i_2_n_0 ),
        .O(u_b[6]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[6]_i_2 
       (.I0(data2[6]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[6] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[7]_i_1 
       (.I0(data0[7]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[7] ),
        .I5(\u_b[7]_i_2_n_0 ),
        .O(u_b[7]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[7]_i_2 
       (.I0(data2[7]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[7] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[8]_i_1 
       (.I0(data0[8]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[8] ),
        .I5(\u_b[8]_i_2_n_0 ),
        .O(u_b[8]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[8]_i_2 
       (.I0(data2[8]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[8] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF808080)) 
    \u_b[9]_i_1 
       (.I0(data0[9]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(p_0_in[1]),
        .I3(\u_b[16]_i_2_n_0 ),
        .I4(\r_buf_reg_n_0_[9] ),
        .I5(\u_b[9]_i_2_n_0 ),
        .O(u_b[9]));
  LUT6 #(
    .INIT(64'hF8F8F88800000000)) 
    \u_b[9]_i_2 
       (.I0(data2[9]),
        .I1(p_0_in[4]),
        .I2(\i_buf_reg_n_0_[9] ),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .I5(\u_a[17]_i_2_n_0 ),
        .O(\u_b[9]_i_2_n_0 ));
  FDCE \u_b_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[0]),
        .Q(\u_b_reg_n_0_[0] ));
  FDCE \u_b_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[10]),
        .Q(\u_b_reg_n_0_[10] ));
  FDCE \u_b_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[11]),
        .Q(\u_b_reg_n_0_[11] ));
  FDCE \u_b_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[12]),
        .Q(\u_b_reg_n_0_[12] ));
  FDCE \u_b_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[13]),
        .Q(\u_b_reg_n_0_[13] ));
  FDCE \u_b_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[14]),
        .Q(\u_b_reg_n_0_[14] ));
  FDCE \u_b_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[15]),
        .Q(\u_b_reg_n_0_[15] ));
  FDCE \u_b_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[16]),
        .Q(\u_b_reg_n_0_[16] ));
  FDCE \u_b_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[17]),
        .Q(\u_b_reg_n_0_[17] ));
  FDCE \u_b_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[1]),
        .Q(\u_b_reg_n_0_[1] ));
  FDCE \u_b_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[2]),
        .Q(\u_b_reg_n_0_[2] ));
  FDCE \u_b_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[3]),
        .Q(\u_b_reg_n_0_[3] ));
  FDCE \u_b_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[4]),
        .Q(\u_b_reg_n_0_[4] ));
  FDCE \u_b_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[5]),
        .Q(\u_b_reg_n_0_[5] ));
  FDCE \u_b_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[6]),
        .Q(\u_b_reg_n_0_[6] ));
  FDCE \u_b_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[7]),
        .Q(\u_b_reg_n_0_[7] ));
  FDCE \u_b_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[8]),
        .Q(\u_b_reg_n_0_[8] ));
  FDCE \u_b_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_b[9]),
        .Q(\u_b_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00000016)) 
    \u_c[47]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[6]),
        .I2(p_0_in[5]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(\u_c[47]_i_2_n_0 ));
  FDCE \u_c_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[0]),
        .Q(\u_c_reg_n_0_[0] ));
  FDCE \u_c_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[10]),
        .Q(\u_c_reg_n_0_[10] ));
  FDCE \u_c_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[11]),
        .Q(\u_c_reg_n_0_[11] ));
  FDCE \u_c_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[12]),
        .Q(\u_c_reg_n_0_[12] ));
  FDCE \u_c_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[13]),
        .Q(\u_c_reg_n_0_[13] ));
  FDCE \u_c_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[14]),
        .Q(\u_c_reg_n_0_[14] ));
  FDCE \u_c_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[15]),
        .Q(\u_c_reg_n_0_[15] ));
  FDCE \u_c_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[16]),
        .Q(\u_c_reg_n_0_[16] ));
  FDCE \u_c_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[17]),
        .Q(\u_c_reg_n_0_[17] ));
  FDCE \u_c_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[18]),
        .Q(\u_c_reg_n_0_[18] ));
  FDCE \u_c_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[19]),
        .Q(\u_c_reg_n_0_[19] ));
  FDCE \u_c_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[1]),
        .Q(\u_c_reg_n_0_[1] ));
  FDCE \u_c_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[20]),
        .Q(\u_c_reg_n_0_[20] ));
  FDCE \u_c_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[21]),
        .Q(\u_c_reg_n_0_[21] ));
  FDCE \u_c_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[22]),
        .Q(\u_c_reg_n_0_[22] ));
  FDCE \u_c_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[23]),
        .Q(\u_c_reg_n_0_[23] ));
  FDCE \u_c_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[24]),
        .Q(\u_c_reg_n_0_[24] ));
  FDCE \u_c_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[25]),
        .Q(\u_c_reg_n_0_[25] ));
  FDCE \u_c_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[26]),
        .Q(\u_c_reg_n_0_[26] ));
  FDCE \u_c_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[27]),
        .Q(\u_c_reg_n_0_[27] ));
  FDCE \u_c_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[28]),
        .Q(\u_c_reg_n_0_[28] ));
  FDCE \u_c_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[29]),
        .Q(\u_c_reg_n_0_[29] ));
  FDCE \u_c_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[2]),
        .Q(\u_c_reg_n_0_[2] ));
  FDCE \u_c_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[30]),
        .Q(\u_c_reg_n_0_[30] ));
  FDCE \u_c_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[31]),
        .Q(\u_c_reg_n_0_[31] ));
  FDCE \u_c_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[32]),
        .Q(\u_c_reg_n_0_[32] ));
  FDCE \u_c_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[33]),
        .Q(\u_c_reg_n_0_[33] ));
  FDCE \u_c_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[34]),
        .Q(\u_c_reg_n_0_[34] ));
  FDCE \u_c_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[35]),
        .Q(\u_c_reg_n_0_[35] ));
  FDCE \u_c_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[36]),
        .Q(\u_c_reg_n_0_[36] ));
  FDCE \u_c_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[37]),
        .Q(\u_c_reg_n_0_[37] ));
  FDCE \u_c_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[38]),
        .Q(\u_c_reg_n_0_[38] ));
  FDCE \u_c_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[39]),
        .Q(\u_c_reg_n_0_[39] ));
  FDCE \u_c_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[3]),
        .Q(\u_c_reg_n_0_[3] ));
  FDCE \u_c_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[40]),
        .Q(\u_c_reg_n_0_[40] ));
  FDCE \u_c_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[41]),
        .Q(\u_c_reg_n_0_[41] ));
  FDCE \u_c_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[42]),
        .Q(\u_c_reg_n_0_[42] ));
  FDCE \u_c_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[43]),
        .Q(\u_c_reg_n_0_[43] ));
  FDCE \u_c_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[44]),
        .Q(\u_c_reg_n_0_[44] ));
  FDCE \u_c_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[45]),
        .Q(\u_c_reg_n_0_[45] ));
  FDCE \u_c_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[46]),
        .Q(\u_c_reg_n_0_[46] ));
  FDCE \u_c_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[47]),
        .Q(\u_c_reg_n_0_[47] ));
  FDCE \u_c_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[4]),
        .Q(\u_c_reg_n_0_[4] ));
  FDCE \u_c_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[5]),
        .Q(\u_c_reg_n_0_[5] ));
  FDCE \u_c_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[6]),
        .Q(\u_c_reg_n_0_[6] ));
  FDCE \u_c_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[7]),
        .Q(\u_c_reg_n_0_[7] ));
  FDCE \u_c_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[8]),
        .Q(\u_c_reg_n_0_[8] ));
  FDCE \u_c_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(u_c[9]),
        .Q(\u_c_reg_n_0_[9] ));
  complex_abs_power2_35_1dsp_ip_dsp48_mul_add_ip u_dsp48_mul_add_ip
       (.D(u_c),
        .Q({\u_a_reg_n_0_[17] ,\u_a_reg_n_0_[16] ,\u_a_reg_n_0_[15] ,\u_a_reg_n_0_[14] ,\u_a_reg_n_0_[13] ,\u_a_reg_n_0_[12] ,\u_a_reg_n_0_[11] ,\u_a_reg_n_0_[10] ,\u_a_reg_n_0_[9] ,\u_a_reg_n_0_[8] ,\u_a_reg_n_0_[7] ,\u_a_reg_n_0_[6] ,\u_a_reg_n_0_[5] ,\u_a_reg_n_0_[4] ,\u_a_reg_n_0_[3] ,\u_a_reg_n_0_[2] ,\u_a_reg_n_0_[1] ,\u_a_reg_n_0_[0] }),
        .\en_buf_reg[6] (\u_c[47]_i_2_n_0 ),
        .\en_buf_reg[9] ({p_0_in[10:8],p_0_in[4:3]}),
        .i_clk(i_clk),
        .\p_in_reg[69] ({u_dsp48_mul_add_ip_n_48,u_dsp48_mul_add_ip_n_49,u_dsp48_mul_add_ip_n_50,u_dsp48_mul_add_ip_n_51,u_dsp48_mul_add_ip_n_52,u_dsp48_mul_add_ip_n_53,u_dsp48_mul_add_ip_n_54,u_dsp48_mul_add_ip_n_55,u_dsp48_mul_add_ip_n_56,u_dsp48_mul_add_ip_n_57,u_dsp48_mul_add_ip_n_58,u_dsp48_mul_add_ip_n_59,u_dsp48_mul_add_ip_n_60,u_dsp48_mul_add_ip_n_61,u_dsp48_mul_add_ip_n_62,u_dsp48_mul_add_ip_n_63,u_dsp48_mul_add_ip_n_64,u_dsp48_mul_add_ip_n_65,u_dsp48_mul_add_ip_n_66,u_dsp48_mul_add_ip_n_67,u_dsp48_mul_add_ip_n_68,u_dsp48_mul_add_ip_n_69,u_dsp48_mul_add_ip_n_70,u_dsp48_mul_add_ip_n_71,u_dsp48_mul_add_ip_n_72,u_dsp48_mul_add_ip_n_73,u_dsp48_mul_add_ip_n_74,u_dsp48_mul_add_ip_n_75,u_dsp48_mul_add_ip_n_76,u_dsp48_mul_add_ip_n_77,u_dsp48_mul_add_ip_n_78,u_dsp48_mul_add_ip_n_79,u_dsp48_mul_add_ip_n_80,u_dsp48_mul_add_ip_n_81,u_dsp48_mul_add_ip_n_82,u_dsp48_mul_add_ip_n_83,u_dsp48_mul_add_ip_n_84,u_dsp48_mul_add_ip_n_85,u_dsp48_mul_add_ip_n_86,u_dsp48_mul_add_ip_n_87,u_dsp48_mul_add_ip_n_88,u_dsp48_mul_add_ip_n_89,u_dsp48_mul_add_ip_n_90,u_dsp48_mul_add_ip_n_91,u_dsp48_mul_add_ip_n_92,u_dsp48_mul_add_ip_n_93,u_dsp48_mul_add_ip_n_94,u_dsp48_mul_add_ip_n_95,u_dsp48_mul_add_ip_n_96,u_dsp48_mul_add_ip_n_97,u_dsp48_mul_add_ip_n_98,u_dsp48_mul_add_ip_n_99,u_dsp48_mul_add_ip_n_100,u_dsp48_mul_add_ip_n_101,u_dsp48_mul_add_ip_n_102,u_dsp48_mul_add_ip_n_103,u_dsp48_mul_add_ip_n_104,u_dsp48_mul_add_ip_n_105,u_dsp48_mul_add_ip_n_106,u_dsp48_mul_add_ip_n_107,u_dsp48_mul_add_ip_n_108,u_dsp48_mul_add_ip_n_109,u_dsp48_mul_add_ip_n_110,u_dsp48_mul_add_ip_n_111,u_dsp48_mul_add_ip_n_112,u_dsp48_mul_add_ip_n_113,u_dsp48_mul_add_ip_n_114,u_dsp48_mul_add_ip_n_115,u_dsp48_mul_add_ip_n_116,u_dsp48_mul_add_ip_n_117}),
        .\u_b_reg[17] ({\u_b_reg_n_0_[17] ,\u_b_reg_n_0_[16] ,\u_b_reg_n_0_[15] ,\u_b_reg_n_0_[14] ,\u_b_reg_n_0_[13] ,\u_b_reg_n_0_[12] ,\u_b_reg_n_0_[11] ,\u_b_reg_n_0_[10] ,\u_b_reg_n_0_[9] ,\u_b_reg_n_0_[8] ,\u_b_reg_n_0_[7] ,\u_b_reg_n_0_[6] ,\u_b_reg_n_0_[5] ,\u_b_reg_n_0_[4] ,\u_b_reg_n_0_[3] ,\u_b_reg_n_0_[2] ,\u_b_reg_n_0_[1] ,\u_b_reg_n_0_[0] }),
        .\u_c_reg[47] ({\u_c_reg_n_0_[47] ,\u_c_reg_n_0_[46] ,\u_c_reg_n_0_[45] ,\u_c_reg_n_0_[44] ,\u_c_reg_n_0_[43] ,\u_c_reg_n_0_[42] ,\u_c_reg_n_0_[41] ,\u_c_reg_n_0_[40] ,\u_c_reg_n_0_[39] ,\u_c_reg_n_0_[38] ,\u_c_reg_n_0_[37] ,\u_c_reg_n_0_[36] ,\u_c_reg_n_0_[35] ,\u_c_reg_n_0_[34] ,\u_c_reg_n_0_[33] ,\u_c_reg_n_0_[32] ,\u_c_reg_n_0_[31] ,\u_c_reg_n_0_[30] ,\u_c_reg_n_0_[29] ,\u_c_reg_n_0_[28] ,\u_c_reg_n_0_[27] ,\u_c_reg_n_0_[26] ,\u_c_reg_n_0_[25] ,\u_c_reg_n_0_[24] ,\u_c_reg_n_0_[23] ,\u_c_reg_n_0_[22] ,\u_c_reg_n_0_[21] ,\u_c_reg_n_0_[20] ,\u_c_reg_n_0_[19] ,\u_c_reg_n_0_[18] ,\u_c_reg_n_0_[17] ,\u_c_reg_n_0_[16] ,\u_c_reg_n_0_[15] ,\u_c_reg_n_0_[14] ,\u_c_reg_n_0_[13] ,\u_c_reg_n_0_[12] ,\u_c_reg_n_0_[11] ,\u_c_reg_n_0_[10] ,\u_c_reg_n_0_[9] ,\u_c_reg_n_0_[8] ,\u_c_reg_n_0_[7] ,\u_c_reg_n_0_[6] ,\u_c_reg_n_0_[5] ,\u_c_reg_n_0_[4] ,\u_c_reg_n_0_[3] ,\u_c_reg_n_0_[2] ,\u_c_reg_n_0_[1] ,\u_c_reg_n_0_[0] }));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_add_ip" *) 
module complex_abs_power2_35_1dsp_ip_dsp48_mul_add_ip
   (D,
    \p_in_reg[69] ,
    i_clk,
    Q,
    \u_b_reg[17] ,
    \u_c_reg[47] ,
    \en_buf_reg[9] ,
    \en_buf_reg[6] );
  output [47:0]D;
  output [69:0]\p_in_reg[69] ;
  input i_clk;
  input [17:0]Q;
  input [17:0]\u_b_reg[17] ;
  input [47:0]\u_c_reg[47] ;
  input [4:0]\en_buf_reg[9] ;
  input \en_buf_reg[6] ;

  wire [47:0]D;
  wire [17:0]Q;
  wire \en_buf_reg[6] ;
  wire [4:0]\en_buf_reg[9] ;
  wire i_clk;
  wire [69:0]\p_in_reg[69] ;
  wire [17:0]\u_b_reg[17] ;
  wire [47:0]\u_c_reg[47] ;
  wire [47:0]u_p;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_35_1dsp_ip_xbip_dsp48_macro_v3_0 U0
       (.A(Q),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(\u_b_reg[17] ),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(\u_c_reg[47] ),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(i_clk),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(u_p),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[0]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[0]),
        .O(\p_in_reg[69] [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[10]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[10]),
        .O(\p_in_reg[69] [10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[11]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[11]),
        .O(\p_in_reg[69] [11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[12]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[12]),
        .O(\p_in_reg[69] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[13]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[13]),
        .O(\p_in_reg[69] [13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[14]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[14]),
        .O(\p_in_reg[69] [14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[15]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[15]),
        .O(\p_in_reg[69] [15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[16]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[16]),
        .O(\p_in_reg[69] [16]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[17]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[17]),
        .O(\p_in_reg[69] [17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[18]_i_1 
       (.I0(u_p[18]),
        .I1(u_p[0]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[19]_i_1 
       (.I0(u_p[19]),
        .I1(u_p[1]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[1]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[1]),
        .O(\p_in_reg[69] [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[20]_i_1 
       (.I0(u_p[20]),
        .I1(u_p[2]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[21]_i_1 
       (.I0(u_p[21]),
        .I1(u_p[3]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[22]_i_1 
       (.I0(u_p[22]),
        .I1(u_p[4]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[23]_i_1 
       (.I0(u_p[23]),
        .I1(u_p[5]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[24]_i_1 
       (.I0(u_p[24]),
        .I1(u_p[6]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[25]_i_1 
       (.I0(u_p[25]),
        .I1(u_p[7]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[26]_i_1 
       (.I0(u_p[26]),
        .I1(u_p[8]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[27]_i_1 
       (.I0(u_p[27]),
        .I1(u_p[9]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[28]_i_1 
       (.I0(u_p[28]),
        .I1(u_p[10]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [28]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[29]_i_1 
       (.I0(u_p[29]),
        .I1(u_p[11]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[2]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[2]),
        .O(\p_in_reg[69] [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[30]_i_1 
       (.I0(u_p[30]),
        .I1(u_p[12]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[31]_i_1 
       (.I0(u_p[31]),
        .I1(u_p[13]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[32]_i_1 
       (.I0(u_p[32]),
        .I1(u_p[14]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [32]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000A0C00)) 
    \p_in[33]_i_1 
       (.I0(u_p[33]),
        .I1(u_p[15]),
        .I2(\en_buf_reg[9] [2]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [33]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[34]_i_1 
       (.I0(u_p[0]),
        .I1(u_p[16]),
        .I2(u_p[34]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [34]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[35]_i_1 
       (.I0(u_p[1]),
        .I1(u_p[17]),
        .I2(u_p[35]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [35]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[36]_i_1 
       (.I0(u_p[2]),
        .I1(u_p[18]),
        .I2(u_p[36]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [36]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[37]_i_1 
       (.I0(u_p[3]),
        .I1(u_p[19]),
        .I2(u_p[37]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [37]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[38]_i_1 
       (.I0(u_p[4]),
        .I1(u_p[20]),
        .I2(u_p[38]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [38]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[39]_i_1 
       (.I0(u_p[5]),
        .I1(u_p[21]),
        .I2(u_p[39]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [39]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[3]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[3]),
        .O(\p_in_reg[69] [3]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[40]_i_1 
       (.I0(u_p[6]),
        .I1(u_p[22]),
        .I2(u_p[40]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [40]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[41]_i_1 
       (.I0(u_p[7]),
        .I1(u_p[23]),
        .I2(u_p[41]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [41]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[42]_i_1 
       (.I0(u_p[8]),
        .I1(u_p[24]),
        .I2(u_p[42]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [42]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[43]_i_1 
       (.I0(u_p[9]),
        .I1(u_p[25]),
        .I2(u_p[43]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [43]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[44]_i_1 
       (.I0(u_p[10]),
        .I1(u_p[26]),
        .I2(u_p[44]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [44]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[45]_i_1 
       (.I0(u_p[11]),
        .I1(u_p[27]),
        .I2(u_p[45]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [45]));
  LUT6 #(
    .INIT(64'h000000F000AACC00)) 
    \p_in[46]_i_1 
       (.I0(u_p[12]),
        .I1(u_p[28]),
        .I2(u_p[46]),
        .I3(\en_buf_reg[9] [3]),
        .I4(\en_buf_reg[9] [2]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [46]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[47]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[13]),
        .I2(u_p[29]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [47]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[48]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[14]),
        .I2(u_p[30]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [48]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[49]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[15]),
        .I2(u_p[31]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [49]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[4]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[4]),
        .O(\p_in_reg[69] [4]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[50]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[16]),
        .I2(u_p[32]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [50]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[51]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[17]),
        .I2(u_p[33]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [51]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[52]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[18]),
        .I2(u_p[34]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [52]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[53]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[19]),
        .I2(u_p[35]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [53]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[54]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[20]),
        .I2(u_p[36]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [54]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[55]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[21]),
        .I2(u_p[37]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [55]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[56]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[22]),
        .I2(u_p[38]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [56]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[57]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[23]),
        .I2(u_p[39]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [57]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[58]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[24]),
        .I2(u_p[40]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [58]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[59]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[25]),
        .I2(u_p[41]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [59]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[5]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[5]),
        .O(\p_in_reg[69] [5]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[60]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[26]),
        .I2(u_p[42]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [60]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[61]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[27]),
        .I2(u_p[43]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [61]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[62]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[28]),
        .I2(u_p[44]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [62]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[63]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[29]),
        .I2(u_p[45]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [63]));
  LUT6 #(
    .INIT(64'h000000AA00F0CC00)) 
    \p_in[64]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[30]),
        .I2(u_p[46]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [3]),
        .I5(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [64]));
  LUT5 #(
    .INIT(32'h000A0CA0)) 
    \p_in[65]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[31]),
        .I2(\en_buf_reg[9] [3]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [65]));
  LUT5 #(
    .INIT(32'h000A0CA0)) 
    \p_in[66]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[32]),
        .I2(\en_buf_reg[9] [3]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [66]));
  LUT5 #(
    .INIT(32'h000A0CA0)) 
    \p_in[67]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[33]),
        .I2(\en_buf_reg[9] [3]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [67]));
  LUT5 #(
    .INIT(32'h000A0CA0)) 
    \p_in[68]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[34]),
        .I2(\en_buf_reg[9] [3]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [68]));
  LUT5 #(
    .INIT(32'h000A0CA0)) 
    \p_in[69]_i_1 
       (.I0(u_p[47]),
        .I1(u_p[35]),
        .I2(\en_buf_reg[9] [3]),
        .I3(\en_buf_reg[9] [2]),
        .I4(\en_buf_reg[9] [4]),
        .O(\p_in_reg[69] [69]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[6]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[6]),
        .O(\p_in_reg[69] [6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[7]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[7]),
        .O(\p_in_reg[69] [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[8]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[8]),
        .O(\p_in_reg[69] [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \p_in[9]_i_1 
       (.I0(\en_buf_reg[9] [4]),
        .I1(\en_buf_reg[9] [2]),
        .I2(\en_buf_reg[9] [3]),
        .I3(u_p[9]),
        .O(\p_in_reg[69] [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[0]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[10]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[11]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[12]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[13]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[14]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[15]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[16]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[17]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[18]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[19]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[1]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[20]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[21]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[22]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[23]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[24]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[25]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[26]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[27]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[28]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[29]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[2]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[30]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[31]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[32]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[32]),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[33]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[33]),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[34]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[34]),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[35]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[35]),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[36]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[36]),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[37]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[37]),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[38]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[38]),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[39]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[39]),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[3]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[40]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[40]),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[41]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[41]),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[42]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[42]),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[43]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[43]),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[44]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[44]),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[45]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[45]),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[46]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[46]),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[47]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[47]),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[4]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[5]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[6]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[7]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[8]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \u_c[9]_i_1 
       (.I0(\en_buf_reg[9] [0]),
        .I1(\en_buf_reg[9] [1]),
        .I2(\en_buf_reg[6] ),
        .I3(u_p[9]),
        .O(D[9]));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000011010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000011000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) 
module complex_abs_power2_35_1dsp_ip_xbip_dsp48_macro_v3_0
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_35_1dsp_ip_xbip_dsp48_macro_v3_0_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
RkZ+fIQgH2cMxAKSZpXhVpz2ILBMPt4Xqwdv3V/HvwLxLv/EuTihNi75r4nG36a8hCyO6rh9obA+
URr6cAmwB7XIMdhXjWsfHJObU+8qyzinrCAlcGc/JPM56LcFkx/k7mLGhacYlYsfgiMd7C2Qb1VB
GAJlwne3TGVNRfYgbVBvYLrIahlZI8gOaBmghy+0SY8gQfpV1mcXDGHOY9SLm7ivDcoVIZtCiiyi
grRP/K4HEkASlAsE/oKO0InrSzWAfZ9nfY+wfVcV8p1KF3MrduieBxt8KJ0k3POrY25D5knG0Q7O
2E99sI0SYw+W89LYtiP5FtyYDmvqR9K0Lu4vXA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
jVxr3jnVNoCRTWC1tTzQzB8a0kAmsG2Qs7AEYhEDGkM8RzZiHv50R86icTho7lGILH3o6HUDYcPe
7JYursa/0fwDrG4Ry2qyi0XIXL/lHYl9L9leCJiUMmb8hMRT837HsM97avrDqh8XcAuzsSDAfOJf
Y63r2d9qvgz8Nru1n3vanOIV26gG7pmHpFzZ0pnP6AGF8+OkaJExny5avWITO4icBFaxF6ZXGmTE
7Ey59udvI17wiV7GuGN2O6FDHRuGJ2p47xCs3ELZytdZTXAGtUp76hRSQTBqwoWmUWDM+qP44oNe
S7zqd+AJyH7VDOuTstQ0Fsq/9AOPP6Q43J/N7g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
fxR9dUZgoQaBJaH6V5li9SJxkKdpLhweeU08
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
RkZ+fIQgH2cMxAKSZpXhVpz2ILBMPt4Xqwdv3V/HvwLxLv/EuTihNi75r4nG36a8hCyO6rh9obA+
URr6cAmwB7XIMdhXjWsfHJObU+8qyzinrCAlcGc/JPM56LcFkx/k7mLGhacYlYsfgiMd7C2Qb1VB
GAJlwne3TGVNRfYgbVBvYLrIahlZI8gOaBmghy+0SY8gQfpV1mcXDGHOY9SLm7ivDcoVIZtCiiyi
grRP/K4HEkASlAsE/oKO0InrSzWAfZ9nfY+wfVcV8p1KF3MrduieBxt8KJ0k3POrY25D5knG0Q7O
2E99sI0SYw+W89LYtiP5FtyYDmvqR9K0Lu4vXA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
jVxr3jnVNoCRTWC1tTzQzB8a0kAmsG2Qs7AEYhEDGkM8RzZiHv50R86icTho7lGILH3o6HUDYcPe
7JYursa/0fwDrG4Ry2qyi0XIXL/lHYl9L9leCJiUMmb8hMRT837HsM97avrDqh8XcAuzsSDAfOJf
Y63r2d9qvgz8Nru1n3vanOIV26gG7pmHpFzZ0pnP6AGF8+OkaJExny5avWITO4icBFaxF6ZXGmTE
7Ey59udvI17wiV7GuGN2O6FDHRuGJ2p47xCs3ELZytdZTXAGtUp76hRSQTBqwoWmUWDM+qP44oNe
S7zqd+AJyH7VDOuTstQ0Fsq/9AOPP6Q43J/N7g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5664)
`pragma protect data_block
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
ju3gJvn6mc7otfo8P4N2aGsZSjLV
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
