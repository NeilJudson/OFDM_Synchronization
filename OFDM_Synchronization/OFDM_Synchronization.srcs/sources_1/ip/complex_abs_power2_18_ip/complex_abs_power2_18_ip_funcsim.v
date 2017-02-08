// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Feb 08 11:24:15 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/complex_abs_power2_18_ip/complex_abs_power2_18_ip_funcsim.v
// Design      : complex_abs_power2_18_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "complex_abs_power2_18_ip,complex_abs_power2_18,{}" *) (* CORE_GENERATION_INFO = "complex_abs_power2_18_ip,complex_abs_power2_18,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=complex_abs_power2_18,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "complex_abs_power2_18,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module complex_abs_power2_18_ip
   (i_clk,
    i_data_valid,
    i_data_i,
    i_data_q,
    o_data_valid,
    o_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input i_clk;
  input i_data_valid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]i_data_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]i_data_q;
  output o_data_valid;
  output [35:0]o_data;

  wire i_clk;
  wire [17:0]i_data_i;
  wire [17:0]i_data_q;
  wire i_data_valid;
  wire [35:0]o_data;
  wire o_data_valid;

  complex_abs_power2_18_ip_complex_abs_power2_18 inst
       (.i_clk(i_clk),
        .i_data_i(i_data_i),
        .i_data_q(i_data_q),
        .i_data_valid(i_data_valid),
        .o_data(o_data),
        .o_data_valid(o_data_valid));
endmodule

(* ORIG_REF_NAME = "complex_abs_power2_18" *) 
module complex_abs_power2_18_ip_complex_abs_power2_18
   (o_data,
    o_data_valid,
    i_clk,
    i_data_i,
    i_data_q,
    i_data_valid);
  output [35:0]o_data;
  output o_data_valid;
  input i_clk;
  input [17:0]i_data_i;
  input [17:0]i_data_q;
  input i_data_valid;

  wire i_clk;
  wire [17:0]i_data_i;
  wire [17:0]i_data_q;
  wire i_data_valid;
  wire [35:0]o_data;
  wire o_data_valid;
  wire [2:1]p_0_in;
  wire [47:0]u2_C;

  FDRE \i_data_valid_reg_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(i_data_valid),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \i_data_valid_reg_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \i_data_valid_reg_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(o_data_valid),
        .R(1'b0));
  complex_abs_power2_18_ip_dsp48_mul_ip u1_dsp48_mul_ip
       (.P(u2_C),
        .i_clk(i_clk),
        .i_data_i(i_data_i));
  complex_abs_power2_18_ip_dsp48_mul_add_ip u2_dsp48_mul_add_ip
       (.P(u2_C),
        .i_clk(i_clk),
        .i_data_q(i_data_q),
        .o_data(o_data));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_add_ip" *) 
module complex_abs_power2_18_ip_dsp48_mul_add_ip
   (o_data,
    i_clk,
    i_data_q,
    P);
  output [35:0]o_data;
  input i_clk;
  input [17:0]i_data_q;
  input [47:0]P;

  wire [47:0]P;
  wire U0_n_100;
  wire U0_n_101;
  wire U0_n_102;
  wire U0_n_103;
  wire U0_n_104;
  wire U0_n_105;
  wire U0_n_106;
  wire U0_n_107;
  wire U0_n_108;
  wire U0_n_109;
  wire U0_n_98;
  wire U0_n_99;
  wire i_clk;
  wire [17:0]i_data_q;
  wire [35:0]o_data;
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0__parameterized1 U0
       (.A(i_data_q),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(i_data_q),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(P),
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
        .P({U0_n_98,U0_n_99,U0_n_100,U0_n_101,U0_n_102,U0_n_103,U0_n_104,U0_n_105,U0_n_106,U0_n_107,U0_n_108,U0_n_109,o_data}),
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
endmodule

(* ORIG_REF_NAME = "dsp48_mul_ip" *) 
module complex_abs_power2_18_ip_dsp48_mul_ip
   (P,
    i_clk,
    i_data_i);
  output [47:0]P;
  input i_clk;
  input [17:0]i_data_i;

  wire [47:0]P;
  wire i_clk;
  wire [17:0]i_data_i;
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
  (* C_HAS_C = "0" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0 U0
       (.A(i_data_i),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(i_data_i),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .P(P),
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
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000000000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) 
module complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0
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
  (* C_HAS_C = "0" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) 
module complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0__parameterized1
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  complex_abs_power2_18_ip_xbip_dsp48_macro_v3_0_viv__parameterized1 i_synth
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
fkwRXuQgiNRnas2wclrFRzb7rsT9wVYKErQRY/j5L2EHmg+vzHaZuRAi+aAgKIaqlSM8ev2J9BhF
UU7hJ5pivcrgqruUNQLHzmZE2OHLvsQhD308Inq81op9atgwrko19RaKII6HvmFMUF2mdOSGDiey
Yk2TngCUSRvezMcnoL2LbCTogeUtX3CUvfu1D/QcIxAbA7Bh/2dGBkDmWjpO3w1O3aNaDJExiXj3
1+322EvkMqxvgTRP4Xv9hhTeB/wFHStEfKBj7INkQtqkuXZxDdzoTWvK9szyRtlpdGL6iYZj4B45
I1DbtOwKVO9bGOsQKCBLtRkN09fHkG/CUCFNoA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
OIbAyzqPiF2zxsYfS/L1jyDny9AoFILc4TGJ+86m33yxw6bIVxTZvSpEfq5p7pSHE5/Kh7o0MqEH
Ca6r4e1g+aW6STuJ1zTh/BcIFOjX0fAQqK+XMlADe8cq87jqRD6qJLEjjmZ3gUbtsPmDRIsoqVGO
vctqPcMecWZrx/O4BrrwiDWUeMf5gDf3+8EFQR80HrCYgezftrONZogxKs3ldid+/T/b/IkQPZvq
4hE2A69vW55lQoAYCUqDAHFtwCYAWch1rgPwhZDPuHQRA1kwqBESIHtXHbam23fao8AAY70BPy6f
S3c/tZW0+x3G5uIjAsBD2KDK1vIJ1mKRe6g7ww==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
+g7Cz0iuy1t3MJT2+g18JUSU
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
fkwRXuQgiNRnas2wclrFRzb7rsT9wVYKErQRY/j5L2EHmg+vzHaZuRAi+aAgKIaqlSM8ev2J9BhF
UU7hJ5pivcrgqruUNQLHzmZE2OHLvsQhD308Inq81op9atgwrko19RaKII6HvmFMUF2mdOSGDiey
Yk2TngCUSRvezMcnoL2LbCTogeUtX3CUvfu1D/QcIxAbA7Bh/2dGBkDmWjpO3w1O3aNaDJExiXj3
1+322EvkMqxvgTRP4Xv9hhTeB/wFHStEfKBj7INkQtqkuXZxDdzoTWvK9szyRtlpdGL6iYZj4B45
I1DbtOwKVO9bGOsQKCBLtRkN09fHkG/CUCFNoA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
OIbAyzqPiF2zxsYfS/L1jyDny9AoFILc4TGJ+86m33yxw6bIVxTZvSpEfq5p7pSHE5/Kh7o0MqEH
Ca6r4e1g+aW6STuJ1zTh/BcIFOjX0fAQqK+XMlADe8cq87jqRD6qJLEjjmZ3gUbtsPmDRIsoqVGO
vctqPcMecWZrx/O4BrrwiDWUeMf5gDf3+8EFQR80HrCYgezftrONZogxKs3ldid+/T/b/IkQPZvq
4hE2A69vW55lQoAYCUqDAHFtwCYAWch1rgPwhZDPuHQRA1kwqBESIHtXHbam23fao8AAY70BPy6f
S3c/tZW0+x3G5uIjAsBD2KDK1vIJ1mKRe6g7ww==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11264)
`pragma protect data_block
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
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
