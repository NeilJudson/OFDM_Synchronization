// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Mon Nov 21 19:05:40 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_ip_mul/dsp48_ip_mul_funcsim.v
// Design      : dsp48_ip_mul
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_ip_mul,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_ip_mul,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000001000000,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_ip_mul
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
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
  (* C_REG_CONFIG = "00000000000000000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp48_ip_mul_xbip_dsp48_macro_v3_0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
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
        .CLK(CLK),
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000000" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_ip_mul_xbip_dsp48_macro_v3_0
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
  (* C_REG_CONFIG = "00000000000000000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp48_ip_mul_xbip_dsp48_macro_v3_0_viv i_synth
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
Y45e60T2CwtxVGhPZOiwndfxj4dG0v8kMdlruc2b/h3FbBKTvX1WGrkFq2VV+on/GAqfS08p/lUw
S8Mx+yz8uGVdBwjFva1OQQUiZKBre8s78xBtrbW9bdOGVnEpTOnn6CqXR61qfY+/KkPxfUZwrIsJ
ZJRTH4MdWQc6WPNlk5cm23XTRUQ8J0HwFa7+G8Zth73cKCc/OC7aw0+HaWfizwkOEOWnBVn43uAV
TXa6ckkKUhYZwySJRuSY7iDt0tW/iR7Px8cjOmJOFrNUiH0yy1xsU2VUa6j+QjSuLoTV/8TF4Lmn
DA6aZc63LWrbFQ7j8Ve7rxaUitQhaAcItnwyOA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
QfR0oRdyFmGSe0xOrq28YdcecKRv2Pv6G6rxdC7hIWJ40RPkhlwP0i4Tl3LKRbqXcJ4kSa57jK1o
ltrOWl95ZuCJopinXEPF3IU6lPsShlNyk/OEw3tatuxCB2S1Zv+97Jfb8RP+ZhNsJgruTcb0nb0c
hxpchJdjmFo8yGuQz+riPQiyq6OR3NhVVe66kqkDvMbg0CRZxvAk6Hr7inGoeUs0DHCEpDSEiLzo
dQz54ZruH7bFjqhfKetIzguZFFR1nzqWszTIm5s8djHbekOcgb0wRuE3zK+p9xHoYUnruH6By9NF
2w4am+XTCqQOLHCYzwiXngd3fEjTpaF+VSm+MA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
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
Y45e60T2CwtxVGhPZOiwndfxj4dG0v8kMdlruc2b/h3FbBKTvX1WGrkFq2VV+on/GAqfS08p/lUw
S8Mx+yz8uGVdBwjFva1OQQUiZKBre8s78xBtrbW9bdOGVnEpTOnn6CqXR61qfY+/KkPxfUZwrIsJ
ZJRTH4MdWQc6WPNlk5cm23XTRUQ8J0HwFa7+G8Zth73cKCc/OC7aw0+HaWfizwkOEOWnBVn43uAV
TXa6ckkKUhYZwySJRuSY7iDt0tW/iR7Px8cjOmJOFrNUiH0yy1xsU2VUa6j+QjSuLoTV/8TF4Lmn
DA6aZc63LWrbFQ7j8Ve7rxaUitQhaAcItnwyOA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
QfR0oRdyFmGSe0xOrq28YdcecKRv2Pv6G6rxdC7hIWJ40RPkhlwP0i4Tl3LKRbqXcJ4kSa57jK1o
ltrOWl95ZuCJopinXEPF3IU6lPsShlNyk/OEw3tatuxCB2S1Zv+97Jfb8RP+ZhNsJgruTcb0nb0c
hxpchJdjmFo8yGuQz+riPQiyq6OR3NhVVe66kqkDvMbg0CRZxvAk6Hr7inGoeUs0DHCEpDSEiLzo
dQz54ZruH7bFjqhfKetIzguZFFR1nzqWszTIm5s8djHbekOcgb0wRuE3zK+p9xHoYUnruH6By9NF
2w4am+XTCqQOLHCYzwiXngd3fEjTpaF+VSm+MA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
qR+oTkf3bw==
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
