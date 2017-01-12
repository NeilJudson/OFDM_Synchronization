// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Jan 06 17:05:12 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               f:/jiaweiwei/Project/MyReusableCode/Verilog/complex_abs_power2/complex_abs_power2_35_1dsp/complex_abs_power2_35_1dsp.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_funcsim.v
// Design      : dsp48_mul_add_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000000000011000011000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_mul_add_ip
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire [47:0]C;
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
  dsp48_mul_add_ip_xbip_dsp48_macro_v3_0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
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
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_mul_add_ip_xbip_dsp48_macro_v3_0
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
  dsp48_mul_add_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
I/tld/RRvT4UY/6otKg7IcfCZ89FeefHgkLgHiHrmA8aQ5zYo/AZe210QE8ZD526LJgcklWc7ClR
iPPMuIlpWhwqhMtdVyeoBKh4b+aNs1sOAt8znRec2rsYGtn2VII8N7uaF7/O7GEgN2uE4b49C5la
2hg5eNZEsqsCenHXNg2zxVCf5B6u58p7BGdvIdRny8q2v6TdNsOtHA0dTXKYr3lFduRZzI/BLYEb
xpEK2oq/2tkvIWMHpQgqeoZRIWXyKtKzNqoqA7mqAh7pl65cmUupnWI9BZzgbHDokn1XzGAJTNRg
Wq4DH17Bdhz+1D5f9BUiC44Ea/OfleSRD7N89A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
mDTM9P376dbdVRvvpYyujjsyM0OQUL/ms6uGJz6kHHI5ymN6f7Kk+zPmKAVcCNdjqVqtZ2Z+Uz2h
2MudoOt3VoeE+rW2Fvted0MCJVZ0KfN29RROprTlWFbqo/IgH2wG5BH4/ZQYdciVVNz0J2GPlxho
CjLu4cHEZwyIjqOVeDnM2ZYm5+S+VnOas2+mvdu9gLT7F0OWU2TKUBm3M9mMyuDiIjl02jGq3jx7
Qd+Q7LDiywiuxHPQL4NXHQCUNH5l+/D0UE0F8cRfOuuKzadgbZF59k/UjLKX7pNJwcQRo8WBJy+E
9cAipyrxgITj5mnId6V80yFLP0lZdWMRAU1jNw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
yxz7/qRGGGIB/QafPd061ycA7nTGWECal4GeNv6U+seeDaSHmgq1AMELYrqxSCgzCuLOmOcfHVdp
aprQHQ1Q9TMK5HKnc5fchs2JgpZxV8tqcqOBNVM1xahQqVn4rIkXEpj6aoTdyd4dAdtaHhbZCQ+z
OKn3e+7B2+68xwlWzI8S/2uwn/F3nGI8qwt0eO22uGrH/+d8utQCszORmEnKI8/M3EpP8E6Fg4Cb
1dG27lPW38ZfY3j7qAeMhaQUadPO8BwlKSINs0E0kPShWB6U8vIOc0BuhbwwSXWCJ2Ji4sL9ZGjY
b38UbLKnqqhUVYjBM3DAGHWQ5JutvDQL4tqmOcjgS4HwFJygoOXoIqDCp1t/RANvqZ/D1qfclA6w
sepTdwjbaQ6KIrDJYtIN/stUNX+Ss/qVOIDoY+Ik6ckuKYhGh/1poDKhCDENr88eyJOJCZRaCFqL
QKmRhTlzD/1uEbxYSsazsX9G0L9D4omh+iv1oXCC93jr9Z+q/hLkcFSa6W+GCnOrtRgc+g/XaI8L
K04IBYvNp4phO7zKhys5bP+fKx7umQYNhcA6SYeXDMjFOJEoefv6MjVeP/4oZhBujTKnRixXWVsZ
mYPBPWTqKkafLR+JgYSkKKbyYtklCmUP8tMCoC1n+j8a5XCtHUTopcPgiHrdcZF/I947Ue70eIme
kPzjSnwdMhHW+UbmeuGgsnlrQ1eJab2nHG3G/HYC9YWPxqhRZTdzBqChhv9EVOwIEPvmmkfpbn3p
DUg2v1OeMXi8UYvuouKywiQj/+PzM3R4F+455SRkmb4aWMzUsIqAFWnxl1C+FKxS0Hkv8egMopq6
+twp6XiHAMHfKRZ+lW7cnnlwXEYYSuNzUkyco99ui6M4w/M83FacaER1T0RJDBtlg5fKEB2tQLwt
m7btumyKorQ0KsVYkZ1pakelmo2hkC7NOeILJxqs0jIrJ7T9chwZ/2EuuJnSLE3n3gq7MwIr7GZx
TGD/xNg9QBtZEE8ktI/qVxfpD2HlcEGENs17v7zksjHczAIRoZwEmjUZLKBfOKKEtZ0MwyifIIlH
YmTVSoMqSgWB+YgIHtM+E2k5YttrrJ/u/EloQeqcmT2rhMYdA4ZiAuvy7bBbvJqTykiSBz7wGrSP
NsGx0EQTCGVk/WXiYnwKy7+nSssCjzke9GJAikbpJLoXo93lbglmqfNbtfvfE8as+zTZ/oYjawhC
ax5Nzx2o/wcvUiVB/uUAxVhdZGZ56Tvnl5YA1kxWugpkyuG8YUCrzpdSLU/ftOtrg//XrK9HmuTy
clpOP+/Y4+U11e9MpNGkWUiNQYpep/afiHQuTbZdt+vNVmWr0waz/aVcs6/hTAlu3n4xbqfzWPiD
4jtqr9Kf8ebG7KjW+bb24e0zDg1DNWlQ+O/dl7d5Ca9XObCzjj4qBWkZKm7ReKWUa/HS0Z0bpq0m
ZmkATB7VJiiMlyAjAv4vXiSxbkbpZGjmTtJFBLRnJNfqFDcJ242Wt1arwSAAb06ZDOXKFT6dc+tJ
aPwHInjdHZX6PckvMfxdlZhyDfJjz25/WD5e3Yohfr5k4JPiebG71PAVY9lvjBF+0ksWLYGy8WM0
WGqJjb2NH8a4QYDWIfaEmhIsGJq3FW3gcNs+IXV4WzKvMFMiLyKI2YQv4rrYxpyCIe3cCxsIm2U8
j5E/SIZu7WOl0OTcpnDzMJzx9PHZi+VYsfZdpmjDXTDknjzN/tb2HHpfXKoRrcCdcH1KIXq0Cvf9
Tvil/+RPMn4WMfb2cEba8r7zFkSjrMXTHnxtw+r/OQL1YsUGqo1ZOe5Ddxbrxn23pkkeRN3KFzH+
XJRQxa9qv1c/yabsisNMDhGPm3BlVj0s7jno411ErfeHIGY7jcsgxmI+R2lL1fDIry8ShnihHRBE
nCmFvUqPs49UfKXZpPMtM2FrlD/sbVIYGMX8Yl9W//Scy7bsJL50eBN0znIOZ/yE1HFXy2enSMMt
tqBIdgpk3I7O7Mepp369niW4CGJPaXhPwEWSFnGfIREzE/jad8rWo2ZZNzHobAWJnNR55dBjoO1w
rUGZZp3N0M+YxX0pmJBfK3PCToFn071Vr48WasEKBGW2pc9sQk7zlClwRkyiSe2nCcBkfqdIoALP
zkP3+BB0TEvp3E3ugvHUEZ96jw+zVThr6QMLT3TbkCSFxVuPWHhgXEU6+FWynYVnhqPeHRGyNEBh
ByYGnY53a/6w7cpCDPm3bZ7GeOrqYf6nJ9wXYt2BRb7MRU6x34P+CHyG+e9PEmSzZjGX3jD//8lX
qNQ0/xly61z1KKX2RNsHCx4GaVVCRkO/ofgHZIiq1M7N0PMIdiY+1SihUT4ecAJEsSGUzA1lmrZe
3VR7hOxqvEk6JeFJSFEeAGsn310tNfRDN0yzgMVqlroNBeECAcsQIHqtN8oZ6tlaY9jnzGYdSbGn
ihALVCCU5yb6dKgA00ivxwrrJx48Rj+Oi+6986gJmmG+v7qnC5JdD4DQcAxNBP93EzHFNAUCCs37
8xVaRrYLF3Ba+L9Ltiy449jZ4wTZ024tQVpXzJr4sPLLlXMnOVADQe5KxwXdHyta+4im/SwK8ZJJ
u8u2a4ifmW3ABVJ6dk4nGpVEz+6f8OGa+9vL2Ya+UDYfXWkIz2WNrKScZL59A5MFSXiwb7WzvSxw
hsd7q+Ca2S8Vf28TUMo1lqd9Tnvqc3n25vaMtJtLkJHbPd9+xqt7vJRUEXyXWQ6v49p+L+hIG9gw
4juH46BigNOhnsxARi9hYl/8VPtfWKde+vjZ2gg8Q0yjcQsj6ffK3bCnRtplv2NDzsalZ2xHi/H4
FS2fMEB4gAOquw/7UW3Rko1hetYUR99SPmV7QHAqGfX2hKPgvSuV4SbrqHi7ClFbbUXnqqwKggs/
7Lhh2jz3wFaRd8/iHph/NILpIsOAhxhqaCzX5k7aYHpz9wwHQ4JWS33QTQjor9uED11Y3NGUQwzG
66O8KZP0cOfLCAMOeAsVXjrMYQUhCxpg3JRStrFmPtgonbRoPbmiY48czmz1Zr7S1fdHM15e+wdP
vd4JKWQe/8kw5jVgOEBwuNS44kCo/TDLRbIp1C2TdvjXZ8lV3weblLVmNUCCfLHHrCFP2ac1+ZYS
bXz58j6r7Qv6Q6ADWJj+w185j6XCjZp7HBKyHuht2tXKHp6TIzohI9QC2sCuWxb7/2/D508HZiBc
fifSxP4rTeaJ+P2kAl6A64NiUVDO9cYLC2EgX8G890q00XN/S6A2jHxgM8gvp1bA0uG+UJOpbVO9
qTtrDEzbIVteD3FGN3aVLMCZVyAsF1uRot9HYgPcj/oo41ACDULQmcUZdro5uW0H5xs+7oUW0P4b
6aYxpO238ayEglsg4mGyR1DDOkSaPoKvD9z2jATsXMzxSwX5dKSfjcGEKH/d6tLrAb+LxBRerLWl
YTXg/Dt4nv67k/zfLfb92n45B7+yLdKR46UyX5R0H8tmCpugo5nz8j3AJZW/7UTwrRj2wVzpp2Ry
dl4IEIbCBhljEC9D8S+OiQirKXBxXC957FJRmxt61wm0Yt1kRMyFcJUweg9oDM87sxL/Fc4Kc161
Jo2dSLxnlK21H2vqrDG1IMDjiw6YEzUcRGW+1NHnKktOLctQ0BO+0YxxcoQynSBsmPPOB04LXvER
Byw5dDEaN7FNkMGYBWiHRl2YG8HKjp447BRUGMldVZxIqa8ogc9ZAgS6rGBCT3Idjk8k2iExrzdc
GZXcCwiLCX9JZqM62DdVo5ucAallv4+Vwpxx7zub7bhjAaALFPs0gb+7eDkirt6IBKFFiYzGXBui
r8dlMk8UbQfLBzAwd+elWBCuW/x9Y/4i57483b8oVW1Bvzpow9/UeO2hcjr37j/dQZLG+2o4aKaq
r7SQ5nYVfz7rM7aEkyzuXdbjvU3Yzwc2A9/Cx4G6pwfInbUtN4G4Ixo7ayL3j9vlPNhmACyb2erZ
fDH/UUI9NKRRtPxieFV3kms8jjXwa2Krw8ENNy4jzzVTq7SetAqH5SQieY79UXHRHqE1kNs1axF2
nBuikbaifBs90JOmDBtUAKPIlcnpgxQnGltTDgDhsZuObO/fERLb8JT9Q5D8NKFF95Hz63KLq8Ir
Z662ntjeEeg99YGER++9+3u1lUxcLVHKWNzZbpbBmR3P42VU8TjgDi0cxIKiX1M0951ZRRX9DLj9
0X8EldStSwmmUh1TLaq9o08BjvrJsB7zIhNjRPUULjKcO8LP8VKUfhX6R7w5s1dXh92A5HPCOTiH
vTszrp34GyMpHJuQNMmYBXkpRtzP5VEuqURry+4CIoh7vfTYChhCtET929x00tkY0+banph68VlF
mH/FvOYCblKt4DgmaqnGY7SsguPeB+RXr/qoNEoMBMFgX8QP6cLG+GSJsMcYu+dWT42FtWWIR3wu
Oad6rbPAWanUbFZpsVu5uXsz9Vzwk3mAwSKrnXqMT1KkTsGTLcF65No+TyvB9d6qFu5yl5Pr/d/x
Rr3Scc3MLyvN6Z2jZwe1qa5blXYDeLN/knd2p6kpY5ikyR3rwqlKFs8saoLU3oES3UlKRiIU04ep
tU92pN6Ods+12YGs4YE6rqvxigRwFXdQTJ23flow51rR29Q1l3mq/R+B92HwgXKb6OyKMTfruFE7
4cnITkUZTaWe3d598uEISF6vfmAoJo47EisZ
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
I/tld/RRvT4UY/6otKg7IcfCZ89FeefHgkLgHiHrmA8aQ5zYo/AZe210QE8ZD526LJgcklWc7ClR
iPPMuIlpWhwqhMtdVyeoBKh4b+aNs1sOAt8znRec2rsYGtn2VII8N7uaF7/O7GEgN2uE4b49C5la
2hg5eNZEsqsCenHXNg2zxVCf5B6u58p7BGdvIdRny8q2v6TdNsOtHA0dTXKYr3lFduRZzI/BLYEb
xpEK2oq/2tkvIWMHpQgqeoZRIWXyKtKzNqoqA7mqAh7pl65cmUupnWI9BZzgbHDokn1XzGAJTNRg
Wq4DH17Bdhz+1D5f9BUiC44Ea/OfleSRD7N89A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
mDTM9P376dbdVRvvpYyujjsyM0OQUL/ms6uGJz6kHHI5ymN6f7Kk+zPmKAVcCNdjqVqtZ2Z+Uz2h
2MudoOt3VoeE+rW2Fvted0MCJVZ0KfN29RROprTlWFbqo/IgH2wG5BH4/ZQYdciVVNz0J2GPlxho
CjLu4cHEZwyIjqOVeDnM2ZYm5+S+VnOas2+mvdu9gLT7F0OWU2TKUBm3M9mMyuDiIjl02jGq3jx7
Qd+Q7LDiywiuxHPQL4NXHQCUNH5l+/D0UE0F8cRfOuuKzadgbZF59k/UjLKX7pNJwcQRo8WBJy+E
9cAipyrxgITj5mnId6V80yFLP0lZdWMRAU1jNw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5616)
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
