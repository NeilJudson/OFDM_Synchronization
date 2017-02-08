// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Feb 08 14:46:26 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/dsp48_mul_add_ip/dsp48_mul_add_ip_funcsim.v
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
AF2qv5Pd/ZX/OiFYZlW7QtLINVvYp6TimmjV5/l7tw3hUWN8d/WYe8df9D2gk1DsM13dI90//crI
rH55WebeNK8EoF5H0mwsNBo12M6V5JiSzFFwhcIkii2/m6l15Lor50JvdugaCQD8jzBHLHRnKQSa
xnj3oaS7ik8Dn3TZppCHecrCG37/Z7B9UprM+cfEe8mFkxPFFjSJjFnhnOhJKTeusFZqneMLC1tn
Z3nBsBmcZcw9RJTjyTUflq5nm+BLJ/QTL2iarIyeEhR44gpoxO+tZzHw+OsFJxzxdYHwFf8zcIsP
zfJZz2pNzpZBmaSRKiS+FCOWRs+OaXwqSV+1WQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
AxuV1afvomR0ZhAdksB12avrprHe7G9DKDFWqfSjHSUqIMIhNnFnQCdO9tdcqlIjDZAl6DZgtQmp
wRMtKvvCuyG2sZV6VOmIWxtCUSLZDX8fPQIVJMDwbyOAFhJVoETKaRM7v3gUZpEu1qptDAoWl9JR
3Kd70fxqqhu2108hGOgVwwZVtT5s8XvL+qjG/SiXg62nOs/LMOnteCneBQoNd7Vc1mzMPo1MVHbV
H+suG6NN4ZMAOyelp7qIxeKuELEo3naMI/XOEdYoLmX43Mc1nKWva6a7fYPJ3C5K3lp8TszN7zvu
X3/r5I2LJzTJIynsdehfPdl8tdJ4XxihMQ8kfg==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3504)
`pragma protect data_block
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
cxE8b7DOOdgUeVjYgfQdTqEtdxsOB8/tSwHk
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
AF2qv5Pd/ZX/OiFYZlW7QtLINVvYp6TimmjV5/l7tw3hUWN8d/WYe8df9D2gk1DsM13dI90//crI
rH55WebeNK8EoF5H0mwsNBo12M6V5JiSzFFwhcIkii2/m6l15Lor50JvdugaCQD8jzBHLHRnKQSa
xnj3oaS7ik8Dn3TZppCHecrCG37/Z7B9UprM+cfEe8mFkxPFFjSJjFnhnOhJKTeusFZqneMLC1tn
Z3nBsBmcZcw9RJTjyTUflq5nm+BLJ/QTL2iarIyeEhR44gpoxO+tZzHw+OsFJxzxdYHwFf8zcIsP
zfJZz2pNzpZBmaSRKiS+FCOWRs+OaXwqSV+1WQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
AxuV1afvomR0ZhAdksB12avrprHe7G9DKDFWqfSjHSUqIMIhNnFnQCdO9tdcqlIjDZAl6DZgtQmp
wRMtKvvCuyG2sZV6VOmIWxtCUSLZDX8fPQIVJMDwbyOAFhJVoETKaRM7v3gUZpEu1qptDAoWl9JR
3Kd70fxqqhu2108hGOgVwwZVtT5s8XvL+qjG/SiXg62nOs/LMOnteCneBQoNd7Vc1mzMPo1MVHbV
H+suG6NN4ZMAOyelp7qIxeKuELEo3naMI/XOEdYoLmX43Mc1nKWva6a7fYPJ3C5K3lp8TszN7zvu
X3/r5I2LJzTJIynsdehfPdl8tdJ4XxihMQ8kfg==


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
