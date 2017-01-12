// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Jan 11 14:49:50 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_69_18_1dsp_ip/multiplier_69_18_1dsp_ip_funcsim.v
// Design      : multiplier_69_18_1dsp_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_69_18_1dsp_ip,multiplier_69_18_1dsp,{}" *) (* CORE_GENERATION_INFO = "multiplier_69_18_1dsp_ip,multiplier_69_18_1dsp,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=multiplier_69_18_1dsp,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "multiplier_69_18_1dsp,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module multiplier_69_18_1dsp_ip
   (i_clk,
    i_rst,
    i_en,
    i_a,
    i_b,
    o_in_en,
    o_c_en,
    o_c);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *) input i_rst;
  input i_en;
  input [68:0]i_a;
  input [17:0]i_b;
  output o_in_en;
  output o_c_en;
  output [85:0]o_c;

  wire [68:0]i_a;
  wire [17:0]i_b;
  wire i_clk;
  wire i_en;
  wire i_rst;
  wire [85:0]o_c;
  wire o_c_en;
  wire o_in_en;

  multiplier_69_18_1dsp_ip_multiplier_69_18_1dsp inst
       (.Q({o_c_en,o_in_en}),
        .i_a(i_a),
        .i_b(i_b),
        .i_clk(i_clk),
        .i_en(i_en),
        .i_rst(i_rst),
        .o_c(o_c));
endmodule

(* ORIG_REF_NAME = "dsp48_mul_ip" *) 
module multiplier_69_18_1dsp_ip_dsp48_mul_ip
   (P,
    D,
    \c_in_reg[51] ,
    \c_in_reg[81] ,
    \c_in_reg[51]_0 ,
    \c_in_reg[52] ,
    \c_in_reg[53] ,
    \c_in_reg[54] ,
    \c_in_reg[55] ,
    \c_in_reg[56] ,
    \c_in_reg[57] ,
    \c_in_reg[58] ,
    \c_in_reg[59] ,
    \c_in_reg[60] ,
    \c_in_reg[61] ,
    \c_in_reg[62] ,
    \c_in_reg[63] ,
    \c_in_reg[81]_0 ,
    \c_in_reg[82] ,
    \c_in_reg[83] ,
    \c_in_reg[84] ,
    \c_in_reg[85] ,
    i_clk,
    Q,
    B,
    \en_buf_reg[6] ,
    \en_buf_reg[3] ,
    \en_buf_reg[6]_0 ,
    \en_buf_reg[5] ,
    \en_buf_reg[4] ,
    \en_buf_reg[3]_0 );
  output [16:0]P;
  output [50:0]D;
  output \c_in_reg[51] ;
  output \c_in_reg[81] ;
  output \c_in_reg[51]_0 ;
  output \c_in_reg[52] ;
  output \c_in_reg[53] ;
  output \c_in_reg[54] ;
  output \c_in_reg[55] ;
  output \c_in_reg[56] ;
  output \c_in_reg[57] ;
  output \c_in_reg[58] ;
  output \c_in_reg[59] ;
  output \c_in_reg[60] ;
  output \c_in_reg[61] ;
  output \c_in_reg[62] ;
  output \c_in_reg[63] ;
  output \c_in_reg[81]_0 ;
  output \c_in_reg[82] ;
  output \c_in_reg[83] ;
  output \c_in_reg[84] ;
  output \c_in_reg[85] ;
  input i_clk;
  input [17:0]Q;
  input [17:0]B;
  input [3:0]\en_buf_reg[6] ;
  input \en_buf_reg[3] ;
  input \en_buf_reg[6]_0 ;
  input \en_buf_reg[5] ;
  input \en_buf_reg[4] ;
  input \en_buf_reg[3]_0 ;

  wire [17:0]B;
  wire [50:0]D;
  wire [16:0]P;
  wire [17:0]Q;
  wire \c_in[80]_i_2_n_0 ;
  wire \c_in_reg[51] ;
  wire \c_in_reg[51]_0 ;
  wire \c_in_reg[52] ;
  wire \c_in_reg[53] ;
  wire \c_in_reg[54] ;
  wire \c_in_reg[55] ;
  wire \c_in_reg[56] ;
  wire \c_in_reg[57] ;
  wire \c_in_reg[58] ;
  wire \c_in_reg[59] ;
  wire \c_in_reg[60] ;
  wire \c_in_reg[61] ;
  wire \c_in_reg[62] ;
  wire \c_in_reg[63] ;
  wire \c_in_reg[81] ;
  wire \c_in_reg[81]_0 ;
  wire \c_in_reg[82] ;
  wire \c_in_reg[83] ;
  wire \c_in_reg[84] ;
  wire \c_in_reg[85] ;
  wire \en_buf_reg[3] ;
  wire \en_buf_reg[3]_0 ;
  wire \en_buf_reg[4] ;
  wire \en_buf_reg[5] ;
  wire [3:0]\en_buf_reg[6] ;
  wire \en_buf_reg[6]_0 ;
  wire i_clk;
  wire [47:17]u_p;
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
  multiplier_69_18_1dsp_ip_xbip_dsp48_macro_v3_0 U0
       (.A(Q),
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
        .CLK(i_clk),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P({u_p,P}),
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
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[17]_i_1 
       (.I0(P[0]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[17]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[18]_i_1 
       (.I0(P[1]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[18]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[19]_i_1 
       (.I0(P[2]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[19]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[20]_i_1 
       (.I0(P[3]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[20]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[21]_i_1 
       (.I0(P[4]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[21]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[22]_i_1 
       (.I0(P[5]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[22]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[23]_i_1 
       (.I0(P[6]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[23]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[24]_i_1 
       (.I0(P[7]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[24]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[25]_i_1 
       (.I0(P[8]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[25]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[26]_i_1 
       (.I0(P[9]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[26]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[27]_i_1 
       (.I0(P[10]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[27]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[28]_i_1 
       (.I0(P[11]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[28]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[29]_i_1 
       (.I0(P[12]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[29]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[30]_i_1 
       (.I0(P[13]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[30]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[31]_i_1 
       (.I0(P[14]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[31]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[32]_i_1 
       (.I0(P[15]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[32]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[33]_i_1 
       (.I0(P[16]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[33]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[34]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[34]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[17]),
        .I4(P[0]),
        .I5(\en_buf_reg[4] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[35]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[35]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[18]),
        .I4(P[1]),
        .I5(\en_buf_reg[4] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[36]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[36]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[19]),
        .I4(P[2]),
        .I5(\en_buf_reg[4] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[37]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[37]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[20]),
        .I4(P[3]),
        .I5(\en_buf_reg[4] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[38]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[38]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[21]),
        .I4(P[4]),
        .I5(\en_buf_reg[4] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[39]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[39]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[22]),
        .I4(P[5]),
        .I5(\en_buf_reg[4] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[40]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[40]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[23]),
        .I4(P[6]),
        .I5(\en_buf_reg[4] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[41]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[41]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[24]),
        .I4(P[7]),
        .I5(\en_buf_reg[4] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[42]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[42]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[25]),
        .I4(P[8]),
        .I5(\en_buf_reg[4] ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[43]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[43]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[26]),
        .I4(P[9]),
        .I5(\en_buf_reg[4] ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[44]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[44]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[27]),
        .I4(P[10]),
        .I5(\en_buf_reg[4] ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[45]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[45]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[28]),
        .I4(P[11]),
        .I5(\en_buf_reg[4] ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[46]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[46]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[29]),
        .I4(P[12]),
        .I5(\en_buf_reg[4] ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[47]_i_1 
       (.I0(\c_in_reg[51] ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[30]),
        .I3(P[13]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[48]_i_1 
       (.I0(\c_in_reg[51] ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[31]),
        .I3(P[14]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[49]_i_1 
       (.I0(\c_in_reg[51] ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[32]),
        .I3(P[15]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[32]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[50]_i_1 
       (.I0(\c_in_reg[51] ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[33]),
        .I3(P[16]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[51]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[34]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[17]),
        .I4(P[0]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[52]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[35]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[18]),
        .I4(P[1]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[52] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[53]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[36]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[19]),
        .I4(P[2]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[53] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[54]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[37]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[20]),
        .I4(P[3]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[54] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[55]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[38]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[21]),
        .I4(P[4]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[55] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[56]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[39]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[22]),
        .I4(P[5]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[56] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[57]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[40]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[23]),
        .I4(P[6]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[57] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[58]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[41]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[24]),
        .I4(P[7]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[58] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[59]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[42]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[25]),
        .I4(P[8]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[59] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[60]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[43]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[26]),
        .I4(P[9]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[60] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[61]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[44]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[27]),
        .I4(P[10]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[61] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[62]_i_1 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[45]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[28]),
        .I4(P[11]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[62] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[63]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[47]),
        .O(\c_in_reg[51] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[63]_i_2 
       (.I0(\en_buf_reg[5] ),
        .I1(u_p[46]),
        .I2(\en_buf_reg[4] ),
        .I3(u_p[29]),
        .I4(P[12]),
        .I5(\en_buf_reg[3]_0 ),
        .O(\c_in_reg[63] ));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[64]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[30]),
        .I3(P[13]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[34]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[65]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[31]),
        .I3(P[14]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[35]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[66]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[32]),
        .I3(P[15]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[36]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[67]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[33]),
        .I3(P[16]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[37]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[68]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[34]),
        .I3(u_p[17]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[69]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[35]),
        .I3(u_p[18]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[39]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[70]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[36]),
        .I3(u_p[19]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[71]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[37]),
        .I3(u_p[20]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[72]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[38]),
        .I3(u_p[21]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[42]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[73]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[39]),
        .I3(u_p[22]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[43]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[74]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[40]),
        .I3(u_p[23]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[44]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[75]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[41]),
        .I3(u_p[24]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[76]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[42]),
        .I3(u_p[25]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[46]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[77]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[43]),
        .I3(u_p[26]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[47]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[78]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[44]),
        .I3(u_p[27]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[48]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[79]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[45]),
        .I3(u_p[28]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[49]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[80]_i_1 
       (.I0(\c_in[80]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[46]),
        .I3(u_p[29]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \c_in[80]_i_2 
       (.I0(\en_buf_reg[3] ),
        .I1(\en_buf_reg[6] [3]),
        .I2(\en_buf_reg[6] [2]),
        .I3(u_p[47]),
        .O(\c_in[80]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[81]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[30]),
        .O(\c_in_reg[81]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[82]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[31]),
        .O(\c_in_reg[82] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[83]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[32]),
        .O(\c_in_reg[83] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[84]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[33]),
        .O(\c_in_reg[84] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCC80000)) 
    \c_in[85]_i_1 
       (.I0(\en_buf_reg[6] [1]),
        .I1(u_p[47]),
        .I2(\en_buf_reg[6] [2]),
        .I3(\en_buf_reg[6] [3]),
        .I4(\en_buf_reg[3] ),
        .O(\c_in_reg[81] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[85]_i_2 
       (.I0(\en_buf_reg[6] [0]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[34]),
        .O(\c_in_reg[85] ));
endmodule

(* ORIG_REF_NAME = "multiplier_69_18_1dsp" *) 
module multiplier_69_18_1dsp_ip_multiplier_69_18_1dsp
   (Q,
    o_c,
    i_clk,
    i_rst,
    i_en,
    i_a,
    i_b);
  output [1:0]Q;
  output [85:0]o_c;
  input i_clk;
  input i_rst;
  input i_en;
  input [68:0]i_a;
  input [17:0]i_b;

  wire [1:0]Q;
  wire \a_buf_reg_n_0_[0] ;
  wire \a_buf_reg_n_0_[10] ;
  wire \a_buf_reg_n_0_[11] ;
  wire \a_buf_reg_n_0_[12] ;
  wire \a_buf_reg_n_0_[13] ;
  wire \a_buf_reg_n_0_[14] ;
  wire \a_buf_reg_n_0_[15] ;
  wire \a_buf_reg_n_0_[16] ;
  wire \a_buf_reg_n_0_[17] ;
  wire \a_buf_reg_n_0_[18] ;
  wire \a_buf_reg_n_0_[19] ;
  wire \a_buf_reg_n_0_[1] ;
  wire \a_buf_reg_n_0_[20] ;
  wire \a_buf_reg_n_0_[21] ;
  wire \a_buf_reg_n_0_[22] ;
  wire \a_buf_reg_n_0_[23] ;
  wire \a_buf_reg_n_0_[24] ;
  wire \a_buf_reg_n_0_[25] ;
  wire \a_buf_reg_n_0_[26] ;
  wire \a_buf_reg_n_0_[27] ;
  wire \a_buf_reg_n_0_[28] ;
  wire \a_buf_reg_n_0_[29] ;
  wire \a_buf_reg_n_0_[2] ;
  wire \a_buf_reg_n_0_[30] ;
  wire \a_buf_reg_n_0_[31] ;
  wire \a_buf_reg_n_0_[32] ;
  wire \a_buf_reg_n_0_[33] ;
  wire \a_buf_reg_n_0_[34] ;
  wire \a_buf_reg_n_0_[35] ;
  wire \a_buf_reg_n_0_[36] ;
  wire \a_buf_reg_n_0_[37] ;
  wire \a_buf_reg_n_0_[38] ;
  wire \a_buf_reg_n_0_[39] ;
  wire \a_buf_reg_n_0_[3] ;
  wire \a_buf_reg_n_0_[40] ;
  wire \a_buf_reg_n_0_[41] ;
  wire \a_buf_reg_n_0_[42] ;
  wire \a_buf_reg_n_0_[43] ;
  wire \a_buf_reg_n_0_[44] ;
  wire \a_buf_reg_n_0_[45] ;
  wire \a_buf_reg_n_0_[46] ;
  wire \a_buf_reg_n_0_[47] ;
  wire \a_buf_reg_n_0_[48] ;
  wire \a_buf_reg_n_0_[49] ;
  wire \a_buf_reg_n_0_[4] ;
  wire \a_buf_reg_n_0_[50] ;
  wire \a_buf_reg_n_0_[5] ;
  wire \a_buf_reg_n_0_[6] ;
  wire \a_buf_reg_n_0_[7] ;
  wire \a_buf_reg_n_0_[8] ;
  wire \a_buf_reg_n_0_[9] ;
  wire [17:0]b_buf;
  wire \c_acc[11]_i_2_n_0 ;
  wire \c_acc[11]_i_3_n_0 ;
  wire \c_acc[11]_i_4_n_0 ;
  wire \c_acc[11]_i_5_n_0 ;
  wire \c_acc[15]_i_2_n_0 ;
  wire \c_acc[15]_i_3_n_0 ;
  wire \c_acc[15]_i_4_n_0 ;
  wire \c_acc[15]_i_5_n_0 ;
  wire \c_acc[19]_i_2_n_0 ;
  wire \c_acc[19]_i_3_n_0 ;
  wire \c_acc[19]_i_4_n_0 ;
  wire \c_acc[19]_i_5_n_0 ;
  wire \c_acc[23]_i_2_n_0 ;
  wire \c_acc[23]_i_3_n_0 ;
  wire \c_acc[23]_i_4_n_0 ;
  wire \c_acc[23]_i_5_n_0 ;
  wire \c_acc[27]_i_2_n_0 ;
  wire \c_acc[27]_i_3_n_0 ;
  wire \c_acc[27]_i_4_n_0 ;
  wire \c_acc[27]_i_5_n_0 ;
  wire \c_acc[31]_i_2_n_0 ;
  wire \c_acc[31]_i_3_n_0 ;
  wire \c_acc[31]_i_4_n_0 ;
  wire \c_acc[31]_i_5_n_0 ;
  wire \c_acc[35]_i_2_n_0 ;
  wire \c_acc[35]_i_3_n_0 ;
  wire \c_acc[35]_i_4_n_0 ;
  wire \c_acc[35]_i_5_n_0 ;
  wire \c_acc[39]_i_2_n_0 ;
  wire \c_acc[39]_i_3_n_0 ;
  wire \c_acc[39]_i_4_n_0 ;
  wire \c_acc[39]_i_5_n_0 ;
  wire \c_acc[3]_i_2_n_0 ;
  wire \c_acc[3]_i_3_n_0 ;
  wire \c_acc[3]_i_4_n_0 ;
  wire \c_acc[3]_i_5_n_0 ;
  wire \c_acc[43]_i_2_n_0 ;
  wire \c_acc[43]_i_3_n_0 ;
  wire \c_acc[43]_i_4_n_0 ;
  wire \c_acc[43]_i_5_n_0 ;
  wire \c_acc[47]_i_2_n_0 ;
  wire \c_acc[47]_i_3_n_0 ;
  wire \c_acc[47]_i_4_n_0 ;
  wire \c_acc[47]_i_5_n_0 ;
  wire \c_acc[51]_i_2_n_0 ;
  wire \c_acc[51]_i_3_n_0 ;
  wire \c_acc[51]_i_4_n_0 ;
  wire \c_acc[51]_i_5_n_0 ;
  wire \c_acc[55]_i_2_n_0 ;
  wire \c_acc[55]_i_3_n_0 ;
  wire \c_acc[55]_i_4_n_0 ;
  wire \c_acc[55]_i_5_n_0 ;
  wire \c_acc[59]_i_2_n_0 ;
  wire \c_acc[59]_i_3_n_0 ;
  wire \c_acc[59]_i_4_n_0 ;
  wire \c_acc[59]_i_5_n_0 ;
  wire \c_acc[63]_i_2_n_0 ;
  wire \c_acc[63]_i_3_n_0 ;
  wire \c_acc[63]_i_4_n_0 ;
  wire \c_acc[63]_i_5_n_0 ;
  wire \c_acc[67]_i_2_n_0 ;
  wire \c_acc[67]_i_3_n_0 ;
  wire \c_acc[67]_i_4_n_0 ;
  wire \c_acc[67]_i_5_n_0 ;
  wire \c_acc[71]_i_2_n_0 ;
  wire \c_acc[71]_i_3_n_0 ;
  wire \c_acc[71]_i_4_n_0 ;
  wire \c_acc[71]_i_5_n_0 ;
  wire \c_acc[75]_i_2_n_0 ;
  wire \c_acc[75]_i_3_n_0 ;
  wire \c_acc[75]_i_4_n_0 ;
  wire \c_acc[75]_i_5_n_0 ;
  wire \c_acc[79]_i_2_n_0 ;
  wire \c_acc[79]_i_3_n_0 ;
  wire \c_acc[79]_i_4_n_0 ;
  wire \c_acc[79]_i_5_n_0 ;
  wire \c_acc[7]_i_2_n_0 ;
  wire \c_acc[7]_i_3_n_0 ;
  wire \c_acc[7]_i_4_n_0 ;
  wire \c_acc[7]_i_5_n_0 ;
  wire \c_acc[83]_i_2_n_0 ;
  wire \c_acc[83]_i_3_n_0 ;
  wire \c_acc[83]_i_4_n_0 ;
  wire \c_acc[83]_i_5_n_0 ;
  wire \c_acc[85]_i_2_n_0 ;
  wire \c_acc[85]_i_3_n_0 ;
  wire \c_acc_reg[11]_i_1_n_0 ;
  wire \c_acc_reg[11]_i_1_n_1 ;
  wire \c_acc_reg[11]_i_1_n_2 ;
  wire \c_acc_reg[11]_i_1_n_3 ;
  wire \c_acc_reg[11]_i_1_n_4 ;
  wire \c_acc_reg[11]_i_1_n_5 ;
  wire \c_acc_reg[11]_i_1_n_6 ;
  wire \c_acc_reg[11]_i_1_n_7 ;
  wire \c_acc_reg[15]_i_1_n_0 ;
  wire \c_acc_reg[15]_i_1_n_1 ;
  wire \c_acc_reg[15]_i_1_n_2 ;
  wire \c_acc_reg[15]_i_1_n_3 ;
  wire \c_acc_reg[15]_i_1_n_4 ;
  wire \c_acc_reg[15]_i_1_n_5 ;
  wire \c_acc_reg[15]_i_1_n_6 ;
  wire \c_acc_reg[15]_i_1_n_7 ;
  wire \c_acc_reg[19]_i_1_n_0 ;
  wire \c_acc_reg[19]_i_1_n_1 ;
  wire \c_acc_reg[19]_i_1_n_2 ;
  wire \c_acc_reg[19]_i_1_n_3 ;
  wire \c_acc_reg[19]_i_1_n_4 ;
  wire \c_acc_reg[19]_i_1_n_5 ;
  wire \c_acc_reg[19]_i_1_n_6 ;
  wire \c_acc_reg[19]_i_1_n_7 ;
  wire \c_acc_reg[23]_i_1_n_0 ;
  wire \c_acc_reg[23]_i_1_n_1 ;
  wire \c_acc_reg[23]_i_1_n_2 ;
  wire \c_acc_reg[23]_i_1_n_3 ;
  wire \c_acc_reg[23]_i_1_n_4 ;
  wire \c_acc_reg[23]_i_1_n_5 ;
  wire \c_acc_reg[23]_i_1_n_6 ;
  wire \c_acc_reg[23]_i_1_n_7 ;
  wire \c_acc_reg[27]_i_1_n_0 ;
  wire \c_acc_reg[27]_i_1_n_1 ;
  wire \c_acc_reg[27]_i_1_n_2 ;
  wire \c_acc_reg[27]_i_1_n_3 ;
  wire \c_acc_reg[27]_i_1_n_4 ;
  wire \c_acc_reg[27]_i_1_n_5 ;
  wire \c_acc_reg[27]_i_1_n_6 ;
  wire \c_acc_reg[27]_i_1_n_7 ;
  wire \c_acc_reg[31]_i_1_n_0 ;
  wire \c_acc_reg[31]_i_1_n_1 ;
  wire \c_acc_reg[31]_i_1_n_2 ;
  wire \c_acc_reg[31]_i_1_n_3 ;
  wire \c_acc_reg[31]_i_1_n_4 ;
  wire \c_acc_reg[31]_i_1_n_5 ;
  wire \c_acc_reg[31]_i_1_n_6 ;
  wire \c_acc_reg[31]_i_1_n_7 ;
  wire \c_acc_reg[35]_i_1_n_0 ;
  wire \c_acc_reg[35]_i_1_n_1 ;
  wire \c_acc_reg[35]_i_1_n_2 ;
  wire \c_acc_reg[35]_i_1_n_3 ;
  wire \c_acc_reg[35]_i_1_n_4 ;
  wire \c_acc_reg[35]_i_1_n_5 ;
  wire \c_acc_reg[35]_i_1_n_6 ;
  wire \c_acc_reg[35]_i_1_n_7 ;
  wire \c_acc_reg[39]_i_1_n_0 ;
  wire \c_acc_reg[39]_i_1_n_1 ;
  wire \c_acc_reg[39]_i_1_n_2 ;
  wire \c_acc_reg[39]_i_1_n_3 ;
  wire \c_acc_reg[39]_i_1_n_4 ;
  wire \c_acc_reg[39]_i_1_n_5 ;
  wire \c_acc_reg[39]_i_1_n_6 ;
  wire \c_acc_reg[39]_i_1_n_7 ;
  wire \c_acc_reg[3]_i_1_n_0 ;
  wire \c_acc_reg[3]_i_1_n_1 ;
  wire \c_acc_reg[3]_i_1_n_2 ;
  wire \c_acc_reg[3]_i_1_n_3 ;
  wire \c_acc_reg[3]_i_1_n_4 ;
  wire \c_acc_reg[3]_i_1_n_5 ;
  wire \c_acc_reg[3]_i_1_n_6 ;
  wire \c_acc_reg[3]_i_1_n_7 ;
  wire \c_acc_reg[43]_i_1_n_0 ;
  wire \c_acc_reg[43]_i_1_n_1 ;
  wire \c_acc_reg[43]_i_1_n_2 ;
  wire \c_acc_reg[43]_i_1_n_3 ;
  wire \c_acc_reg[43]_i_1_n_4 ;
  wire \c_acc_reg[43]_i_1_n_5 ;
  wire \c_acc_reg[43]_i_1_n_6 ;
  wire \c_acc_reg[43]_i_1_n_7 ;
  wire \c_acc_reg[47]_i_1_n_0 ;
  wire \c_acc_reg[47]_i_1_n_1 ;
  wire \c_acc_reg[47]_i_1_n_2 ;
  wire \c_acc_reg[47]_i_1_n_3 ;
  wire \c_acc_reg[47]_i_1_n_4 ;
  wire \c_acc_reg[47]_i_1_n_5 ;
  wire \c_acc_reg[47]_i_1_n_6 ;
  wire \c_acc_reg[47]_i_1_n_7 ;
  wire \c_acc_reg[51]_i_1_n_0 ;
  wire \c_acc_reg[51]_i_1_n_1 ;
  wire \c_acc_reg[51]_i_1_n_2 ;
  wire \c_acc_reg[51]_i_1_n_3 ;
  wire \c_acc_reg[51]_i_1_n_4 ;
  wire \c_acc_reg[51]_i_1_n_5 ;
  wire \c_acc_reg[51]_i_1_n_6 ;
  wire \c_acc_reg[51]_i_1_n_7 ;
  wire \c_acc_reg[55]_i_1_n_0 ;
  wire \c_acc_reg[55]_i_1_n_1 ;
  wire \c_acc_reg[55]_i_1_n_2 ;
  wire \c_acc_reg[55]_i_1_n_3 ;
  wire \c_acc_reg[55]_i_1_n_4 ;
  wire \c_acc_reg[55]_i_1_n_5 ;
  wire \c_acc_reg[55]_i_1_n_6 ;
  wire \c_acc_reg[55]_i_1_n_7 ;
  wire \c_acc_reg[59]_i_1_n_0 ;
  wire \c_acc_reg[59]_i_1_n_1 ;
  wire \c_acc_reg[59]_i_1_n_2 ;
  wire \c_acc_reg[59]_i_1_n_3 ;
  wire \c_acc_reg[59]_i_1_n_4 ;
  wire \c_acc_reg[59]_i_1_n_5 ;
  wire \c_acc_reg[59]_i_1_n_6 ;
  wire \c_acc_reg[59]_i_1_n_7 ;
  wire \c_acc_reg[63]_i_1_n_0 ;
  wire \c_acc_reg[63]_i_1_n_1 ;
  wire \c_acc_reg[63]_i_1_n_2 ;
  wire \c_acc_reg[63]_i_1_n_3 ;
  wire \c_acc_reg[63]_i_1_n_4 ;
  wire \c_acc_reg[63]_i_1_n_5 ;
  wire \c_acc_reg[63]_i_1_n_6 ;
  wire \c_acc_reg[63]_i_1_n_7 ;
  wire \c_acc_reg[67]_i_1_n_0 ;
  wire \c_acc_reg[67]_i_1_n_1 ;
  wire \c_acc_reg[67]_i_1_n_2 ;
  wire \c_acc_reg[67]_i_1_n_3 ;
  wire \c_acc_reg[67]_i_1_n_4 ;
  wire \c_acc_reg[67]_i_1_n_5 ;
  wire \c_acc_reg[67]_i_1_n_6 ;
  wire \c_acc_reg[67]_i_1_n_7 ;
  wire \c_acc_reg[71]_i_1_n_0 ;
  wire \c_acc_reg[71]_i_1_n_1 ;
  wire \c_acc_reg[71]_i_1_n_2 ;
  wire \c_acc_reg[71]_i_1_n_3 ;
  wire \c_acc_reg[71]_i_1_n_4 ;
  wire \c_acc_reg[71]_i_1_n_5 ;
  wire \c_acc_reg[71]_i_1_n_6 ;
  wire \c_acc_reg[71]_i_1_n_7 ;
  wire \c_acc_reg[75]_i_1_n_0 ;
  wire \c_acc_reg[75]_i_1_n_1 ;
  wire \c_acc_reg[75]_i_1_n_2 ;
  wire \c_acc_reg[75]_i_1_n_3 ;
  wire \c_acc_reg[75]_i_1_n_4 ;
  wire \c_acc_reg[75]_i_1_n_5 ;
  wire \c_acc_reg[75]_i_1_n_6 ;
  wire \c_acc_reg[75]_i_1_n_7 ;
  wire \c_acc_reg[79]_i_1_n_0 ;
  wire \c_acc_reg[79]_i_1_n_1 ;
  wire \c_acc_reg[79]_i_1_n_2 ;
  wire \c_acc_reg[79]_i_1_n_3 ;
  wire \c_acc_reg[79]_i_1_n_4 ;
  wire \c_acc_reg[79]_i_1_n_5 ;
  wire \c_acc_reg[79]_i_1_n_6 ;
  wire \c_acc_reg[79]_i_1_n_7 ;
  wire \c_acc_reg[7]_i_1_n_0 ;
  wire \c_acc_reg[7]_i_1_n_1 ;
  wire \c_acc_reg[7]_i_1_n_2 ;
  wire \c_acc_reg[7]_i_1_n_3 ;
  wire \c_acc_reg[7]_i_1_n_4 ;
  wire \c_acc_reg[7]_i_1_n_5 ;
  wire \c_acc_reg[7]_i_1_n_6 ;
  wire \c_acc_reg[7]_i_1_n_7 ;
  wire \c_acc_reg[83]_i_1_n_0 ;
  wire \c_acc_reg[83]_i_1_n_1 ;
  wire \c_acc_reg[83]_i_1_n_2 ;
  wire \c_acc_reg[83]_i_1_n_3 ;
  wire \c_acc_reg[83]_i_1_n_4 ;
  wire \c_acc_reg[83]_i_1_n_5 ;
  wire \c_acc_reg[83]_i_1_n_6 ;
  wire \c_acc_reg[83]_i_1_n_7 ;
  wire \c_acc_reg[85]_i_1_n_3 ;
  wire \c_acc_reg[85]_i_1_n_6 ;
  wire \c_acc_reg[85]_i_1_n_7 ;
  wire [80:17]c_in;
  wire \c_in[16]_i_1_n_0 ;
  wire \c_in[46]_i_2_n_0 ;
  wire \c_in[46]_i_3_n_0 ;
  wire \c_in[46]_i_4_n_0 ;
  wire \c_in[63]_i_3_n_0 ;
  wire \c_in[80]_i_3_n_0 ;
  wire [17:0]data0;
  wire [68:0]i_a;
  wire [17:0]i_b;
  wire i_clk;
  wire i_en;
  wire i_rst;
  wire [85:0]in;
  wire [85:0]o_c;
  wire [8:1]p_0_in;
  wire [17:0]u_a;
  wire \u_a[0]_i_2_n_0 ;
  wire \u_a[10]_i_2_n_0 ;
  wire \u_a[11]_i_2_n_0 ;
  wire \u_a[12]_i_2_n_0 ;
  wire \u_a[13]_i_2_n_0 ;
  wire \u_a[14]_i_2_n_0 ;
  wire \u_a[15]_i_2_n_0 ;
  wire \u_a[16]_i_2_n_0 ;
  wire \u_a[17]_i_2_n_0 ;
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
  wire \u_b[17]_i_1_n_0 ;
  wire u_dsp48_mul_ip_n_68;
  wire u_dsp48_mul_ip_n_69;
  wire u_dsp48_mul_ip_n_70;
  wire u_dsp48_mul_ip_n_71;
  wire u_dsp48_mul_ip_n_72;
  wire u_dsp48_mul_ip_n_73;
  wire u_dsp48_mul_ip_n_74;
  wire u_dsp48_mul_ip_n_75;
  wire u_dsp48_mul_ip_n_76;
  wire u_dsp48_mul_ip_n_77;
  wire u_dsp48_mul_ip_n_78;
  wire u_dsp48_mul_ip_n_79;
  wire u_dsp48_mul_ip_n_80;
  wire u_dsp48_mul_ip_n_81;
  wire u_dsp48_mul_ip_n_82;
  wire u_dsp48_mul_ip_n_83;
  wire u_dsp48_mul_ip_n_84;
  wire u_dsp48_mul_ip_n_85;
  wire u_dsp48_mul_ip_n_86;
  wire u_dsp48_mul_ip_n_87;
  wire [16:0]u_p;
  wire [3:1]\NLW_c_acc_reg[85]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_c_acc_reg[85]_i_1_O_UNCONNECTED ;

  FDRE \a_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[0]),
        .Q(\a_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \a_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[10]),
        .Q(\a_buf_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \a_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[11]),
        .Q(\a_buf_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \a_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[12]),
        .Q(\a_buf_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \a_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[13]),
        .Q(\a_buf_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \a_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[14]),
        .Q(\a_buf_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \a_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[15]),
        .Q(\a_buf_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \a_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[16]),
        .Q(\a_buf_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \a_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[17]),
        .Q(\a_buf_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \a_buf_reg[18] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[18]),
        .Q(\a_buf_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \a_buf_reg[19] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[19]),
        .Q(\a_buf_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \a_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[1]),
        .Q(\a_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \a_buf_reg[20] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[20]),
        .Q(\a_buf_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \a_buf_reg[21] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[21]),
        .Q(\a_buf_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \a_buf_reg[22] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[22]),
        .Q(\a_buf_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \a_buf_reg[23] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[23]),
        .Q(\a_buf_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \a_buf_reg[24] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[24]),
        .Q(\a_buf_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \a_buf_reg[25] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[25]),
        .Q(\a_buf_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \a_buf_reg[26] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[26]),
        .Q(\a_buf_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \a_buf_reg[27] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[27]),
        .Q(\a_buf_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \a_buf_reg[28] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[28]),
        .Q(\a_buf_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \a_buf_reg[29] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[29]),
        .Q(\a_buf_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \a_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[2]),
        .Q(\a_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \a_buf_reg[30] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[30]),
        .Q(\a_buf_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \a_buf_reg[31] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[31]),
        .Q(\a_buf_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \a_buf_reg[32] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[32]),
        .Q(\a_buf_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \a_buf_reg[33] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[33]),
        .Q(\a_buf_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \a_buf_reg[34] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[34]),
        .Q(\a_buf_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \a_buf_reg[35] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[35]),
        .Q(\a_buf_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \a_buf_reg[36] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[36]),
        .Q(\a_buf_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \a_buf_reg[37] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[37]),
        .Q(\a_buf_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \a_buf_reg[38] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[38]),
        .Q(\a_buf_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \a_buf_reg[39] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[39]),
        .Q(\a_buf_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \a_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[3]),
        .Q(\a_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \a_buf_reg[40] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[40]),
        .Q(\a_buf_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \a_buf_reg[41] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[41]),
        .Q(\a_buf_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \a_buf_reg[42] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[42]),
        .Q(\a_buf_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \a_buf_reg[43] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[43]),
        .Q(\a_buf_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \a_buf_reg[44] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[44]),
        .Q(\a_buf_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \a_buf_reg[45] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[45]),
        .Q(\a_buf_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \a_buf_reg[46] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[46]),
        .Q(\a_buf_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \a_buf_reg[47] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[47]),
        .Q(\a_buf_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \a_buf_reg[48] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[48]),
        .Q(\a_buf_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \a_buf_reg[49] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[49]),
        .Q(\a_buf_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \a_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[4]),
        .Q(\a_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \a_buf_reg[50] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[50]),
        .Q(\a_buf_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \a_buf_reg[51] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[51]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \a_buf_reg[52] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[52]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \a_buf_reg[53] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[53]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \a_buf_reg[54] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[54]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \a_buf_reg[55] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[55]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \a_buf_reg[56] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[56]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \a_buf_reg[57] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[57]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \a_buf_reg[58] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[58]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \a_buf_reg[59] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[59]),
        .Q(data0[8]),
        .R(1'b0));
  FDRE \a_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[5]),
        .Q(\a_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \a_buf_reg[60] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[60]),
        .Q(data0[9]),
        .R(1'b0));
  FDRE \a_buf_reg[61] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[61]),
        .Q(data0[10]),
        .R(1'b0));
  FDRE \a_buf_reg[62] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[62]),
        .Q(data0[11]),
        .R(1'b0));
  FDRE \a_buf_reg[63] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[63]),
        .Q(data0[12]),
        .R(1'b0));
  FDRE \a_buf_reg[64] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[64]),
        .Q(data0[13]),
        .R(1'b0));
  FDRE \a_buf_reg[65] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[65]),
        .Q(data0[14]),
        .R(1'b0));
  FDRE \a_buf_reg[66] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[66]),
        .Q(data0[15]),
        .R(1'b0));
  FDRE \a_buf_reg[67] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[67]),
        .Q(data0[16]),
        .R(1'b0));
  FDRE \a_buf_reg[68] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[68]),
        .Q(data0[17]),
        .R(1'b0));
  FDRE \a_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[6]),
        .Q(\a_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \a_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[7]),
        .Q(\a_buf_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \a_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[8]),
        .Q(\a_buf_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \a_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_a[9]),
        .Q(\a_buf_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \b_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[0]),
        .Q(b_buf[0]),
        .R(1'b0));
  FDRE \b_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[10]),
        .Q(b_buf[10]),
        .R(1'b0));
  FDRE \b_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[11]),
        .Q(b_buf[11]),
        .R(1'b0));
  FDRE \b_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[12]),
        .Q(b_buf[12]),
        .R(1'b0));
  FDRE \b_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[13]),
        .Q(b_buf[13]),
        .R(1'b0));
  FDRE \b_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[14]),
        .Q(b_buf[14]),
        .R(1'b0));
  FDRE \b_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[15]),
        .Q(b_buf[15]),
        .R(1'b0));
  FDRE \b_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[16]),
        .Q(b_buf[16]),
        .R(1'b0));
  FDRE \b_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[17]),
        .Q(b_buf[17]),
        .R(1'b0));
  FDRE \b_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[1]),
        .Q(b_buf[1]),
        .R(1'b0));
  FDRE \b_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[2]),
        .Q(b_buf[2]),
        .R(1'b0));
  FDRE \b_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[3]),
        .Q(b_buf[3]),
        .R(1'b0));
  FDRE \b_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[4]),
        .Q(b_buf[4]),
        .R(1'b0));
  FDRE \b_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[5]),
        .Q(b_buf[5]),
        .R(1'b0));
  FDRE \b_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[6]),
        .Q(b_buf[6]),
        .R(1'b0));
  FDRE \b_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[7]),
        .Q(b_buf[7]),
        .R(1'b0));
  FDRE \b_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[8]),
        .Q(b_buf[8]),
        .R(1'b0));
  FDRE \b_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .D(i_b[9]),
        .Q(b_buf[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_2 
       (.I0(in[11]),
        .I1(Q[0]),
        .I2(o_c[11]),
        .O(\c_acc[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_3 
       (.I0(in[10]),
        .I1(Q[0]),
        .I2(o_c[10]),
        .O(\c_acc[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_4 
       (.I0(in[9]),
        .I1(Q[0]),
        .I2(o_c[9]),
        .O(\c_acc[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[11]_i_5 
       (.I0(in[8]),
        .I1(Q[0]),
        .I2(o_c[8]),
        .O(\c_acc[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_2 
       (.I0(in[15]),
        .I1(Q[0]),
        .I2(o_c[15]),
        .O(\c_acc[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_3 
       (.I0(in[14]),
        .I1(Q[0]),
        .I2(o_c[14]),
        .O(\c_acc[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_4 
       (.I0(in[13]),
        .I1(Q[0]),
        .I2(o_c[13]),
        .O(\c_acc[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[15]_i_5 
       (.I0(in[12]),
        .I1(Q[0]),
        .I2(o_c[12]),
        .O(\c_acc[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_2 
       (.I0(in[19]),
        .I1(Q[0]),
        .I2(o_c[19]),
        .O(\c_acc[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_3 
       (.I0(in[18]),
        .I1(Q[0]),
        .I2(o_c[18]),
        .O(\c_acc[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_4 
       (.I0(in[17]),
        .I1(Q[0]),
        .I2(o_c[17]),
        .O(\c_acc[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[19]_i_5 
       (.I0(in[16]),
        .I1(Q[0]),
        .I2(o_c[16]),
        .O(\c_acc[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_2 
       (.I0(in[23]),
        .I1(Q[0]),
        .I2(o_c[23]),
        .O(\c_acc[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_3 
       (.I0(in[22]),
        .I1(Q[0]),
        .I2(o_c[22]),
        .O(\c_acc[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_4 
       (.I0(in[21]),
        .I1(Q[0]),
        .I2(o_c[21]),
        .O(\c_acc[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[23]_i_5 
       (.I0(in[20]),
        .I1(Q[0]),
        .I2(o_c[20]),
        .O(\c_acc[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_2 
       (.I0(in[27]),
        .I1(Q[0]),
        .I2(o_c[27]),
        .O(\c_acc[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_3 
       (.I0(in[26]),
        .I1(Q[0]),
        .I2(o_c[26]),
        .O(\c_acc[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_4 
       (.I0(in[25]),
        .I1(Q[0]),
        .I2(o_c[25]),
        .O(\c_acc[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[27]_i_5 
       (.I0(in[24]),
        .I1(Q[0]),
        .I2(o_c[24]),
        .O(\c_acc[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_2 
       (.I0(in[31]),
        .I1(Q[0]),
        .I2(o_c[31]),
        .O(\c_acc[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_3 
       (.I0(in[30]),
        .I1(Q[0]),
        .I2(o_c[30]),
        .O(\c_acc[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_4 
       (.I0(in[29]),
        .I1(Q[0]),
        .I2(o_c[29]),
        .O(\c_acc[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[31]_i_5 
       (.I0(in[28]),
        .I1(Q[0]),
        .I2(o_c[28]),
        .O(\c_acc[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_2 
       (.I0(in[35]),
        .I1(Q[0]),
        .I2(o_c[35]),
        .O(\c_acc[35]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_3 
       (.I0(in[34]),
        .I1(Q[0]),
        .I2(o_c[34]),
        .O(\c_acc[35]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_4 
       (.I0(in[33]),
        .I1(Q[0]),
        .I2(o_c[33]),
        .O(\c_acc[35]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[35]_i_5 
       (.I0(in[32]),
        .I1(Q[0]),
        .I2(o_c[32]),
        .O(\c_acc[35]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_2 
       (.I0(in[39]),
        .I1(Q[0]),
        .I2(o_c[39]),
        .O(\c_acc[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_3 
       (.I0(in[38]),
        .I1(Q[0]),
        .I2(o_c[38]),
        .O(\c_acc[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_4 
       (.I0(in[37]),
        .I1(Q[0]),
        .I2(o_c[37]),
        .O(\c_acc[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[39]_i_5 
       (.I0(in[36]),
        .I1(Q[0]),
        .I2(o_c[36]),
        .O(\c_acc[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_2 
       (.I0(in[3]),
        .I1(Q[0]),
        .I2(o_c[3]),
        .O(\c_acc[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_3 
       (.I0(in[2]),
        .I1(Q[0]),
        .I2(o_c[2]),
        .O(\c_acc[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_4 
       (.I0(in[1]),
        .I1(Q[0]),
        .I2(o_c[1]),
        .O(\c_acc[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[3]_i_5 
       (.I0(in[0]),
        .I1(Q[0]),
        .I2(o_c[0]),
        .O(\c_acc[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_2 
       (.I0(in[43]),
        .I1(Q[0]),
        .I2(o_c[43]),
        .O(\c_acc[43]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_3 
       (.I0(in[42]),
        .I1(Q[0]),
        .I2(o_c[42]),
        .O(\c_acc[43]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_4 
       (.I0(in[41]),
        .I1(Q[0]),
        .I2(o_c[41]),
        .O(\c_acc[43]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[43]_i_5 
       (.I0(in[40]),
        .I1(Q[0]),
        .I2(o_c[40]),
        .O(\c_acc[43]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_2 
       (.I0(in[47]),
        .I1(Q[0]),
        .I2(o_c[47]),
        .O(\c_acc[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_3 
       (.I0(in[46]),
        .I1(Q[0]),
        .I2(o_c[46]),
        .O(\c_acc[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_4 
       (.I0(in[45]),
        .I1(Q[0]),
        .I2(o_c[45]),
        .O(\c_acc[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[47]_i_5 
       (.I0(in[44]),
        .I1(Q[0]),
        .I2(o_c[44]),
        .O(\c_acc[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_2 
       (.I0(in[51]),
        .I1(Q[0]),
        .I2(o_c[51]),
        .O(\c_acc[51]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_3 
       (.I0(in[50]),
        .I1(Q[0]),
        .I2(o_c[50]),
        .O(\c_acc[51]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_4 
       (.I0(in[49]),
        .I1(Q[0]),
        .I2(o_c[49]),
        .O(\c_acc[51]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[51]_i_5 
       (.I0(in[48]),
        .I1(Q[0]),
        .I2(o_c[48]),
        .O(\c_acc[51]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_2 
       (.I0(in[55]),
        .I1(Q[0]),
        .I2(o_c[55]),
        .O(\c_acc[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_3 
       (.I0(in[54]),
        .I1(Q[0]),
        .I2(o_c[54]),
        .O(\c_acc[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_4 
       (.I0(in[53]),
        .I1(Q[0]),
        .I2(o_c[53]),
        .O(\c_acc[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[55]_i_5 
       (.I0(in[52]),
        .I1(Q[0]),
        .I2(o_c[52]),
        .O(\c_acc[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_2 
       (.I0(in[59]),
        .I1(Q[0]),
        .I2(o_c[59]),
        .O(\c_acc[59]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_3 
       (.I0(in[58]),
        .I1(Q[0]),
        .I2(o_c[58]),
        .O(\c_acc[59]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_4 
       (.I0(in[57]),
        .I1(Q[0]),
        .I2(o_c[57]),
        .O(\c_acc[59]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[59]_i_5 
       (.I0(in[56]),
        .I1(Q[0]),
        .I2(o_c[56]),
        .O(\c_acc[59]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_2 
       (.I0(in[63]),
        .I1(Q[0]),
        .I2(o_c[63]),
        .O(\c_acc[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_3 
       (.I0(in[62]),
        .I1(Q[0]),
        .I2(o_c[62]),
        .O(\c_acc[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_4 
       (.I0(in[61]),
        .I1(Q[0]),
        .I2(o_c[61]),
        .O(\c_acc[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[63]_i_5 
       (.I0(in[60]),
        .I1(Q[0]),
        .I2(o_c[60]),
        .O(\c_acc[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_2 
       (.I0(in[67]),
        .I1(Q[0]),
        .I2(o_c[67]),
        .O(\c_acc[67]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_3 
       (.I0(in[66]),
        .I1(Q[0]),
        .I2(o_c[66]),
        .O(\c_acc[67]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_4 
       (.I0(in[65]),
        .I1(Q[0]),
        .I2(o_c[65]),
        .O(\c_acc[67]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[67]_i_5 
       (.I0(in[64]),
        .I1(Q[0]),
        .I2(o_c[64]),
        .O(\c_acc[67]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[71]_i_2 
       (.I0(in[71]),
        .I1(Q[0]),
        .I2(o_c[71]),
        .O(\c_acc[71]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[71]_i_3 
       (.I0(in[70]),
        .I1(Q[0]),
        .I2(o_c[70]),
        .O(\c_acc[71]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[71]_i_4 
       (.I0(in[69]),
        .I1(Q[0]),
        .I2(o_c[69]),
        .O(\c_acc[71]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[71]_i_5 
       (.I0(in[68]),
        .I1(Q[0]),
        .I2(o_c[68]),
        .O(\c_acc[71]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[75]_i_2 
       (.I0(in[75]),
        .I1(Q[0]),
        .I2(o_c[75]),
        .O(\c_acc[75]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[75]_i_3 
       (.I0(in[74]),
        .I1(Q[0]),
        .I2(o_c[74]),
        .O(\c_acc[75]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[75]_i_4 
       (.I0(in[73]),
        .I1(Q[0]),
        .I2(o_c[73]),
        .O(\c_acc[75]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[75]_i_5 
       (.I0(in[72]),
        .I1(Q[0]),
        .I2(o_c[72]),
        .O(\c_acc[75]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[79]_i_2 
       (.I0(in[79]),
        .I1(Q[0]),
        .I2(o_c[79]),
        .O(\c_acc[79]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[79]_i_3 
       (.I0(in[78]),
        .I1(Q[0]),
        .I2(o_c[78]),
        .O(\c_acc[79]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[79]_i_4 
       (.I0(in[77]),
        .I1(Q[0]),
        .I2(o_c[77]),
        .O(\c_acc[79]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[79]_i_5 
       (.I0(in[76]),
        .I1(Q[0]),
        .I2(o_c[76]),
        .O(\c_acc[79]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_2 
       (.I0(in[7]),
        .I1(Q[0]),
        .I2(o_c[7]),
        .O(\c_acc[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_3 
       (.I0(in[6]),
        .I1(Q[0]),
        .I2(o_c[6]),
        .O(\c_acc[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_4 
       (.I0(in[5]),
        .I1(Q[0]),
        .I2(o_c[5]),
        .O(\c_acc[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[7]_i_5 
       (.I0(in[4]),
        .I1(Q[0]),
        .I2(o_c[4]),
        .O(\c_acc[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[83]_i_2 
       (.I0(in[83]),
        .I1(Q[0]),
        .I2(o_c[83]),
        .O(\c_acc[83]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[83]_i_3 
       (.I0(in[82]),
        .I1(Q[0]),
        .I2(o_c[82]),
        .O(\c_acc[83]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[83]_i_4 
       (.I0(in[81]),
        .I1(Q[0]),
        .I2(o_c[81]),
        .O(\c_acc[83]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[83]_i_5 
       (.I0(in[80]),
        .I1(Q[0]),
        .I2(o_c[80]),
        .O(\c_acc[83]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[85]_i_2 
       (.I0(in[85]),
        .I1(Q[0]),
        .I2(o_c[85]),
        .O(\c_acc[85]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \c_acc[85]_i_3 
       (.I0(in[84]),
        .I1(Q[0]),
        .I2(o_c[84]),
        .O(\c_acc[85]_i_3_n_0 ));
  FDRE \c_acc_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_7 ),
        .Q(o_c[0]),
        .R(1'b0));
  FDRE \c_acc_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_5 ),
        .Q(o_c[10]),
        .R(1'b0));
  FDRE \c_acc_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_4 ),
        .Q(o_c[11]),
        .R(1'b0));
  CARRY4 \c_acc_reg[11]_i_1 
       (.CI(\c_acc_reg[7]_i_1_n_0 ),
        .CO({\c_acc_reg[11]_i_1_n_0 ,\c_acc_reg[11]_i_1_n_1 ,\c_acc_reg[11]_i_1_n_2 ,\c_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\c_acc_reg[11]_i_1_n_4 ,\c_acc_reg[11]_i_1_n_5 ,\c_acc_reg[11]_i_1_n_6 ,\c_acc_reg[11]_i_1_n_7 }),
        .S({\c_acc[11]_i_2_n_0 ,\c_acc[11]_i_3_n_0 ,\c_acc[11]_i_4_n_0 ,\c_acc[11]_i_5_n_0 }));
  FDRE \c_acc_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_7 ),
        .Q(o_c[12]),
        .R(1'b0));
  FDRE \c_acc_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_6 ),
        .Q(o_c[13]),
        .R(1'b0));
  FDRE \c_acc_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_5 ),
        .Q(o_c[14]),
        .R(1'b0));
  FDRE \c_acc_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[15]_i_1_n_4 ),
        .Q(o_c[15]),
        .R(1'b0));
  CARRY4 \c_acc_reg[15]_i_1 
       (.CI(\c_acc_reg[11]_i_1_n_0 ),
        .CO({\c_acc_reg[15]_i_1_n_0 ,\c_acc_reg[15]_i_1_n_1 ,\c_acc_reg[15]_i_1_n_2 ,\c_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\c_acc_reg[15]_i_1_n_4 ,\c_acc_reg[15]_i_1_n_5 ,\c_acc_reg[15]_i_1_n_6 ,\c_acc_reg[15]_i_1_n_7 }),
        .S({\c_acc[15]_i_2_n_0 ,\c_acc[15]_i_3_n_0 ,\c_acc[15]_i_4_n_0 ,\c_acc[15]_i_5_n_0 }));
  FDRE \c_acc_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_7 ),
        .Q(o_c[16]),
        .R(1'b0));
  FDRE \c_acc_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_6 ),
        .Q(o_c[17]),
        .R(1'b0));
  FDRE \c_acc_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_5 ),
        .Q(o_c[18]),
        .R(1'b0));
  FDRE \c_acc_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[19]_i_1_n_4 ),
        .Q(o_c[19]),
        .R(1'b0));
  CARRY4 \c_acc_reg[19]_i_1 
       (.CI(\c_acc_reg[15]_i_1_n_0 ),
        .CO({\c_acc_reg[19]_i_1_n_0 ,\c_acc_reg[19]_i_1_n_1 ,\c_acc_reg[19]_i_1_n_2 ,\c_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\c_acc_reg[19]_i_1_n_4 ,\c_acc_reg[19]_i_1_n_5 ,\c_acc_reg[19]_i_1_n_6 ,\c_acc_reg[19]_i_1_n_7 }),
        .S({\c_acc[19]_i_2_n_0 ,\c_acc[19]_i_3_n_0 ,\c_acc[19]_i_4_n_0 ,\c_acc[19]_i_5_n_0 }));
  FDRE \c_acc_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_6 ),
        .Q(o_c[1]),
        .R(1'b0));
  FDRE \c_acc_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_7 ),
        .Q(o_c[20]),
        .R(1'b0));
  FDRE \c_acc_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_6 ),
        .Q(o_c[21]),
        .R(1'b0));
  FDRE \c_acc_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_5 ),
        .Q(o_c[22]),
        .R(1'b0));
  FDRE \c_acc_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[23]_i_1_n_4 ),
        .Q(o_c[23]),
        .R(1'b0));
  CARRY4 \c_acc_reg[23]_i_1 
       (.CI(\c_acc_reg[19]_i_1_n_0 ),
        .CO({\c_acc_reg[23]_i_1_n_0 ,\c_acc_reg[23]_i_1_n_1 ,\c_acc_reg[23]_i_1_n_2 ,\c_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\c_acc_reg[23]_i_1_n_4 ,\c_acc_reg[23]_i_1_n_5 ,\c_acc_reg[23]_i_1_n_6 ,\c_acc_reg[23]_i_1_n_7 }),
        .S({\c_acc[23]_i_2_n_0 ,\c_acc[23]_i_3_n_0 ,\c_acc[23]_i_4_n_0 ,\c_acc[23]_i_5_n_0 }));
  FDRE \c_acc_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_7 ),
        .Q(o_c[24]),
        .R(1'b0));
  FDRE \c_acc_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_6 ),
        .Q(o_c[25]),
        .R(1'b0));
  FDRE \c_acc_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_5 ),
        .Q(o_c[26]),
        .R(1'b0));
  FDRE \c_acc_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[27]_i_1_n_4 ),
        .Q(o_c[27]),
        .R(1'b0));
  CARRY4 \c_acc_reg[27]_i_1 
       (.CI(\c_acc_reg[23]_i_1_n_0 ),
        .CO({\c_acc_reg[27]_i_1_n_0 ,\c_acc_reg[27]_i_1_n_1 ,\c_acc_reg[27]_i_1_n_2 ,\c_acc_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\c_acc_reg[27]_i_1_n_4 ,\c_acc_reg[27]_i_1_n_5 ,\c_acc_reg[27]_i_1_n_6 ,\c_acc_reg[27]_i_1_n_7 }),
        .S({\c_acc[27]_i_2_n_0 ,\c_acc[27]_i_3_n_0 ,\c_acc[27]_i_4_n_0 ,\c_acc[27]_i_5_n_0 }));
  FDRE \c_acc_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_7 ),
        .Q(o_c[28]),
        .R(1'b0));
  FDRE \c_acc_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_6 ),
        .Q(o_c[29]),
        .R(1'b0));
  FDRE \c_acc_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_5 ),
        .Q(o_c[2]),
        .R(1'b0));
  FDRE \c_acc_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_5 ),
        .Q(o_c[30]),
        .R(1'b0));
  FDRE \c_acc_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[31]_i_1_n_4 ),
        .Q(o_c[31]),
        .R(1'b0));
  CARRY4 \c_acc_reg[31]_i_1 
       (.CI(\c_acc_reg[27]_i_1_n_0 ),
        .CO({\c_acc_reg[31]_i_1_n_0 ,\c_acc_reg[31]_i_1_n_1 ,\c_acc_reg[31]_i_1_n_2 ,\c_acc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[31:28]),
        .O({\c_acc_reg[31]_i_1_n_4 ,\c_acc_reg[31]_i_1_n_5 ,\c_acc_reg[31]_i_1_n_6 ,\c_acc_reg[31]_i_1_n_7 }),
        .S({\c_acc[31]_i_2_n_0 ,\c_acc[31]_i_3_n_0 ,\c_acc[31]_i_4_n_0 ,\c_acc[31]_i_5_n_0 }));
  FDRE \c_acc_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_7 ),
        .Q(o_c[32]),
        .R(1'b0));
  FDRE \c_acc_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_6 ),
        .Q(o_c[33]),
        .R(1'b0));
  FDRE \c_acc_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_5 ),
        .Q(o_c[34]),
        .R(1'b0));
  FDRE \c_acc_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[35]_i_1_n_4 ),
        .Q(o_c[35]),
        .R(1'b0));
  CARRY4 \c_acc_reg[35]_i_1 
       (.CI(\c_acc_reg[31]_i_1_n_0 ),
        .CO({\c_acc_reg[35]_i_1_n_0 ,\c_acc_reg[35]_i_1_n_1 ,\c_acc_reg[35]_i_1_n_2 ,\c_acc_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[35:32]),
        .O({\c_acc_reg[35]_i_1_n_4 ,\c_acc_reg[35]_i_1_n_5 ,\c_acc_reg[35]_i_1_n_6 ,\c_acc_reg[35]_i_1_n_7 }),
        .S({\c_acc[35]_i_2_n_0 ,\c_acc[35]_i_3_n_0 ,\c_acc[35]_i_4_n_0 ,\c_acc[35]_i_5_n_0 }));
  FDRE \c_acc_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_7 ),
        .Q(o_c[36]),
        .R(1'b0));
  FDRE \c_acc_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_6 ),
        .Q(o_c[37]),
        .R(1'b0));
  FDRE \c_acc_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_5 ),
        .Q(o_c[38]),
        .R(1'b0));
  FDRE \c_acc_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[39]_i_1_n_4 ),
        .Q(o_c[39]),
        .R(1'b0));
  CARRY4 \c_acc_reg[39]_i_1 
       (.CI(\c_acc_reg[35]_i_1_n_0 ),
        .CO({\c_acc_reg[39]_i_1_n_0 ,\c_acc_reg[39]_i_1_n_1 ,\c_acc_reg[39]_i_1_n_2 ,\c_acc_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[39:36]),
        .O({\c_acc_reg[39]_i_1_n_4 ,\c_acc_reg[39]_i_1_n_5 ,\c_acc_reg[39]_i_1_n_6 ,\c_acc_reg[39]_i_1_n_7 }),
        .S({\c_acc[39]_i_2_n_0 ,\c_acc[39]_i_3_n_0 ,\c_acc[39]_i_4_n_0 ,\c_acc[39]_i_5_n_0 }));
  FDRE \c_acc_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[3]_i_1_n_4 ),
        .Q(o_c[3]),
        .R(1'b0));
  CARRY4 \c_acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\c_acc_reg[3]_i_1_n_0 ,\c_acc_reg[3]_i_1_n_1 ,\c_acc_reg[3]_i_1_n_2 ,\c_acc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\c_acc_reg[3]_i_1_n_4 ,\c_acc_reg[3]_i_1_n_5 ,\c_acc_reg[3]_i_1_n_6 ,\c_acc_reg[3]_i_1_n_7 }),
        .S({\c_acc[3]_i_2_n_0 ,\c_acc[3]_i_3_n_0 ,\c_acc[3]_i_4_n_0 ,\c_acc[3]_i_5_n_0 }));
  FDRE \c_acc_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_7 ),
        .Q(o_c[40]),
        .R(1'b0));
  FDRE \c_acc_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_6 ),
        .Q(o_c[41]),
        .R(1'b0));
  FDRE \c_acc_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_5 ),
        .Q(o_c[42]),
        .R(1'b0));
  FDRE \c_acc_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[43]_i_1_n_4 ),
        .Q(o_c[43]),
        .R(1'b0));
  CARRY4 \c_acc_reg[43]_i_1 
       (.CI(\c_acc_reg[39]_i_1_n_0 ),
        .CO({\c_acc_reg[43]_i_1_n_0 ,\c_acc_reg[43]_i_1_n_1 ,\c_acc_reg[43]_i_1_n_2 ,\c_acc_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[43:40]),
        .O({\c_acc_reg[43]_i_1_n_4 ,\c_acc_reg[43]_i_1_n_5 ,\c_acc_reg[43]_i_1_n_6 ,\c_acc_reg[43]_i_1_n_7 }),
        .S({\c_acc[43]_i_2_n_0 ,\c_acc[43]_i_3_n_0 ,\c_acc[43]_i_4_n_0 ,\c_acc[43]_i_5_n_0 }));
  FDRE \c_acc_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_7 ),
        .Q(o_c[44]),
        .R(1'b0));
  FDRE \c_acc_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_6 ),
        .Q(o_c[45]),
        .R(1'b0));
  FDRE \c_acc_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_5 ),
        .Q(o_c[46]),
        .R(1'b0));
  FDRE \c_acc_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[47]_i_1_n_4 ),
        .Q(o_c[47]),
        .R(1'b0));
  CARRY4 \c_acc_reg[47]_i_1 
       (.CI(\c_acc_reg[43]_i_1_n_0 ),
        .CO({\c_acc_reg[47]_i_1_n_0 ,\c_acc_reg[47]_i_1_n_1 ,\c_acc_reg[47]_i_1_n_2 ,\c_acc_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[47:44]),
        .O({\c_acc_reg[47]_i_1_n_4 ,\c_acc_reg[47]_i_1_n_5 ,\c_acc_reg[47]_i_1_n_6 ,\c_acc_reg[47]_i_1_n_7 }),
        .S({\c_acc[47]_i_2_n_0 ,\c_acc[47]_i_3_n_0 ,\c_acc[47]_i_4_n_0 ,\c_acc[47]_i_5_n_0 }));
  FDRE \c_acc_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_7 ),
        .Q(o_c[48]),
        .R(1'b0));
  FDRE \c_acc_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_6 ),
        .Q(o_c[49]),
        .R(1'b0));
  FDRE \c_acc_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_7 ),
        .Q(o_c[4]),
        .R(1'b0));
  FDRE \c_acc_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_5 ),
        .Q(o_c[50]),
        .R(1'b0));
  FDRE \c_acc_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[51]_i_1_n_4 ),
        .Q(o_c[51]),
        .R(1'b0));
  CARRY4 \c_acc_reg[51]_i_1 
       (.CI(\c_acc_reg[47]_i_1_n_0 ),
        .CO({\c_acc_reg[51]_i_1_n_0 ,\c_acc_reg[51]_i_1_n_1 ,\c_acc_reg[51]_i_1_n_2 ,\c_acc_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[51:48]),
        .O({\c_acc_reg[51]_i_1_n_4 ,\c_acc_reg[51]_i_1_n_5 ,\c_acc_reg[51]_i_1_n_6 ,\c_acc_reg[51]_i_1_n_7 }),
        .S({\c_acc[51]_i_2_n_0 ,\c_acc[51]_i_3_n_0 ,\c_acc[51]_i_4_n_0 ,\c_acc[51]_i_5_n_0 }));
  FDRE \c_acc_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_7 ),
        .Q(o_c[52]),
        .R(1'b0));
  FDRE \c_acc_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_6 ),
        .Q(o_c[53]),
        .R(1'b0));
  FDRE \c_acc_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_5 ),
        .Q(o_c[54]),
        .R(1'b0));
  FDRE \c_acc_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[55]_i_1_n_4 ),
        .Q(o_c[55]),
        .R(1'b0));
  CARRY4 \c_acc_reg[55]_i_1 
       (.CI(\c_acc_reg[51]_i_1_n_0 ),
        .CO({\c_acc_reg[55]_i_1_n_0 ,\c_acc_reg[55]_i_1_n_1 ,\c_acc_reg[55]_i_1_n_2 ,\c_acc_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[55:52]),
        .O({\c_acc_reg[55]_i_1_n_4 ,\c_acc_reg[55]_i_1_n_5 ,\c_acc_reg[55]_i_1_n_6 ,\c_acc_reg[55]_i_1_n_7 }),
        .S({\c_acc[55]_i_2_n_0 ,\c_acc[55]_i_3_n_0 ,\c_acc[55]_i_4_n_0 ,\c_acc[55]_i_5_n_0 }));
  FDRE \c_acc_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_7 ),
        .Q(o_c[56]),
        .R(1'b0));
  FDRE \c_acc_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_6 ),
        .Q(o_c[57]),
        .R(1'b0));
  FDRE \c_acc_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_5 ),
        .Q(o_c[58]),
        .R(1'b0));
  FDRE \c_acc_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[59]_i_1_n_4 ),
        .Q(o_c[59]),
        .R(1'b0));
  CARRY4 \c_acc_reg[59]_i_1 
       (.CI(\c_acc_reg[55]_i_1_n_0 ),
        .CO({\c_acc_reg[59]_i_1_n_0 ,\c_acc_reg[59]_i_1_n_1 ,\c_acc_reg[59]_i_1_n_2 ,\c_acc_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[59:56]),
        .O({\c_acc_reg[59]_i_1_n_4 ,\c_acc_reg[59]_i_1_n_5 ,\c_acc_reg[59]_i_1_n_6 ,\c_acc_reg[59]_i_1_n_7 }),
        .S({\c_acc[59]_i_2_n_0 ,\c_acc[59]_i_3_n_0 ,\c_acc[59]_i_4_n_0 ,\c_acc[59]_i_5_n_0 }));
  FDRE \c_acc_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_6 ),
        .Q(o_c[5]),
        .R(1'b0));
  FDRE \c_acc_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_7 ),
        .Q(o_c[60]),
        .R(1'b0));
  FDRE \c_acc_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_6 ),
        .Q(o_c[61]),
        .R(1'b0));
  FDRE \c_acc_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_5 ),
        .Q(o_c[62]),
        .R(1'b0));
  FDRE \c_acc_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[63]_i_1_n_4 ),
        .Q(o_c[63]),
        .R(1'b0));
  CARRY4 \c_acc_reg[63]_i_1 
       (.CI(\c_acc_reg[59]_i_1_n_0 ),
        .CO({\c_acc_reg[63]_i_1_n_0 ,\c_acc_reg[63]_i_1_n_1 ,\c_acc_reg[63]_i_1_n_2 ,\c_acc_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[63:60]),
        .O({\c_acc_reg[63]_i_1_n_4 ,\c_acc_reg[63]_i_1_n_5 ,\c_acc_reg[63]_i_1_n_6 ,\c_acc_reg[63]_i_1_n_7 }),
        .S({\c_acc[63]_i_2_n_0 ,\c_acc[63]_i_3_n_0 ,\c_acc[63]_i_4_n_0 ,\c_acc[63]_i_5_n_0 }));
  FDRE \c_acc_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_7 ),
        .Q(o_c[64]),
        .R(1'b0));
  FDRE \c_acc_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_6 ),
        .Q(o_c[65]),
        .R(1'b0));
  FDRE \c_acc_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_5 ),
        .Q(o_c[66]),
        .R(1'b0));
  FDRE \c_acc_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[67]_i_1_n_4 ),
        .Q(o_c[67]),
        .R(1'b0));
  CARRY4 \c_acc_reg[67]_i_1 
       (.CI(\c_acc_reg[63]_i_1_n_0 ),
        .CO({\c_acc_reg[67]_i_1_n_0 ,\c_acc_reg[67]_i_1_n_1 ,\c_acc_reg[67]_i_1_n_2 ,\c_acc_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[67:64]),
        .O({\c_acc_reg[67]_i_1_n_4 ,\c_acc_reg[67]_i_1_n_5 ,\c_acc_reg[67]_i_1_n_6 ,\c_acc_reg[67]_i_1_n_7 }),
        .S({\c_acc[67]_i_2_n_0 ,\c_acc[67]_i_3_n_0 ,\c_acc[67]_i_4_n_0 ,\c_acc[67]_i_5_n_0 }));
  FDRE \c_acc_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[71]_i_1_n_7 ),
        .Q(o_c[68]),
        .R(1'b0));
  FDRE \c_acc_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[71]_i_1_n_6 ),
        .Q(o_c[69]),
        .R(1'b0));
  FDRE \c_acc_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_5 ),
        .Q(o_c[6]),
        .R(1'b0));
  FDRE \c_acc_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[71]_i_1_n_5 ),
        .Q(o_c[70]),
        .R(1'b0));
  FDRE \c_acc_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[71]_i_1_n_4 ),
        .Q(o_c[71]),
        .R(1'b0));
  CARRY4 \c_acc_reg[71]_i_1 
       (.CI(\c_acc_reg[67]_i_1_n_0 ),
        .CO({\c_acc_reg[71]_i_1_n_0 ,\c_acc_reg[71]_i_1_n_1 ,\c_acc_reg[71]_i_1_n_2 ,\c_acc_reg[71]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[71:68]),
        .O({\c_acc_reg[71]_i_1_n_4 ,\c_acc_reg[71]_i_1_n_5 ,\c_acc_reg[71]_i_1_n_6 ,\c_acc_reg[71]_i_1_n_7 }),
        .S({\c_acc[71]_i_2_n_0 ,\c_acc[71]_i_3_n_0 ,\c_acc[71]_i_4_n_0 ,\c_acc[71]_i_5_n_0 }));
  FDRE \c_acc_reg[72] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[75]_i_1_n_7 ),
        .Q(o_c[72]),
        .R(1'b0));
  FDRE \c_acc_reg[73] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[75]_i_1_n_6 ),
        .Q(o_c[73]),
        .R(1'b0));
  FDRE \c_acc_reg[74] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[75]_i_1_n_5 ),
        .Q(o_c[74]),
        .R(1'b0));
  FDRE \c_acc_reg[75] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[75]_i_1_n_4 ),
        .Q(o_c[75]),
        .R(1'b0));
  CARRY4 \c_acc_reg[75]_i_1 
       (.CI(\c_acc_reg[71]_i_1_n_0 ),
        .CO({\c_acc_reg[75]_i_1_n_0 ,\c_acc_reg[75]_i_1_n_1 ,\c_acc_reg[75]_i_1_n_2 ,\c_acc_reg[75]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[75:72]),
        .O({\c_acc_reg[75]_i_1_n_4 ,\c_acc_reg[75]_i_1_n_5 ,\c_acc_reg[75]_i_1_n_6 ,\c_acc_reg[75]_i_1_n_7 }),
        .S({\c_acc[75]_i_2_n_0 ,\c_acc[75]_i_3_n_0 ,\c_acc[75]_i_4_n_0 ,\c_acc[75]_i_5_n_0 }));
  FDRE \c_acc_reg[76] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[79]_i_1_n_7 ),
        .Q(o_c[76]),
        .R(1'b0));
  FDRE \c_acc_reg[77] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[79]_i_1_n_6 ),
        .Q(o_c[77]),
        .R(1'b0));
  FDRE \c_acc_reg[78] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[79]_i_1_n_5 ),
        .Q(o_c[78]),
        .R(1'b0));
  FDRE \c_acc_reg[79] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[79]_i_1_n_4 ),
        .Q(o_c[79]),
        .R(1'b0));
  CARRY4 \c_acc_reg[79]_i_1 
       (.CI(\c_acc_reg[75]_i_1_n_0 ),
        .CO({\c_acc_reg[79]_i_1_n_0 ,\c_acc_reg[79]_i_1_n_1 ,\c_acc_reg[79]_i_1_n_2 ,\c_acc_reg[79]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[79:76]),
        .O({\c_acc_reg[79]_i_1_n_4 ,\c_acc_reg[79]_i_1_n_5 ,\c_acc_reg[79]_i_1_n_6 ,\c_acc_reg[79]_i_1_n_7 }),
        .S({\c_acc[79]_i_2_n_0 ,\c_acc[79]_i_3_n_0 ,\c_acc[79]_i_4_n_0 ,\c_acc[79]_i_5_n_0 }));
  FDRE \c_acc_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[7]_i_1_n_4 ),
        .Q(o_c[7]),
        .R(1'b0));
  CARRY4 \c_acc_reg[7]_i_1 
       (.CI(\c_acc_reg[3]_i_1_n_0 ),
        .CO({\c_acc_reg[7]_i_1_n_0 ,\c_acc_reg[7]_i_1_n_1 ,\c_acc_reg[7]_i_1_n_2 ,\c_acc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\c_acc_reg[7]_i_1_n_4 ,\c_acc_reg[7]_i_1_n_5 ,\c_acc_reg[7]_i_1_n_6 ,\c_acc_reg[7]_i_1_n_7 }),
        .S({\c_acc[7]_i_2_n_0 ,\c_acc[7]_i_3_n_0 ,\c_acc[7]_i_4_n_0 ,\c_acc[7]_i_5_n_0 }));
  FDRE \c_acc_reg[80] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[83]_i_1_n_7 ),
        .Q(o_c[80]),
        .R(1'b0));
  FDRE \c_acc_reg[81] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[83]_i_1_n_6 ),
        .Q(o_c[81]),
        .R(1'b0));
  FDRE \c_acc_reg[82] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[83]_i_1_n_5 ),
        .Q(o_c[82]),
        .R(1'b0));
  FDRE \c_acc_reg[83] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[83]_i_1_n_4 ),
        .Q(o_c[83]),
        .R(1'b0));
  CARRY4 \c_acc_reg[83]_i_1 
       (.CI(\c_acc_reg[79]_i_1_n_0 ),
        .CO({\c_acc_reg[83]_i_1_n_0 ,\c_acc_reg[83]_i_1_n_1 ,\c_acc_reg[83]_i_1_n_2 ,\c_acc_reg[83]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[83:80]),
        .O({\c_acc_reg[83]_i_1_n_4 ,\c_acc_reg[83]_i_1_n_5 ,\c_acc_reg[83]_i_1_n_6 ,\c_acc_reg[83]_i_1_n_7 }),
        .S({\c_acc[83]_i_2_n_0 ,\c_acc[83]_i_3_n_0 ,\c_acc[83]_i_4_n_0 ,\c_acc[83]_i_5_n_0 }));
  FDRE \c_acc_reg[84] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[85]_i_1_n_7 ),
        .Q(o_c[84]),
        .R(1'b0));
  FDRE \c_acc_reg[85] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[85]_i_1_n_6 ),
        .Q(o_c[85]),
        .R(1'b0));
  CARRY4 \c_acc_reg[85]_i_1 
       (.CI(\c_acc_reg[83]_i_1_n_0 ),
        .CO({\NLW_c_acc_reg[85]_i_1_CO_UNCONNECTED [3:1],\c_acc_reg[85]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in[84]}),
        .O({\NLW_c_acc_reg[85]_i_1_O_UNCONNECTED [3:2],\c_acc_reg[85]_i_1_n_6 ,\c_acc_reg[85]_i_1_n_7 }),
        .S({1'b0,1'b0,\c_acc[85]_i_2_n_0 ,\c_acc[85]_i_3_n_0 }));
  FDRE \c_acc_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_7 ),
        .Q(o_c[8]),
        .R(1'b0));
  FDRE \c_acc_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\c_acc_reg[11]_i_1_n_6 ),
        .Q(o_c[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \c_in[16]_i_1 
       (.I0(p_0_in[7]),
        .I1(\c_in[80]_i_3_n_0 ),
        .O(\c_in[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_2 
       (.I0(\c_in[80]_i_3_n_0 ),
        .I1(p_0_in[7]),
        .O(\c_in[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_3 
       (.I0(\c_in[80]_i_3_n_0 ),
        .I1(p_0_in[6]),
        .O(\c_in[46]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_4 
       (.I0(\c_in[80]_i_3_n_0 ),
        .I1(Q[0]),
        .O(\c_in[46]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[63]_i_3 
       (.I0(\c_in[80]_i_3_n_0 ),
        .I1(p_0_in[4]),
        .O(\c_in[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \c_in[80]_i_3 
       (.I0(p_0_in[4]),
        .I1(Q[0]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .O(\c_in[80]_i_3_n_0 ));
  FDRE \c_in_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[0]),
        .Q(in[0]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[10]),
        .Q(in[10]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[11]),
        .Q(in[11]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[12]),
        .Q(in[12]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[13]),
        .Q(in[13]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[14]),
        .Q(in[14]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[15]),
        .Q(in[15]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[16]),
        .Q(in[16]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[17]),
        .Q(in[17]),
        .R(1'b0));
  FDRE \c_in_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[18]),
        .Q(in[18]),
        .R(1'b0));
  FDRE \c_in_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[19]),
        .Q(in[19]),
        .R(1'b0));
  FDRE \c_in_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[1]),
        .Q(in[1]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[20]),
        .Q(in[20]),
        .R(1'b0));
  FDRE \c_in_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[21]),
        .Q(in[21]),
        .R(1'b0));
  FDRE \c_in_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[22]),
        .Q(in[22]),
        .R(1'b0));
  FDRE \c_in_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[23]),
        .Q(in[23]),
        .R(1'b0));
  FDRE \c_in_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[24]),
        .Q(in[24]),
        .R(1'b0));
  FDRE \c_in_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[25]),
        .Q(in[25]),
        .R(1'b0));
  FDRE \c_in_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[26]),
        .Q(in[26]),
        .R(1'b0));
  FDRE \c_in_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[27]),
        .Q(in[27]),
        .R(1'b0));
  FDRE \c_in_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[28]),
        .Q(in[28]),
        .R(1'b0));
  FDRE \c_in_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[29]),
        .Q(in[29]),
        .R(1'b0));
  FDRE \c_in_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[2]),
        .Q(in[2]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[30]),
        .Q(in[30]),
        .R(1'b0));
  FDRE \c_in_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[31]),
        .Q(in[31]),
        .R(1'b0));
  FDRE \c_in_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[32]),
        .Q(in[32]),
        .R(1'b0));
  FDRE \c_in_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[33]),
        .Q(in[33]),
        .R(1'b0));
  FDRE \c_in_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[34]),
        .Q(in[34]),
        .R(1'b0));
  FDRE \c_in_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[35]),
        .Q(in[35]),
        .R(1'b0));
  FDRE \c_in_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[36]),
        .Q(in[36]),
        .R(1'b0));
  FDRE \c_in_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[37]),
        .Q(in[37]),
        .R(1'b0));
  FDRE \c_in_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[38]),
        .Q(in[38]),
        .R(1'b0));
  FDRE \c_in_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[39]),
        .Q(in[39]),
        .R(1'b0));
  FDRE \c_in_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[3]),
        .Q(in[3]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[40]),
        .Q(in[40]),
        .R(1'b0));
  FDRE \c_in_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[41]),
        .Q(in[41]),
        .R(1'b0));
  FDRE \c_in_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[42]),
        .Q(in[42]),
        .R(1'b0));
  FDRE \c_in_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[43]),
        .Q(in[43]),
        .R(1'b0));
  FDRE \c_in_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[44]),
        .Q(in[44]),
        .R(1'b0));
  FDRE \c_in_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[45]),
        .Q(in[45]),
        .R(1'b0));
  FDRE \c_in_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[46]),
        .Q(in[46]),
        .R(1'b0));
  FDRE \c_in_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[47]),
        .Q(in[47]),
        .R(1'b0));
  FDRE \c_in_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[48]),
        .Q(in[48]),
        .R(1'b0));
  FDRE \c_in_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[49]),
        .Q(in[49]),
        .R(1'b0));
  FDRE \c_in_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[4]),
        .Q(in[4]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[50]),
        .Q(in[50]),
        .R(1'b0));
  FDSE \c_in_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_70),
        .Q(in[51]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_71),
        .Q(in[52]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_72),
        .Q(in[53]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_73),
        .Q(in[54]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_74),
        .Q(in[55]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_75),
        .Q(in[56]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_76),
        .Q(in[57]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_77),
        .Q(in[58]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_78),
        .Q(in[59]),
        .S(u_dsp48_mul_ip_n_68));
  FDRE \c_in_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[5]),
        .Q(in[5]),
        .R(\c_in[16]_i_1_n_0 ));
  FDSE \c_in_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_79),
        .Q(in[60]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_80),
        .Q(in[61]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_81),
        .Q(in[62]),
        .S(u_dsp48_mul_ip_n_68));
  FDSE \c_in_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_82),
        .Q(in[63]),
        .S(u_dsp48_mul_ip_n_68));
  FDRE \c_in_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[64]),
        .Q(in[64]),
        .R(1'b0));
  FDRE \c_in_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[65]),
        .Q(in[65]),
        .R(1'b0));
  FDRE \c_in_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[66]),
        .Q(in[66]),
        .R(1'b0));
  FDRE \c_in_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[67]),
        .Q(in[67]),
        .R(1'b0));
  FDRE \c_in_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[68]),
        .Q(in[68]),
        .R(1'b0));
  FDRE \c_in_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[69]),
        .Q(in[69]),
        .R(1'b0));
  FDRE \c_in_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[6]),
        .Q(in[6]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[70]),
        .Q(in[70]),
        .R(1'b0));
  FDRE \c_in_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[71]),
        .Q(in[71]),
        .R(1'b0));
  FDRE \c_in_reg[72] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[72]),
        .Q(in[72]),
        .R(1'b0));
  FDRE \c_in_reg[73] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[73]),
        .Q(in[73]),
        .R(1'b0));
  FDRE \c_in_reg[74] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[74]),
        .Q(in[74]),
        .R(1'b0));
  FDRE \c_in_reg[75] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[75]),
        .Q(in[75]),
        .R(1'b0));
  FDRE \c_in_reg[76] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[76]),
        .Q(in[76]),
        .R(1'b0));
  FDRE \c_in_reg[77] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[77]),
        .Q(in[77]),
        .R(1'b0));
  FDRE \c_in_reg[78] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[78]),
        .Q(in[78]),
        .R(1'b0));
  FDRE \c_in_reg[79] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[79]),
        .Q(in[79]),
        .R(1'b0));
  FDRE \c_in_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[7]),
        .Q(in[7]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[80] 
       (.C(i_clk),
        .CE(1'b1),
        .D(c_in[80]),
        .Q(in[80]),
        .R(1'b0));
  FDSE \c_in_reg[81] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_83),
        .Q(in[81]),
        .S(u_dsp48_mul_ip_n_69));
  FDSE \c_in_reg[82] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_84),
        .Q(in[82]),
        .S(u_dsp48_mul_ip_n_69));
  FDSE \c_in_reg[83] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_85),
        .Q(in[83]),
        .S(u_dsp48_mul_ip_n_69));
  FDSE \c_in_reg[84] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_86),
        .Q(in[84]),
        .S(u_dsp48_mul_ip_n_69));
  FDSE \c_in_reg[85] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_dsp48_mul_ip_n_87),
        .Q(in[85]),
        .S(u_dsp48_mul_ip_n_69));
  FDRE \c_in_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[8]),
        .Q(in[8]),
        .R(\c_in[16]_i_1_n_0 ));
  FDRE \c_in_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_p[9]),
        .Q(in[9]),
        .R(\c_in[16]_i_1_n_0 ));
  FDCE \en_buf_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(i_en),
        .Q(p_0_in[1]));
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
        .Q(Q[0]));
  FDCE \en_buf_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(Q[0]),
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
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[0]_i_1 
       (.I0(data0[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[34] ),
        .I5(\u_a[0]_i_2_n_0 ),
        .O(u_a[0]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[0]_i_2 
       (.I0(\a_buf_reg_n_0_[17] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[0] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[10]_i_1 
       (.I0(data0[10]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[44] ),
        .I5(\u_a[10]_i_2_n_0 ),
        .O(u_a[10]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[10]_i_2 
       (.I0(\a_buf_reg_n_0_[27] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[10] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[11]_i_1 
       (.I0(data0[11]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[45] ),
        .I5(\u_a[11]_i_2_n_0 ),
        .O(u_a[11]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[11]_i_2 
       (.I0(\a_buf_reg_n_0_[28] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[11] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[12]_i_1 
       (.I0(data0[12]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[46] ),
        .I5(\u_a[12]_i_2_n_0 ),
        .O(u_a[12]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[12]_i_2 
       (.I0(\a_buf_reg_n_0_[29] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[12] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[13]_i_1 
       (.I0(data0[13]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[47] ),
        .I5(\u_a[13]_i_2_n_0 ),
        .O(u_a[13]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[13]_i_2 
       (.I0(\a_buf_reg_n_0_[30] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[13] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[14]_i_1 
       (.I0(data0[14]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[48] ),
        .I5(\u_a[14]_i_2_n_0 ),
        .O(u_a[14]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[14]_i_2 
       (.I0(\a_buf_reg_n_0_[31] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[14] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[15]_i_1 
       (.I0(data0[15]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[49] ),
        .I5(\u_a[15]_i_2_n_0 ),
        .O(u_a[15]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[15]_i_2 
       (.I0(\a_buf_reg_n_0_[32] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[15] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[16]_i_1 
       (.I0(data0[16]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[50] ),
        .I5(\u_a[16]_i_2_n_0 ),
        .O(u_a[16]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[16]_i_2 
       (.I0(\a_buf_reg_n_0_[33] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[16] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \u_a[17]_i_1 
       (.I0(p_0_in[1]),
        .I1(\u_a[17]_i_2_n_0 ),
        .I2(data0[17]),
        .O(u_a[17]));
  LUT4 #(
    .INIT(16'h0116)) 
    \u_a[17]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .O(\u_a[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[1]_i_1 
       (.I0(data0[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[35] ),
        .I5(\u_a[1]_i_2_n_0 ),
        .O(u_a[1]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[1]_i_2 
       (.I0(\a_buf_reg_n_0_[18] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[1] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[2]_i_1 
       (.I0(data0[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[36] ),
        .I5(\u_a[2]_i_2_n_0 ),
        .O(u_a[2]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[2]_i_2 
       (.I0(\a_buf_reg_n_0_[19] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[2] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[3]_i_1 
       (.I0(data0[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[37] ),
        .I5(\u_a[3]_i_2_n_0 ),
        .O(u_a[3]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[3]_i_2 
       (.I0(\a_buf_reg_n_0_[20] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[3] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[4]_i_1 
       (.I0(data0[4]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[38] ),
        .I5(\u_a[4]_i_2_n_0 ),
        .O(u_a[4]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[4]_i_2 
       (.I0(\a_buf_reg_n_0_[21] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[4] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[5]_i_1 
       (.I0(data0[5]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[39] ),
        .I5(\u_a[5]_i_2_n_0 ),
        .O(u_a[5]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[5]_i_2 
       (.I0(\a_buf_reg_n_0_[22] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[5] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[6]_i_1 
       (.I0(data0[6]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[40] ),
        .I5(\u_a[6]_i_2_n_0 ),
        .O(u_a[6]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[6]_i_2 
       (.I0(\a_buf_reg_n_0_[23] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[6] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[7]_i_1 
       (.I0(data0[7]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[41] ),
        .I5(\u_a[7]_i_2_n_0 ),
        .O(u_a[7]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[7]_i_2 
       (.I0(\a_buf_reg_n_0_[24] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[7] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[8]_i_1 
       (.I0(data0[8]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[42] ),
        .I5(\u_a[8]_i_2_n_0 ),
        .O(u_a[8]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[8]_i_2 
       (.I0(\a_buf_reg_n_0_[25] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[8] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8008800)) 
    \u_a[9]_i_1 
       (.I0(data0[9]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(\a_buf_reg_n_0_[43] ),
        .I5(\u_a[9]_i_2_n_0 ),
        .O(u_a[9]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \u_a[9]_i_2 
       (.I0(\a_buf_reg_n_0_[26] ),
        .I1(p_0_in[3]),
        .I2(\a_buf_reg_n_0_[9] ),
        .I3(\u_a[17]_i_2_n_0 ),
        .I4(p_0_in[4]),
        .O(\u_a[9]_i_2_n_0 ));
  FDRE \u_a_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[0]),
        .Q(\u_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \u_a_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[10]),
        .Q(\u_a_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \u_a_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[11]),
        .Q(\u_a_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \u_a_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[12]),
        .Q(\u_a_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \u_a_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[13]),
        .Q(\u_a_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \u_a_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[14]),
        .Q(\u_a_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \u_a_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[15]),
        .Q(\u_a_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \u_a_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[16]),
        .Q(\u_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \u_a_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[17]),
        .Q(\u_a_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \u_a_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[1]),
        .Q(\u_a_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \u_a_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[2]),
        .Q(\u_a_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \u_a_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[3]),
        .Q(\u_a_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \u_a_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[4]),
        .Q(\u_a_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \u_a_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[5]),
        .Q(\u_a_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \u_a_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[6]),
        .Q(\u_a_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \u_a_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[7]),
        .Q(\u_a_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \u_a_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[8]),
        .Q(\u_a_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \u_a_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(u_a[9]),
        .Q(\u_a_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFEE9)) 
    \u_b[17]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[4]),
        .O(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[0]),
        .Q(u_b[0]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[10]),
        .Q(u_b[10]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[11]),
        .Q(u_b[11]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[12]),
        .Q(u_b[12]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[13]),
        .Q(u_b[13]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[14]),
        .Q(u_b[14]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[15]),
        .Q(u_b[15]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[16]),
        .Q(u_b[16]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[17]),
        .Q(u_b[17]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[1]),
        .Q(u_b[1]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[2]),
        .Q(u_b[2]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[3]),
        .Q(u_b[3]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[4]),
        .Q(u_b[4]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[5]),
        .Q(u_b[5]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[6]),
        .Q(u_b[6]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[7]),
        .Q(u_b[7]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[8]),
        .Q(u_b[8]),
        .R(\u_b[17]_i_1_n_0 ));
  FDRE \u_b_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .D(b_buf[9]),
        .Q(u_b[9]),
        .R(\u_b[17]_i_1_n_0 ));
  multiplier_69_18_1dsp_ip_dsp48_mul_ip u_dsp48_mul_ip
       (.B(u_b),
        .D({c_in[80:64],c_in[50:17]}),
        .P(u_p),
        .Q({\u_a_reg_n_0_[17] ,\u_a_reg_n_0_[16] ,\u_a_reg_n_0_[15] ,\u_a_reg_n_0_[14] ,\u_a_reg_n_0_[13] ,\u_a_reg_n_0_[12] ,\u_a_reg_n_0_[11] ,\u_a_reg_n_0_[10] ,\u_a_reg_n_0_[9] ,\u_a_reg_n_0_[8] ,\u_a_reg_n_0_[7] ,\u_a_reg_n_0_[6] ,\u_a_reg_n_0_[5] ,\u_a_reg_n_0_[4] ,\u_a_reg_n_0_[3] ,\u_a_reg_n_0_[2] ,\u_a_reg_n_0_[1] ,\u_a_reg_n_0_[0] }),
        .\c_in_reg[51] (u_dsp48_mul_ip_n_68),
        .\c_in_reg[51]_0 (u_dsp48_mul_ip_n_70),
        .\c_in_reg[52] (u_dsp48_mul_ip_n_71),
        .\c_in_reg[53] (u_dsp48_mul_ip_n_72),
        .\c_in_reg[54] (u_dsp48_mul_ip_n_73),
        .\c_in_reg[55] (u_dsp48_mul_ip_n_74),
        .\c_in_reg[56] (u_dsp48_mul_ip_n_75),
        .\c_in_reg[57] (u_dsp48_mul_ip_n_76),
        .\c_in_reg[58] (u_dsp48_mul_ip_n_77),
        .\c_in_reg[59] (u_dsp48_mul_ip_n_78),
        .\c_in_reg[60] (u_dsp48_mul_ip_n_79),
        .\c_in_reg[61] (u_dsp48_mul_ip_n_80),
        .\c_in_reg[62] (u_dsp48_mul_ip_n_81),
        .\c_in_reg[63] (u_dsp48_mul_ip_n_82),
        .\c_in_reg[81] (u_dsp48_mul_ip_n_69),
        .\c_in_reg[81]_0 (u_dsp48_mul_ip_n_83),
        .\c_in_reg[82] (u_dsp48_mul_ip_n_84),
        .\c_in_reg[83] (u_dsp48_mul_ip_n_85),
        .\c_in_reg[84] (u_dsp48_mul_ip_n_86),
        .\c_in_reg[85] (u_dsp48_mul_ip_n_87),
        .\en_buf_reg[3] (\c_in[80]_i_3_n_0 ),
        .\en_buf_reg[3]_0 (\c_in[63]_i_3_n_0 ),
        .\en_buf_reg[4] (\c_in[46]_i_4_n_0 ),
        .\en_buf_reg[5] (\c_in[46]_i_3_n_0 ),
        .\en_buf_reg[6] ({p_0_in[7:6],Q[0],p_0_in[4]}),
        .\en_buf_reg[6]_0 (\c_in[46]_i_2_n_0 ),
        .i_clk(i_clk));
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
module multiplier_69_18_1dsp_ip_xbip_dsp48_macro_v3_0
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
  multiplier_69_18_1dsp_ip_xbip_dsp48_macro_v3_0_viv i_synth
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
UwwpDE1IXHoy8L/zLclv8eQB8e8FEQW+sLUoUis6KQrnf+c4uT6R+xHQy4K6gwMvkaa0bmHD8c3B
Nbp6s8PQ1DFzvJjqiUrf3BNAVB2tyu5N+AYrufch+cVfERVs2M3pfS0t/Cr8+sSOJOSpgWZGszFo
iGhOp8FQdAN6mTRerzw1/AaSk8DiHGBlM8bCoy5MVMZPv0cWMX6liUqsFba7W3VfbqMGn2/5RqgP
0eVfZzb/U/MYfkhjge92nWvEkNUhpyARtwbz2uLLwRrTCdmGzUGe6GKuI2Qpk3DLF/vZsyunKIoe
hOJrpnje5pd6l//0h5EhIp7n+68UIvHCfUqPBA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
oWKxR0aSfZhASZ1sY4u2/AmA+eUcHbNXUE0LHlLnhO6X6RBltMsjycetCyeJrksPrm8x/ztpoZrK
ry7fkkohqHWDlN12zR1FKjbCxlhUaNDmcjFaBrnWoAoVohKL+zpYftx46s6ygUnlrCU4/DWu7y/c
/XLZjcvLOO5bWElSq5AQjjlu1YpTerW2zwAeo7iIy9ku4yigALascuEDZLhJqGilZpDFx3L9Bsfq
6R3dbomLw30UB9jp+brzunjQg1qtSNMBSIne81z0gF/fzEiRSuWV1/VavYsrQl1v9l2F/5nVIQs4
0mWLBpQphp0mbQHCikSKNKN3NfTe4Kw/mCFTKw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3712)
`pragma protect data_block
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
AoqIvAtbiw==
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
UwwpDE1IXHoy8L/zLclv8eQB8e8FEQW+sLUoUis6KQrnf+c4uT6R+xHQy4K6gwMvkaa0bmHD8c3B
Nbp6s8PQ1DFzvJjqiUrf3BNAVB2tyu5N+AYrufch+cVfERVs2M3pfS0t/Cr8+sSOJOSpgWZGszFo
iGhOp8FQdAN6mTRerzw1/AaSk8DiHGBlM8bCoy5MVMZPv0cWMX6liUqsFba7W3VfbqMGn2/5RqgP
0eVfZzb/U/MYfkhjge92nWvEkNUhpyARtwbz2uLLwRrTCdmGzUGe6GKuI2Qpk3DLF/vZsyunKIoe
hOJrpnje5pd6l//0h5EhIp7n+68UIvHCfUqPBA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
oWKxR0aSfZhASZ1sY4u2/AmA+eUcHbNXUE0LHlLnhO6X6RBltMsjycetCyeJrksPrm8x/ztpoZrK
ry7fkkohqHWDlN12zR1FKjbCxlhUaNDmcjFaBrnWoAoVohKL+zpYftx46s6ygUnlrCU4/DWu7y/c
/XLZjcvLOO5bWElSq5AQjjlu1YpTerW2zwAeo7iIy9ku4yigALascuEDZLhJqGilZpDFx3L9Bsfq
6R3dbomLw30UB9jp+brzunjQg1qtSNMBSIne81z0gF/fzEiRSuWV1/VavYsrQl1v9l2F/5nVIQs4
0mWLBpQphp0mbQHCikSKNKN3NfTe4Kw/mCFTKw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5584)
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
