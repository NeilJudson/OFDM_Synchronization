// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Dec 09 15:12:50 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000001000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
J6kFmI14Sbg2odq855lacqKmguSEt9KBuv6g4fM/qOUBMpOmb6ADAkRtHXjvjtSIJaU2U3zyCpRa
yJ8OKQfgyFTwhoZh1KBSEVA25ATfWd+iIHiL8wDTXDUXvV0SIBOzXaXT2ERZbCtGgiSY6P9UjKEm
mfspeniIPhODw9zr5AmDy7rOPPs2q+U8AbHrNJuB3p6Jcgc5oqLPQ0Cgld7zjhG/TrwdQVUexrLk
YlE9jakfRdQx0pH14FoI/KYSNC8nBxBpygkmn6U3gJLpZn4OvHF109Gsn1pddIT1QtkoqC9qjbf+
uwFKtG24EdDt9+sUDfafV9hWb+0CIeljotVHYw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
AcIanWTfMTOs8wS3q/uSbvIOIlXH4HrZ2WVTN8VOA1An1V2JhbzKf/TPNhC7u9L0LxY+V/wYewtK
CjHa26H9w71cvOS4VPXcijH3M5V3dUIiV9VPvJNnBimqD4mYq2bnBoeNHpZnV3VD0xtgGEmisVg8
Y0WNo5bqibugHpiiPWakjP1MfMfBgSINDQX91YGVdv16IFDG5JBn66R1r2xxAk8YmJSXGPuhITBZ
L7K5wvP/hMwPYYKizSUcOfKf5LUTBJFAte/BAW4z+SImqWzAkDv6VI5iqOK6Tj3x0kLA9jPyIOmK
YXZJ0c70J1sBoV+ZC8uqTveuu8HZsoythn5i4g==


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
J6kFmI14Sbg2odq855lacqKmguSEt9KBuv6g4fM/qOUBMpOmb6ADAkRtHXjvjtSIJaU2U3zyCpRa
yJ8OKQfgyFTwhoZh1KBSEVA25ATfWd+iIHiL8wDTXDUXvV0SIBOzXaXT2ERZbCtGgiSY6P9UjKEm
mfspeniIPhODw9zr5AmDy7rOPPs2q+U8AbHrNJuB3p6Jcgc5oqLPQ0Cgld7zjhG/TrwdQVUexrLk
YlE9jakfRdQx0pH14FoI/KYSNC8nBxBpygkmn6U3gJLpZn4OvHF109Gsn1pddIT1QtkoqC9qjbf+
uwFKtG24EdDt9+sUDfafV9hWb+0CIeljotVHYw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
AcIanWTfMTOs8wS3q/uSbvIOIlXH4HrZ2WVTN8VOA1An1V2JhbzKf/TPNhC7u9L0LxY+V/wYewtK
CjHa26H9w71cvOS4VPXcijH3M5V3dUIiV9VPvJNnBimqD4mYq2bnBoeNHpZnV3VD0xtgGEmisVg8
Y0WNo5bqibugHpiiPWakjP1MfMfBgSINDQX91YGVdv16IFDG5JBn66R1r2xxAk8YmJSXGPuhITBZ
L7K5wvP/hMwPYYKizSUcOfKf5LUTBJFAte/BAW4z+SImqWzAkDv6VI5iqOK6Tj3x0kLA9jPyIOmK
YXZJ0c70J1sBoV+ZC8uqTveuu8HZsoythn5i4g==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
ybG+AkcJgA==
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
