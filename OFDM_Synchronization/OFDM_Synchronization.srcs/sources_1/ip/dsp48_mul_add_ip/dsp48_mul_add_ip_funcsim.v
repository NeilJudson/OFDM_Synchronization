// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Dec 16 14:59:38 2016
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_funcsim.v
// Design      : dsp48_mul_add_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_add_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000000000011000001000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000001000100" *) (* C_SEL_WIDTH = "0" *) 
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
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
ajGn/1PZ8hUhyFDpFF6QKnegRSMoHfmYhhAq+uMr0imN8GrfJpLoS/M7+pUTv2WIfqc3lygnJNkX
lhkC4LhWmRsVLqQdhqT1l1GxFQZ8MAh0OXZn3qJjNtv6auFet0x3bWC2+WEAhekACTogie2Gojjh
pqsCZrW6nxkfNkRyf6RDEnxJXuop6TDRMB0sdzMFOIphQbu3QhooZ8U493lAHYB2+zHGhvnxOQrd
rHL8u7L21kosz+SF9CPthXcuJA2kjlLPImX6eeE8xszoDzCmsPFcFZ9Beh2mztmf2+PqVk9yshbT
Cc5fIcaz4L4zaC1/4+EF62BaIbqJHVb8gcRpTA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
g12PrAwa4wJwyEcO9KV1adQkuYkeup9bjuv4eDWpzYhkzB8FcdOen6Gz2Xd9HbPFRu9Qd+w8TPIE
6zrJUCo+yDfQVT/S+Qcc639LxeaMC3wjPDA0HLuWxNFj7o/hKKFkfeV0OVrm22JkQ5aRlmQH2q/P
UcvTMAVAPMaUrz6uc7iGQwZtQCC0gtC3nV/RmhRKEx7Wx8lGRxUx3bOkeCau9jj0CfZwYuwQz8gO
ia21Ea4kJqW2JXzPr3lZCUPuw8I6Fod8/3VBHGdYRt2saJqg7pxhHoIFwxyxAnwv/1HKUnm5311V
K41v5R/IjCIirFYShNC2N89PVgW6yPK1SQz2zg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
/tqtO19fouoql11xiqAYUY2QGI10cmk8ZAE+
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
ajGn/1PZ8hUhyFDpFF6QKnegRSMoHfmYhhAq+uMr0imN8GrfJpLoS/M7+pUTv2WIfqc3lygnJNkX
lhkC4LhWmRsVLqQdhqT1l1GxFQZ8MAh0OXZn3qJjNtv6auFet0x3bWC2+WEAhekACTogie2Gojjh
pqsCZrW6nxkfNkRyf6RDEnxJXuop6TDRMB0sdzMFOIphQbu3QhooZ8U493lAHYB2+zHGhvnxOQrd
rHL8u7L21kosz+SF9CPthXcuJA2kjlLPImX6eeE8xszoDzCmsPFcFZ9Beh2mztmf2+PqVk9yshbT
Cc5fIcaz4L4zaC1/4+EF62BaIbqJHVb8gcRpTA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
g12PrAwa4wJwyEcO9KV1adQkuYkeup9bjuv4eDWpzYhkzB8FcdOen6Gz2Xd9HbPFRu9Qd+w8TPIE
6zrJUCo+yDfQVT/S+Qcc639LxeaMC3wjPDA0HLuWxNFj7o/hKKFkfeV0OVrm22JkQ5aRlmQH2q/P
UcvTMAVAPMaUrz6uc7iGQwZtQCC0gtC3nV/RmhRKEx7Wx8lGRxUx3bOkeCau9jj0CfZwYuwQz8gO
ia21Ea4kJqW2JXzPr3lZCUPuw8I6Fod8/3VBHGdYRt2saJqg7pxhHoIFwxyxAnwv/1HKUnm5311V
K41v5R/IjCIirFYShNC2N89PVgW6yPK1SQz2zg==


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
