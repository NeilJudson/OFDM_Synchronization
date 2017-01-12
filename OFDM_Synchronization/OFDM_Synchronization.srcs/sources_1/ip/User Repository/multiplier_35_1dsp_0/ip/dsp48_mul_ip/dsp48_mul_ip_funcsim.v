// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 19:38:46 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim {E:/jiaweiwei/Vivado
//               workspace/tools/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v}
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000000000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
qe0UZNTmbxdfJL8D7I8jfbamaBLsnJlbJSTfMMhN/gYryWIil2O3DaAr94mcHAmd+3osNhyc0XyT
z+4IHaxX+5zHKy3LC1jDpxT+lQjjTWO3ePs5oqtOZe2bH8mY10zbyH/dn+G9GOE7oa1T5Ob+GgOU
jK8V9+vThi2/6LwuniqZIx7va5g/ZH0tjShoQW0Odvbe3V3L2jQKoxyfisATSBlp88ppuoVnTHaZ
3SrFsZ9BzACGtJFc3J8yfN5SEWI5UboOzTjjge5lolBifsc5sDxQtncMcRt45+W8Zpv1H8poOlld
HyTiuG2vSKYbdPZW2ZQQbK7daTGcALs0sXp9zw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EIAbOKmMXISuP/cTPGkSt4CSGt4bptlB5HiAXGLYnqvVVubjUGQ/SblvxOaTDosGZtjCv0+/mMtq
LPGUe9ORHG+naQ96lbre9+98Z/yQftnO5A5my5YgO6fcj2pVJjRyJD/bDyecDi5mUYzskQLGUNKN
TYSZHe4rToyp8thjBhE1lRBGZNzusQyNfMlxwnc6elYQ+LFGurMgDAyXWUepYRNZvLg2u/TO2fLw
1cCW66ZZUaGymy6WlHhM9rfrDfq8gOd8rJQCVI8eccfSrfcwiCkLcaPBtn/7HJXnflo7I1waokrR
Er2WaPh4DY9CrCw/miM0fMx79R+QBvs8Rq19kQ==


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
qe0UZNTmbxdfJL8D7I8jfbamaBLsnJlbJSTfMMhN/gYryWIil2O3DaAr94mcHAmd+3osNhyc0XyT
z+4IHaxX+5zHKy3LC1jDpxT+lQjjTWO3ePs5oqtOZe2bH8mY10zbyH/dn+G9GOE7oa1T5Ob+GgOU
jK8V9+vThi2/6LwuniqZIx7va5g/ZH0tjShoQW0Odvbe3V3L2jQKoxyfisATSBlp88ppuoVnTHaZ
3SrFsZ9BzACGtJFc3J8yfN5SEWI5UboOzTjjge5lolBifsc5sDxQtncMcRt45+W8Zpv1H8poOlld
HyTiuG2vSKYbdPZW2ZQQbK7daTGcALs0sXp9zw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
EIAbOKmMXISuP/cTPGkSt4CSGt4bptlB5HiAXGLYnqvVVubjUGQ/SblvxOaTDosGZtjCv0+/mMtq
LPGUe9ORHG+naQ96lbre9+98Z/yQftnO5A5my5YgO6fcj2pVJjRyJD/bDyecDi5mUYzskQLGUNKN
TYSZHe4rToyp8thjBhE1lRBGZNzusQyNfMlxwnc6elYQ+LFGurMgDAyXWUepYRNZvLg2u/TO2fLw
1cCW66ZZUaGymy6WlHhM9rfrDfq8gOd8rJQCVI8eccfSrfcwiCkLcaPBtn/7HJXnflo7I1waokrR
Er2WaPh4DY9CrCw/miM0fMx79R+QBvs8Rq19kQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
MgEdJuqe1g==
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
