// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 19:36:40 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000000000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_mul_ip
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
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp48_mul_ip_xbip_dsp48_macro_v3_0 U0
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000000000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_mul_ip_xbip_dsp48_macro_v3_0
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
  dsp48_mul_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
SfRUBDAfhgOcXTsHL8q563i+6p13JnCcOi8TP8/vZ1BNfW/WpOFlSgsxSq0fyc5w0PDimp2RvjFF
uLMcIr3Purq7Wg6Bn9pLsAIBEWNiDHBtkvG3OJ084zhfGWkwUsopqkffeVZt1lXScN4QXZy28o6Q
yDFMJgEbsDR6mQKfWhpJx0RrOcUAUF9L2K9QvNvF9vo7QBCZYGtV9OnIngEvxnw44WUYU7T4C7h1
YkNId9ok6z2j8ABUQrCkWivJC+hzpw+KSvBXXAjc8sFRtAahB36fUxAYVfcj4o++gS+z+mPRp5dR
UXmQygr77bTdITP8K6BqcJZQ7kQ0S9F3KWU2Dw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
GXfXo3MnHolK2V4rUnYJTzNv31Z3HRn/SQgPRmnbEAEiQTPg2nzHAK6zpkCu0qb/pTqj9r3CJLAR
oF8T5CNgiNzxVQZNPQcGN768VoH10RYWN6Y0T8CKGVr6owHBEEU7rnIWHRt919QfxrX8C+LFzuBc
p3WRYd6S7kIu0/c5sEsnnV/+k58lU0QO08IerXkhykpr/RGnoKWE0LxyJyL6a8Ss2DdNihqgDyAD
4Y9Y1MIAXXUNmMJtt6oBjrelMz/7fvEbNoKnoMWcHzQBcMJS1TK+aAx17CvSNlR8nmYeDRVgx3oT
wjEMv9sIKj13RXco/gUZxSeO6zQwhPK6zeTr2g==


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
SfRUBDAfhgOcXTsHL8q563i+6p13JnCcOi8TP8/vZ1BNfW/WpOFlSgsxSq0fyc5w0PDimp2RvjFF
uLMcIr3Purq7Wg6Bn9pLsAIBEWNiDHBtkvG3OJ084zhfGWkwUsopqkffeVZt1lXScN4QXZy28o6Q
yDFMJgEbsDR6mQKfWhpJx0RrOcUAUF9L2K9QvNvF9vo7QBCZYGtV9OnIngEvxnw44WUYU7T4C7h1
YkNId9ok6z2j8ABUQrCkWivJC+hzpw+KSvBXXAjc8sFRtAahB36fUxAYVfcj4o++gS+z+mPRp5dR
UXmQygr77bTdITP8K6BqcJZQ7kQ0S9F3KWU2Dw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
GXfXo3MnHolK2V4rUnYJTzNv31Z3HRn/SQgPRmnbEAEiQTPg2nzHAK6zpkCu0qb/pTqj9r3CJLAR
oF8T5CNgiNzxVQZNPQcGN768VoH10RYWN6Y0T8CKGVr6owHBEEU7rnIWHRt919QfxrX8C+LFzuBc
p3WRYd6S7kIu0/c5sEsnnV/+k58lU0QO08IerXkhykpr/RGnoKWE0LxyJyL6a8Ss2DdNihqgDyAD
4Y9Y1MIAXXUNmMJtt6oBjrelMz/7fvEbNoKnoMWcHzQBcMJS1TK+aAx17CvSNlR8nmYeDRVgx3oT
wjEMv9sIKj13RXco/gUZxSeO6zQwhPK6zeTr2g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
E+14jf+1fw==
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
