// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Wed Feb 08 11:27:14 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_69_18_1dsp_ip/multiplier_69_18_1dsp_ip_funcsim.v
// Design      : multiplier_69_18_1dsp_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_69_18_1dsp_ip,multiplier_69_18_1dsp,{}" *) (* CORE_GENERATION_INFO = "multiplier_69_18_1dsp_ip,multiplier_69_18_1dsp,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=multiplier_69_18_1dsp,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
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
   (D,
    i_clk,
    Q,
    \u_b_reg[17] ,
    \en_buf_reg[6] ,
    \en_buf_reg[3] ,
    \en_buf_reg[6]_0 ,
    \en_buf_reg[5] ,
    \en_buf_reg[4] );
  output [85:0]D;
  input i_clk;
  input [17:0]Q;
  input [17:0]\u_b_reg[17] ;
  input [3:0]\en_buf_reg[6] ;
  input \en_buf_reg[3] ;
  input \en_buf_reg[6]_0 ;
  input \en_buf_reg[5] ;
  input \en_buf_reg[4] ;

  wire [85:0]D;
  wire [17:0]Q;
  wire \c_in[50]_i_2_n_0 ;
  wire \c_in[51]_i_2_n_0 ;
  wire \c_in[52]_i_2_n_0 ;
  wire \c_in[53]_i_2_n_0 ;
  wire \c_in[54]_i_2_n_0 ;
  wire \c_in[55]_i_2_n_0 ;
  wire \c_in[56]_i_2_n_0 ;
  wire \c_in[57]_i_2_n_0 ;
  wire \c_in[58]_i_2_n_0 ;
  wire \c_in[59]_i_2_n_0 ;
  wire \c_in[60]_i_2_n_0 ;
  wire \c_in[61]_i_2_n_0 ;
  wire \c_in[62]_i_2_n_0 ;
  wire \c_in[63]_i_2_n_0 ;
  wire \c_in[85]_i_2_n_0 ;
  wire \en_buf_reg[3] ;
  wire \en_buf_reg[4] ;
  wire \en_buf_reg[5] ;
  wire [3:0]\en_buf_reg[6] ;
  wire \en_buf_reg[6]_0 ;
  wire i_clk;
  wire [17:0]\u_b_reg[17] ;
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
        .B(\u_b_reg[17] ),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[0]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[10]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[11]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[12]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[13]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[14]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[15]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[16]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[17]_i_1 
       (.I0(u_p[0]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[17]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[18]_i_1 
       (.I0(u_p[1]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[18]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[19]_i_1 
       (.I0(u_p[2]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[19]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[1]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[20]_i_1 
       (.I0(u_p[3]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[20]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[21]_i_1 
       (.I0(u_p[4]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[21]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[22]_i_1 
       (.I0(u_p[5]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[22]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[23]_i_1 
       (.I0(u_p[6]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[23]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[24]_i_1 
       (.I0(u_p[7]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[24]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[25]_i_1 
       (.I0(u_p[8]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[25]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[26]_i_1 
       (.I0(u_p[9]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[26]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[27]_i_1 
       (.I0(u_p[10]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[27]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[28]_i_1 
       (.I0(u_p[11]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[28]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[29]_i_1 
       (.I0(u_p[12]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[29]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[2]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[30]_i_1 
       (.I0(u_p[13]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[30]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[31]_i_1 
       (.I0(u_p[14]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[31]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[32]_i_1 
       (.I0(u_p[15]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[32]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[33]_i_1 
       (.I0(u_p[16]),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[33]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [3]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[34]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[34]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[17]),
        .I4(u_p[0]),
        .I5(\en_buf_reg[4] ),
        .O(D[34]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[35]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[35]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[18]),
        .I4(u_p[1]),
        .I5(\en_buf_reg[4] ),
        .O(D[35]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[36]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[36]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[19]),
        .I4(u_p[2]),
        .I5(\en_buf_reg[4] ),
        .O(D[36]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[37]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[37]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[20]),
        .I4(u_p[3]),
        .I5(\en_buf_reg[4] ),
        .O(D[37]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[38]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[38]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[21]),
        .I4(u_p[4]),
        .I5(\en_buf_reg[4] ),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[39]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[39]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[22]),
        .I4(u_p[5]),
        .I5(\en_buf_reg[4] ),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[3]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[40]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[40]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[23]),
        .I4(u_p[6]),
        .I5(\en_buf_reg[4] ),
        .O(D[40]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[41]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[41]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[24]),
        .I4(u_p[7]),
        .I5(\en_buf_reg[4] ),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[42]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[42]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[25]),
        .I4(u_p[8]),
        .I5(\en_buf_reg[4] ),
        .O(D[42]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[43]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[43]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[26]),
        .I4(u_p[9]),
        .I5(\en_buf_reg[4] ),
        .O(D[43]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[44]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[44]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[27]),
        .I4(u_p[10]),
        .I5(\en_buf_reg[4] ),
        .O(D[44]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[45]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[45]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[28]),
        .I4(u_p[11]),
        .I5(\en_buf_reg[4] ),
        .O(D[45]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \c_in[46]_i_1 
       (.I0(\en_buf_reg[6]_0 ),
        .I1(u_p[46]),
        .I2(\en_buf_reg[5] ),
        .I3(u_p[29]),
        .I4(u_p[12]),
        .I5(\en_buf_reg[4] ),
        .O(D[46]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[47]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[30]),
        .I3(u_p[13]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[47]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[48]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[31]),
        .I3(u_p[14]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[48]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[49]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[32]),
        .I3(u_p[15]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[4]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[50]_i_1 
       (.I0(\c_in[50]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [2]),
        .I2(u_p[33]),
        .I3(u_p[16]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [1]),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[50]_i_2 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[47]),
        .O(\c_in[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[51]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[0]),
        .I2(\c_in[51]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[51]_i_2 
       (.I0(u_p[17]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[34]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[52]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[1]),
        .I2(\c_in[52]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[52]_i_2 
       (.I0(u_p[18]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[35]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[52]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[53]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[2]),
        .I2(\c_in[53]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[53]_i_2 
       (.I0(u_p[19]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[36]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[54]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[3]),
        .I2(\c_in[54]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[54]_i_2 
       (.I0(u_p[20]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[37]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[55]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[4]),
        .I2(\c_in[55]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[55]_i_2 
       (.I0(u_p[21]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[38]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[56]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[5]),
        .I2(\c_in[56]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[56]_i_2 
       (.I0(u_p[22]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[39]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[56]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[57]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[6]),
        .I2(\c_in[57]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[57]_i_2 
       (.I0(u_p[23]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[40]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[58]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[7]),
        .I2(\c_in[58]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[58]_i_2 
       (.I0(u_p[24]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[41]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[59]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[8]),
        .I2(\c_in[59]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[59]_i_2 
       (.I0(u_p[25]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[42]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[59]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[5]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[60]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[9]),
        .I2(\c_in[60]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[60]_i_2 
       (.I0(u_p[26]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[43]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[60]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[61]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[10]),
        .I2(\c_in[61]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[61]_i_2 
       (.I0(u_p[27]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[44]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[62]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[11]),
        .I2(\c_in[62]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[62]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[62]_i_2 
       (.I0(u_p[28]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[45]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[63]_i_1 
       (.I0(\en_buf_reg[6] [0]),
        .I1(u_p[12]),
        .I2(\c_in[63]_i_2_n_0 ),
        .I3(u_p[47]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [3]),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hF8008800)) 
    \c_in[63]_i_2 
       (.I0(u_p[29]),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[46]),
        .I3(\en_buf_reg[3] ),
        .I4(\en_buf_reg[6] [2]),
        .O(\c_in[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[64]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[30]),
        .I3(u_p[13]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[64]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[65]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[31]),
        .I3(u_p[14]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[65]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[66]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[32]),
        .I3(u_p[15]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[66]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[67]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[33]),
        .I3(u_p[16]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[67]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[68]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[34]),
        .I3(u_p[17]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[68]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[69]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[35]),
        .I3(u_p[18]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[69]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[6]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[70]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[36]),
        .I3(u_p[19]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[70]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[71]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[37]),
        .I3(u_p[20]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[71]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[72]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[38]),
        .I3(u_p[21]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[72]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[73]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[39]),
        .I3(u_p[22]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[73]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[74]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[40]),
        .I3(u_p[23]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[74]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[75]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[41]),
        .I3(u_p[24]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[75]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[76]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[42]),
        .I3(u_p[25]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[76]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[77]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[43]),
        .I3(u_p[26]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[77]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[78]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[44]),
        .I3(u_p[27]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[78]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[79]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[45]),
        .I3(u_p[28]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[79]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[7]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFEAAAAAEAEAAAAA)) 
    \c_in[80]_i_1 
       (.I0(\c_in[85]_i_2_n_0 ),
        .I1(\en_buf_reg[6] [1]),
        .I2(u_p[46]),
        .I3(u_p[29]),
        .I4(\en_buf_reg[3] ),
        .I5(\en_buf_reg[6] [0]),
        .O(D[80]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[81]_i_1 
       (.I0(u_p[30]),
        .I1(\en_buf_reg[6] [0]),
        .I2(\c_in[85]_i_2_n_0 ),
        .I3(\en_buf_reg[6] [1]),
        .I4(\en_buf_reg[3] ),
        .I5(u_p[47]),
        .O(D[81]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[82]_i_1 
       (.I0(u_p[31]),
        .I1(\en_buf_reg[6] [0]),
        .I2(\c_in[85]_i_2_n_0 ),
        .I3(\en_buf_reg[6] [1]),
        .I4(\en_buf_reg[3] ),
        .I5(u_p[47]),
        .O(D[82]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[83]_i_1 
       (.I0(u_p[32]),
        .I1(\en_buf_reg[6] [0]),
        .I2(\c_in[85]_i_2_n_0 ),
        .I3(\en_buf_reg[6] [1]),
        .I4(\en_buf_reg[3] ),
        .I5(u_p[47]),
        .O(D[83]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[84]_i_1 
       (.I0(u_p[33]),
        .I1(\en_buf_reg[6] [0]),
        .I2(\c_in[85]_i_2_n_0 ),
        .I3(\en_buf_reg[6] [1]),
        .I4(\en_buf_reg[3] ),
        .I5(u_p[47]),
        .O(D[84]));
  LUT6 #(
    .INIT(64'hFFF8F0F0F8F8F0F0)) 
    \c_in[85]_i_1 
       (.I0(u_p[34]),
        .I1(\en_buf_reg[6] [0]),
        .I2(\c_in[85]_i_2_n_0 ),
        .I3(\en_buf_reg[6] [1]),
        .I4(\en_buf_reg[3] ),
        .I5(u_p[47]),
        .O(D[85]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \c_in[85]_i_2 
       (.I0(\en_buf_reg[3] ),
        .I1(\en_buf_reg[6] [3]),
        .I2(\en_buf_reg[6] [2]),
        .I3(u_p[47]),
        .O(\c_in[85]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[8]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \c_in[9]_i_1 
       (.I0(\en_buf_reg[6] [3]),
        .I1(\en_buf_reg[3] ),
        .I2(u_p[9]),
        .O(D[9]));
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
  wire [85:0]c_in;
  wire \c_in[46]_i_2_n_0 ;
  wire \c_in[46]_i_3_n_0 ;
  wire \c_in[46]_i_4_n_0 ;
  wire \c_in[85]_i_3_n_0 ;
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
  wire \u_b[0]_i_1_n_0 ;
  wire \u_b[10]_i_1_n_0 ;
  wire \u_b[11]_i_1_n_0 ;
  wire \u_b[12]_i_1_n_0 ;
  wire \u_b[13]_i_1_n_0 ;
  wire \u_b[14]_i_1_n_0 ;
  wire \u_b[15]_i_1_n_0 ;
  wire \u_b[16]_i_1_n_0 ;
  wire \u_b[17]_i_1_n_0 ;
  wire \u_b[1]_i_1_n_0 ;
  wire \u_b[2]_i_1_n_0 ;
  wire \u_b[3]_i_1_n_0 ;
  wire \u_b[4]_i_1_n_0 ;
  wire \u_b[5]_i_1_n_0 ;
  wire \u_b[6]_i_1_n_0 ;
  wire \u_b[7]_i_1_n_0 ;
  wire \u_b[8]_i_1_n_0 ;
  wire \u_b[9]_i_1_n_0 ;
  wire [3:1]\NLW_c_acc_reg[85]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_c_acc_reg[85]_i_1_O_UNCONNECTED ;

  FDCE \a_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[0]),
        .Q(\a_buf_reg_n_0_[0] ));
  FDCE \a_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[10]),
        .Q(\a_buf_reg_n_0_[10] ));
  FDCE \a_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[11]),
        .Q(\a_buf_reg_n_0_[11] ));
  FDCE \a_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[12]),
        .Q(\a_buf_reg_n_0_[12] ));
  FDCE \a_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[13]),
        .Q(\a_buf_reg_n_0_[13] ));
  FDCE \a_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[14]),
        .Q(\a_buf_reg_n_0_[14] ));
  FDCE \a_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[15]),
        .Q(\a_buf_reg_n_0_[15] ));
  FDCE \a_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[16]),
        .Q(\a_buf_reg_n_0_[16] ));
  FDCE \a_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[17]),
        .Q(\a_buf_reg_n_0_[17] ));
  FDCE \a_buf_reg[18] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[18]),
        .Q(\a_buf_reg_n_0_[18] ));
  FDCE \a_buf_reg[19] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[19]),
        .Q(\a_buf_reg_n_0_[19] ));
  FDCE \a_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[1]),
        .Q(\a_buf_reg_n_0_[1] ));
  FDCE \a_buf_reg[20] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[20]),
        .Q(\a_buf_reg_n_0_[20] ));
  FDCE \a_buf_reg[21] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[21]),
        .Q(\a_buf_reg_n_0_[21] ));
  FDCE \a_buf_reg[22] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[22]),
        .Q(\a_buf_reg_n_0_[22] ));
  FDCE \a_buf_reg[23] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[23]),
        .Q(\a_buf_reg_n_0_[23] ));
  FDCE \a_buf_reg[24] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[24]),
        .Q(\a_buf_reg_n_0_[24] ));
  FDCE \a_buf_reg[25] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[25]),
        .Q(\a_buf_reg_n_0_[25] ));
  FDCE \a_buf_reg[26] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[26]),
        .Q(\a_buf_reg_n_0_[26] ));
  FDCE \a_buf_reg[27] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[27]),
        .Q(\a_buf_reg_n_0_[27] ));
  FDCE \a_buf_reg[28] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[28]),
        .Q(\a_buf_reg_n_0_[28] ));
  FDCE \a_buf_reg[29] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[29]),
        .Q(\a_buf_reg_n_0_[29] ));
  FDCE \a_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[2]),
        .Q(\a_buf_reg_n_0_[2] ));
  FDCE \a_buf_reg[30] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[30]),
        .Q(\a_buf_reg_n_0_[30] ));
  FDCE \a_buf_reg[31] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[31]),
        .Q(\a_buf_reg_n_0_[31] ));
  FDCE \a_buf_reg[32] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[32]),
        .Q(\a_buf_reg_n_0_[32] ));
  FDCE \a_buf_reg[33] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[33]),
        .Q(\a_buf_reg_n_0_[33] ));
  FDCE \a_buf_reg[34] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[34]),
        .Q(\a_buf_reg_n_0_[34] ));
  FDCE \a_buf_reg[35] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[35]),
        .Q(\a_buf_reg_n_0_[35] ));
  FDCE \a_buf_reg[36] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[36]),
        .Q(\a_buf_reg_n_0_[36] ));
  FDCE \a_buf_reg[37] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[37]),
        .Q(\a_buf_reg_n_0_[37] ));
  FDCE \a_buf_reg[38] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[38]),
        .Q(\a_buf_reg_n_0_[38] ));
  FDCE \a_buf_reg[39] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[39]),
        .Q(\a_buf_reg_n_0_[39] ));
  FDCE \a_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[3]),
        .Q(\a_buf_reg_n_0_[3] ));
  FDCE \a_buf_reg[40] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[40]),
        .Q(\a_buf_reg_n_0_[40] ));
  FDCE \a_buf_reg[41] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[41]),
        .Q(\a_buf_reg_n_0_[41] ));
  FDCE \a_buf_reg[42] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[42]),
        .Q(\a_buf_reg_n_0_[42] ));
  FDCE \a_buf_reg[43] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[43]),
        .Q(\a_buf_reg_n_0_[43] ));
  FDCE \a_buf_reg[44] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[44]),
        .Q(\a_buf_reg_n_0_[44] ));
  FDCE \a_buf_reg[45] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[45]),
        .Q(\a_buf_reg_n_0_[45] ));
  FDCE \a_buf_reg[46] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[46]),
        .Q(\a_buf_reg_n_0_[46] ));
  FDCE \a_buf_reg[47] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[47]),
        .Q(\a_buf_reg_n_0_[47] ));
  FDCE \a_buf_reg[48] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[48]),
        .Q(\a_buf_reg_n_0_[48] ));
  FDCE \a_buf_reg[49] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[49]),
        .Q(\a_buf_reg_n_0_[49] ));
  FDCE \a_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[4]),
        .Q(\a_buf_reg_n_0_[4] ));
  FDCE \a_buf_reg[50] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[50]),
        .Q(\a_buf_reg_n_0_[50] ));
  FDCE \a_buf_reg[51] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[51]),
        .Q(data0[0]));
  FDCE \a_buf_reg[52] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[52]),
        .Q(data0[1]));
  FDCE \a_buf_reg[53] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[53]),
        .Q(data0[2]));
  FDCE \a_buf_reg[54] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[54]),
        .Q(data0[3]));
  FDCE \a_buf_reg[55] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[55]),
        .Q(data0[4]));
  FDCE \a_buf_reg[56] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[56]),
        .Q(data0[5]));
  FDCE \a_buf_reg[57] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[57]),
        .Q(data0[6]));
  FDCE \a_buf_reg[58] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[58]),
        .Q(data0[7]));
  FDCE \a_buf_reg[59] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[59]),
        .Q(data0[8]));
  FDCE \a_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[5]),
        .Q(\a_buf_reg_n_0_[5] ));
  FDCE \a_buf_reg[60] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[60]),
        .Q(data0[9]));
  FDCE \a_buf_reg[61] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[61]),
        .Q(data0[10]));
  FDCE \a_buf_reg[62] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[62]),
        .Q(data0[11]));
  FDCE \a_buf_reg[63] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[63]),
        .Q(data0[12]));
  FDCE \a_buf_reg[64] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[64]),
        .Q(data0[13]));
  FDCE \a_buf_reg[65] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[65]),
        .Q(data0[14]));
  FDCE \a_buf_reg[66] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[66]),
        .Q(data0[15]));
  FDCE \a_buf_reg[67] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[67]),
        .Q(data0[16]));
  FDCE \a_buf_reg[68] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[68]),
        .Q(data0[17]));
  FDCE \a_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[6]),
        .Q(\a_buf_reg_n_0_[6] ));
  FDCE \a_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[7]),
        .Q(\a_buf_reg_n_0_[7] ));
  FDCE \a_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[8]),
        .Q(\a_buf_reg_n_0_[8] ));
  FDCE \a_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_a[9]),
        .Q(\a_buf_reg_n_0_[9] ));
  FDCE \b_buf_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[0]),
        .Q(b_buf[0]));
  FDCE \b_buf_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[10]),
        .Q(b_buf[10]));
  FDCE \b_buf_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[11]),
        .Q(b_buf[11]));
  FDCE \b_buf_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[12]),
        .Q(b_buf[12]));
  FDCE \b_buf_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[13]),
        .Q(b_buf[13]));
  FDCE \b_buf_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[14]),
        .Q(b_buf[14]));
  FDCE \b_buf_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[15]),
        .Q(b_buf[15]));
  FDCE \b_buf_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[16]),
        .Q(b_buf[16]));
  FDCE \b_buf_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[17]),
        .Q(b_buf[17]));
  FDCE \b_buf_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[1]),
        .Q(b_buf[1]));
  FDCE \b_buf_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[2]),
        .Q(b_buf[2]));
  FDCE \b_buf_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[3]),
        .Q(b_buf[3]));
  FDCE \b_buf_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[4]),
        .Q(b_buf[4]));
  FDCE \b_buf_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[5]),
        .Q(b_buf[5]));
  FDCE \b_buf_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[6]),
        .Q(b_buf[6]));
  FDCE \b_buf_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[7]),
        .Q(b_buf[7]));
  FDCE \b_buf_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[8]),
        .Q(b_buf[8]));
  FDCE \b_buf_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_rst),
        .D(i_b[9]),
        .Q(b_buf[9]));
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
  FDCE \c_acc_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_7 ),
        .Q(o_c[0]));
  FDCE \c_acc_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_5 ),
        .Q(o_c[10]));
  FDCE \c_acc_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_4 ),
        .Q(o_c[11]));
  CARRY4 \c_acc_reg[11]_i_1 
       (.CI(\c_acc_reg[7]_i_1_n_0 ),
        .CO({\c_acc_reg[11]_i_1_n_0 ,\c_acc_reg[11]_i_1_n_1 ,\c_acc_reg[11]_i_1_n_2 ,\c_acc_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\c_acc_reg[11]_i_1_n_4 ,\c_acc_reg[11]_i_1_n_5 ,\c_acc_reg[11]_i_1_n_6 ,\c_acc_reg[11]_i_1_n_7 }),
        .S({\c_acc[11]_i_2_n_0 ,\c_acc[11]_i_3_n_0 ,\c_acc[11]_i_4_n_0 ,\c_acc[11]_i_5_n_0 }));
  FDCE \c_acc_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_7 ),
        .Q(o_c[12]));
  FDCE \c_acc_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_6 ),
        .Q(o_c[13]));
  FDCE \c_acc_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_5 ),
        .Q(o_c[14]));
  FDCE \c_acc_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[15]_i_1_n_4 ),
        .Q(o_c[15]));
  CARRY4 \c_acc_reg[15]_i_1 
       (.CI(\c_acc_reg[11]_i_1_n_0 ),
        .CO({\c_acc_reg[15]_i_1_n_0 ,\c_acc_reg[15]_i_1_n_1 ,\c_acc_reg[15]_i_1_n_2 ,\c_acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\c_acc_reg[15]_i_1_n_4 ,\c_acc_reg[15]_i_1_n_5 ,\c_acc_reg[15]_i_1_n_6 ,\c_acc_reg[15]_i_1_n_7 }),
        .S({\c_acc[15]_i_2_n_0 ,\c_acc[15]_i_3_n_0 ,\c_acc[15]_i_4_n_0 ,\c_acc[15]_i_5_n_0 }));
  FDCE \c_acc_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_7 ),
        .Q(o_c[16]));
  FDCE \c_acc_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_6 ),
        .Q(o_c[17]));
  FDCE \c_acc_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_5 ),
        .Q(o_c[18]));
  FDCE \c_acc_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[19]_i_1_n_4 ),
        .Q(o_c[19]));
  CARRY4 \c_acc_reg[19]_i_1 
       (.CI(\c_acc_reg[15]_i_1_n_0 ),
        .CO({\c_acc_reg[19]_i_1_n_0 ,\c_acc_reg[19]_i_1_n_1 ,\c_acc_reg[19]_i_1_n_2 ,\c_acc_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[19:16]),
        .O({\c_acc_reg[19]_i_1_n_4 ,\c_acc_reg[19]_i_1_n_5 ,\c_acc_reg[19]_i_1_n_6 ,\c_acc_reg[19]_i_1_n_7 }),
        .S({\c_acc[19]_i_2_n_0 ,\c_acc[19]_i_3_n_0 ,\c_acc[19]_i_4_n_0 ,\c_acc[19]_i_5_n_0 }));
  FDCE \c_acc_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_6 ),
        .Q(o_c[1]));
  FDCE \c_acc_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_7 ),
        .Q(o_c[20]));
  FDCE \c_acc_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_6 ),
        .Q(o_c[21]));
  FDCE \c_acc_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_5 ),
        .Q(o_c[22]));
  FDCE \c_acc_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[23]_i_1_n_4 ),
        .Q(o_c[23]));
  CARRY4 \c_acc_reg[23]_i_1 
       (.CI(\c_acc_reg[19]_i_1_n_0 ),
        .CO({\c_acc_reg[23]_i_1_n_0 ,\c_acc_reg[23]_i_1_n_1 ,\c_acc_reg[23]_i_1_n_2 ,\c_acc_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[23:20]),
        .O({\c_acc_reg[23]_i_1_n_4 ,\c_acc_reg[23]_i_1_n_5 ,\c_acc_reg[23]_i_1_n_6 ,\c_acc_reg[23]_i_1_n_7 }),
        .S({\c_acc[23]_i_2_n_0 ,\c_acc[23]_i_3_n_0 ,\c_acc[23]_i_4_n_0 ,\c_acc[23]_i_5_n_0 }));
  FDCE \c_acc_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_7 ),
        .Q(o_c[24]));
  FDCE \c_acc_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_6 ),
        .Q(o_c[25]));
  FDCE \c_acc_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_5 ),
        .Q(o_c[26]));
  FDCE \c_acc_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[27]_i_1_n_4 ),
        .Q(o_c[27]));
  CARRY4 \c_acc_reg[27]_i_1 
       (.CI(\c_acc_reg[23]_i_1_n_0 ),
        .CO({\c_acc_reg[27]_i_1_n_0 ,\c_acc_reg[27]_i_1_n_1 ,\c_acc_reg[27]_i_1_n_2 ,\c_acc_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[27:24]),
        .O({\c_acc_reg[27]_i_1_n_4 ,\c_acc_reg[27]_i_1_n_5 ,\c_acc_reg[27]_i_1_n_6 ,\c_acc_reg[27]_i_1_n_7 }),
        .S({\c_acc[27]_i_2_n_0 ,\c_acc[27]_i_3_n_0 ,\c_acc[27]_i_4_n_0 ,\c_acc[27]_i_5_n_0 }));
  FDCE \c_acc_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_7 ),
        .Q(o_c[28]));
  FDCE \c_acc_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_6 ),
        .Q(o_c[29]));
  FDCE \c_acc_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_5 ),
        .Q(o_c[2]));
  FDCE \c_acc_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_5 ),
        .Q(o_c[30]));
  FDCE \c_acc_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[31]_i_1_n_4 ),
        .Q(o_c[31]));
  CARRY4 \c_acc_reg[31]_i_1 
       (.CI(\c_acc_reg[27]_i_1_n_0 ),
        .CO({\c_acc_reg[31]_i_1_n_0 ,\c_acc_reg[31]_i_1_n_1 ,\c_acc_reg[31]_i_1_n_2 ,\c_acc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[31:28]),
        .O({\c_acc_reg[31]_i_1_n_4 ,\c_acc_reg[31]_i_1_n_5 ,\c_acc_reg[31]_i_1_n_6 ,\c_acc_reg[31]_i_1_n_7 }),
        .S({\c_acc[31]_i_2_n_0 ,\c_acc[31]_i_3_n_0 ,\c_acc[31]_i_4_n_0 ,\c_acc[31]_i_5_n_0 }));
  FDCE \c_acc_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_7 ),
        .Q(o_c[32]));
  FDCE \c_acc_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_6 ),
        .Q(o_c[33]));
  FDCE \c_acc_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_5 ),
        .Q(o_c[34]));
  FDCE \c_acc_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[35]_i_1_n_4 ),
        .Q(o_c[35]));
  CARRY4 \c_acc_reg[35]_i_1 
       (.CI(\c_acc_reg[31]_i_1_n_0 ),
        .CO({\c_acc_reg[35]_i_1_n_0 ,\c_acc_reg[35]_i_1_n_1 ,\c_acc_reg[35]_i_1_n_2 ,\c_acc_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[35:32]),
        .O({\c_acc_reg[35]_i_1_n_4 ,\c_acc_reg[35]_i_1_n_5 ,\c_acc_reg[35]_i_1_n_6 ,\c_acc_reg[35]_i_1_n_7 }),
        .S({\c_acc[35]_i_2_n_0 ,\c_acc[35]_i_3_n_0 ,\c_acc[35]_i_4_n_0 ,\c_acc[35]_i_5_n_0 }));
  FDCE \c_acc_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_7 ),
        .Q(o_c[36]));
  FDCE \c_acc_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_6 ),
        .Q(o_c[37]));
  FDCE \c_acc_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_5 ),
        .Q(o_c[38]));
  FDCE \c_acc_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[39]_i_1_n_4 ),
        .Q(o_c[39]));
  CARRY4 \c_acc_reg[39]_i_1 
       (.CI(\c_acc_reg[35]_i_1_n_0 ),
        .CO({\c_acc_reg[39]_i_1_n_0 ,\c_acc_reg[39]_i_1_n_1 ,\c_acc_reg[39]_i_1_n_2 ,\c_acc_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[39:36]),
        .O({\c_acc_reg[39]_i_1_n_4 ,\c_acc_reg[39]_i_1_n_5 ,\c_acc_reg[39]_i_1_n_6 ,\c_acc_reg[39]_i_1_n_7 }),
        .S({\c_acc[39]_i_2_n_0 ,\c_acc[39]_i_3_n_0 ,\c_acc[39]_i_4_n_0 ,\c_acc[39]_i_5_n_0 }));
  FDCE \c_acc_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[3]_i_1_n_4 ),
        .Q(o_c[3]));
  CARRY4 \c_acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\c_acc_reg[3]_i_1_n_0 ,\c_acc_reg[3]_i_1_n_1 ,\c_acc_reg[3]_i_1_n_2 ,\c_acc_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\c_acc_reg[3]_i_1_n_4 ,\c_acc_reg[3]_i_1_n_5 ,\c_acc_reg[3]_i_1_n_6 ,\c_acc_reg[3]_i_1_n_7 }),
        .S({\c_acc[3]_i_2_n_0 ,\c_acc[3]_i_3_n_0 ,\c_acc[3]_i_4_n_0 ,\c_acc[3]_i_5_n_0 }));
  FDCE \c_acc_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_7 ),
        .Q(o_c[40]));
  FDCE \c_acc_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_6 ),
        .Q(o_c[41]));
  FDCE \c_acc_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_5 ),
        .Q(o_c[42]));
  FDCE \c_acc_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[43]_i_1_n_4 ),
        .Q(o_c[43]));
  CARRY4 \c_acc_reg[43]_i_1 
       (.CI(\c_acc_reg[39]_i_1_n_0 ),
        .CO({\c_acc_reg[43]_i_1_n_0 ,\c_acc_reg[43]_i_1_n_1 ,\c_acc_reg[43]_i_1_n_2 ,\c_acc_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[43:40]),
        .O({\c_acc_reg[43]_i_1_n_4 ,\c_acc_reg[43]_i_1_n_5 ,\c_acc_reg[43]_i_1_n_6 ,\c_acc_reg[43]_i_1_n_7 }),
        .S({\c_acc[43]_i_2_n_0 ,\c_acc[43]_i_3_n_0 ,\c_acc[43]_i_4_n_0 ,\c_acc[43]_i_5_n_0 }));
  FDCE \c_acc_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_7 ),
        .Q(o_c[44]));
  FDCE \c_acc_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_6 ),
        .Q(o_c[45]));
  FDCE \c_acc_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_5 ),
        .Q(o_c[46]));
  FDCE \c_acc_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[47]_i_1_n_4 ),
        .Q(o_c[47]));
  CARRY4 \c_acc_reg[47]_i_1 
       (.CI(\c_acc_reg[43]_i_1_n_0 ),
        .CO({\c_acc_reg[47]_i_1_n_0 ,\c_acc_reg[47]_i_1_n_1 ,\c_acc_reg[47]_i_1_n_2 ,\c_acc_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[47:44]),
        .O({\c_acc_reg[47]_i_1_n_4 ,\c_acc_reg[47]_i_1_n_5 ,\c_acc_reg[47]_i_1_n_6 ,\c_acc_reg[47]_i_1_n_7 }),
        .S({\c_acc[47]_i_2_n_0 ,\c_acc[47]_i_3_n_0 ,\c_acc[47]_i_4_n_0 ,\c_acc[47]_i_5_n_0 }));
  FDCE \c_acc_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_7 ),
        .Q(o_c[48]));
  FDCE \c_acc_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_6 ),
        .Q(o_c[49]));
  FDCE \c_acc_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_7 ),
        .Q(o_c[4]));
  FDCE \c_acc_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_5 ),
        .Q(o_c[50]));
  FDCE \c_acc_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[51]_i_1_n_4 ),
        .Q(o_c[51]));
  CARRY4 \c_acc_reg[51]_i_1 
       (.CI(\c_acc_reg[47]_i_1_n_0 ),
        .CO({\c_acc_reg[51]_i_1_n_0 ,\c_acc_reg[51]_i_1_n_1 ,\c_acc_reg[51]_i_1_n_2 ,\c_acc_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[51:48]),
        .O({\c_acc_reg[51]_i_1_n_4 ,\c_acc_reg[51]_i_1_n_5 ,\c_acc_reg[51]_i_1_n_6 ,\c_acc_reg[51]_i_1_n_7 }),
        .S({\c_acc[51]_i_2_n_0 ,\c_acc[51]_i_3_n_0 ,\c_acc[51]_i_4_n_0 ,\c_acc[51]_i_5_n_0 }));
  FDCE \c_acc_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_7 ),
        .Q(o_c[52]));
  FDCE \c_acc_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_6 ),
        .Q(o_c[53]));
  FDCE \c_acc_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_5 ),
        .Q(o_c[54]));
  FDCE \c_acc_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[55]_i_1_n_4 ),
        .Q(o_c[55]));
  CARRY4 \c_acc_reg[55]_i_1 
       (.CI(\c_acc_reg[51]_i_1_n_0 ),
        .CO({\c_acc_reg[55]_i_1_n_0 ,\c_acc_reg[55]_i_1_n_1 ,\c_acc_reg[55]_i_1_n_2 ,\c_acc_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[55:52]),
        .O({\c_acc_reg[55]_i_1_n_4 ,\c_acc_reg[55]_i_1_n_5 ,\c_acc_reg[55]_i_1_n_6 ,\c_acc_reg[55]_i_1_n_7 }),
        .S({\c_acc[55]_i_2_n_0 ,\c_acc[55]_i_3_n_0 ,\c_acc[55]_i_4_n_0 ,\c_acc[55]_i_5_n_0 }));
  FDCE \c_acc_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_7 ),
        .Q(o_c[56]));
  FDCE \c_acc_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_6 ),
        .Q(o_c[57]));
  FDCE \c_acc_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_5 ),
        .Q(o_c[58]));
  FDCE \c_acc_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[59]_i_1_n_4 ),
        .Q(o_c[59]));
  CARRY4 \c_acc_reg[59]_i_1 
       (.CI(\c_acc_reg[55]_i_1_n_0 ),
        .CO({\c_acc_reg[59]_i_1_n_0 ,\c_acc_reg[59]_i_1_n_1 ,\c_acc_reg[59]_i_1_n_2 ,\c_acc_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[59:56]),
        .O({\c_acc_reg[59]_i_1_n_4 ,\c_acc_reg[59]_i_1_n_5 ,\c_acc_reg[59]_i_1_n_6 ,\c_acc_reg[59]_i_1_n_7 }),
        .S({\c_acc[59]_i_2_n_0 ,\c_acc[59]_i_3_n_0 ,\c_acc[59]_i_4_n_0 ,\c_acc[59]_i_5_n_0 }));
  FDCE \c_acc_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_6 ),
        .Q(o_c[5]));
  FDCE \c_acc_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_7 ),
        .Q(o_c[60]));
  FDCE \c_acc_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_6 ),
        .Q(o_c[61]));
  FDCE \c_acc_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_5 ),
        .Q(o_c[62]));
  FDCE \c_acc_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[63]_i_1_n_4 ),
        .Q(o_c[63]));
  CARRY4 \c_acc_reg[63]_i_1 
       (.CI(\c_acc_reg[59]_i_1_n_0 ),
        .CO({\c_acc_reg[63]_i_1_n_0 ,\c_acc_reg[63]_i_1_n_1 ,\c_acc_reg[63]_i_1_n_2 ,\c_acc_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[63:60]),
        .O({\c_acc_reg[63]_i_1_n_4 ,\c_acc_reg[63]_i_1_n_5 ,\c_acc_reg[63]_i_1_n_6 ,\c_acc_reg[63]_i_1_n_7 }),
        .S({\c_acc[63]_i_2_n_0 ,\c_acc[63]_i_3_n_0 ,\c_acc[63]_i_4_n_0 ,\c_acc[63]_i_5_n_0 }));
  FDCE \c_acc_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_7 ),
        .Q(o_c[64]));
  FDCE \c_acc_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_6 ),
        .Q(o_c[65]));
  FDCE \c_acc_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_5 ),
        .Q(o_c[66]));
  FDCE \c_acc_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[67]_i_1_n_4 ),
        .Q(o_c[67]));
  CARRY4 \c_acc_reg[67]_i_1 
       (.CI(\c_acc_reg[63]_i_1_n_0 ),
        .CO({\c_acc_reg[67]_i_1_n_0 ,\c_acc_reg[67]_i_1_n_1 ,\c_acc_reg[67]_i_1_n_2 ,\c_acc_reg[67]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[67:64]),
        .O({\c_acc_reg[67]_i_1_n_4 ,\c_acc_reg[67]_i_1_n_5 ,\c_acc_reg[67]_i_1_n_6 ,\c_acc_reg[67]_i_1_n_7 }),
        .S({\c_acc[67]_i_2_n_0 ,\c_acc[67]_i_3_n_0 ,\c_acc[67]_i_4_n_0 ,\c_acc[67]_i_5_n_0 }));
  FDCE \c_acc_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[71]_i_1_n_7 ),
        .Q(o_c[68]));
  FDCE \c_acc_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[71]_i_1_n_6 ),
        .Q(o_c[69]));
  FDCE \c_acc_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_5 ),
        .Q(o_c[6]));
  FDCE \c_acc_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[71]_i_1_n_5 ),
        .Q(o_c[70]));
  FDCE \c_acc_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[71]_i_1_n_4 ),
        .Q(o_c[71]));
  CARRY4 \c_acc_reg[71]_i_1 
       (.CI(\c_acc_reg[67]_i_1_n_0 ),
        .CO({\c_acc_reg[71]_i_1_n_0 ,\c_acc_reg[71]_i_1_n_1 ,\c_acc_reg[71]_i_1_n_2 ,\c_acc_reg[71]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[71:68]),
        .O({\c_acc_reg[71]_i_1_n_4 ,\c_acc_reg[71]_i_1_n_5 ,\c_acc_reg[71]_i_1_n_6 ,\c_acc_reg[71]_i_1_n_7 }),
        .S({\c_acc[71]_i_2_n_0 ,\c_acc[71]_i_3_n_0 ,\c_acc[71]_i_4_n_0 ,\c_acc[71]_i_5_n_0 }));
  FDCE \c_acc_reg[72] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[75]_i_1_n_7 ),
        .Q(o_c[72]));
  FDCE \c_acc_reg[73] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[75]_i_1_n_6 ),
        .Q(o_c[73]));
  FDCE \c_acc_reg[74] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[75]_i_1_n_5 ),
        .Q(o_c[74]));
  FDCE \c_acc_reg[75] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[75]_i_1_n_4 ),
        .Q(o_c[75]));
  CARRY4 \c_acc_reg[75]_i_1 
       (.CI(\c_acc_reg[71]_i_1_n_0 ),
        .CO({\c_acc_reg[75]_i_1_n_0 ,\c_acc_reg[75]_i_1_n_1 ,\c_acc_reg[75]_i_1_n_2 ,\c_acc_reg[75]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[75:72]),
        .O({\c_acc_reg[75]_i_1_n_4 ,\c_acc_reg[75]_i_1_n_5 ,\c_acc_reg[75]_i_1_n_6 ,\c_acc_reg[75]_i_1_n_7 }),
        .S({\c_acc[75]_i_2_n_0 ,\c_acc[75]_i_3_n_0 ,\c_acc[75]_i_4_n_0 ,\c_acc[75]_i_5_n_0 }));
  FDCE \c_acc_reg[76] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[79]_i_1_n_7 ),
        .Q(o_c[76]));
  FDCE \c_acc_reg[77] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[79]_i_1_n_6 ),
        .Q(o_c[77]));
  FDCE \c_acc_reg[78] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[79]_i_1_n_5 ),
        .Q(o_c[78]));
  FDCE \c_acc_reg[79] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[79]_i_1_n_4 ),
        .Q(o_c[79]));
  CARRY4 \c_acc_reg[79]_i_1 
       (.CI(\c_acc_reg[75]_i_1_n_0 ),
        .CO({\c_acc_reg[79]_i_1_n_0 ,\c_acc_reg[79]_i_1_n_1 ,\c_acc_reg[79]_i_1_n_2 ,\c_acc_reg[79]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[79:76]),
        .O({\c_acc_reg[79]_i_1_n_4 ,\c_acc_reg[79]_i_1_n_5 ,\c_acc_reg[79]_i_1_n_6 ,\c_acc_reg[79]_i_1_n_7 }),
        .S({\c_acc[79]_i_2_n_0 ,\c_acc[79]_i_3_n_0 ,\c_acc[79]_i_4_n_0 ,\c_acc[79]_i_5_n_0 }));
  FDCE \c_acc_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[7]_i_1_n_4 ),
        .Q(o_c[7]));
  CARRY4 \c_acc_reg[7]_i_1 
       (.CI(\c_acc_reg[3]_i_1_n_0 ),
        .CO({\c_acc_reg[7]_i_1_n_0 ,\c_acc_reg[7]_i_1_n_1 ,\c_acc_reg[7]_i_1_n_2 ,\c_acc_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\c_acc_reg[7]_i_1_n_4 ,\c_acc_reg[7]_i_1_n_5 ,\c_acc_reg[7]_i_1_n_6 ,\c_acc_reg[7]_i_1_n_7 }),
        .S({\c_acc[7]_i_2_n_0 ,\c_acc[7]_i_3_n_0 ,\c_acc[7]_i_4_n_0 ,\c_acc[7]_i_5_n_0 }));
  FDCE \c_acc_reg[80] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[83]_i_1_n_7 ),
        .Q(o_c[80]));
  FDCE \c_acc_reg[81] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[83]_i_1_n_6 ),
        .Q(o_c[81]));
  FDCE \c_acc_reg[82] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[83]_i_1_n_5 ),
        .Q(o_c[82]));
  FDCE \c_acc_reg[83] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[83]_i_1_n_4 ),
        .Q(o_c[83]));
  CARRY4 \c_acc_reg[83]_i_1 
       (.CI(\c_acc_reg[79]_i_1_n_0 ),
        .CO({\c_acc_reg[83]_i_1_n_0 ,\c_acc_reg[83]_i_1_n_1 ,\c_acc_reg[83]_i_1_n_2 ,\c_acc_reg[83]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[83:80]),
        .O({\c_acc_reg[83]_i_1_n_4 ,\c_acc_reg[83]_i_1_n_5 ,\c_acc_reg[83]_i_1_n_6 ,\c_acc_reg[83]_i_1_n_7 }),
        .S({\c_acc[83]_i_2_n_0 ,\c_acc[83]_i_3_n_0 ,\c_acc[83]_i_4_n_0 ,\c_acc[83]_i_5_n_0 }));
  FDCE \c_acc_reg[84] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[85]_i_1_n_7 ),
        .Q(o_c[84]));
  FDCE \c_acc_reg[85] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[85]_i_1_n_6 ),
        .Q(o_c[85]));
  CARRY4 \c_acc_reg[85]_i_1 
       (.CI(\c_acc_reg[83]_i_1_n_0 ),
        .CO({\NLW_c_acc_reg[85]_i_1_CO_UNCONNECTED [3:1],\c_acc_reg[85]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in[84]}),
        .O({\NLW_c_acc_reg[85]_i_1_O_UNCONNECTED [3:2],\c_acc_reg[85]_i_1_n_6 ,\c_acc_reg[85]_i_1_n_7 }),
        .S({1'b0,1'b0,\c_acc[85]_i_2_n_0 ,\c_acc[85]_i_3_n_0 }));
  FDCE \c_acc_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_7 ),
        .Q(o_c[8]));
  FDCE \c_acc_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\c_acc_reg[11]_i_1_n_6 ),
        .Q(o_c[9]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_2 
       (.I0(\c_in[85]_i_3_n_0 ),
        .I1(p_0_in[7]),
        .O(\c_in[46]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_3 
       (.I0(\c_in[85]_i_3_n_0 ),
        .I1(p_0_in[6]),
        .O(\c_in[46]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \c_in[46]_i_4 
       (.I0(\c_in[85]_i_3_n_0 ),
        .I1(Q[0]),
        .O(\c_in[46]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \c_in[85]_i_3 
       (.I0(p_0_in[4]),
        .I1(Q[0]),
        .I2(p_0_in[6]),
        .I3(p_0_in[7]),
        .O(\c_in[85]_i_3_n_0 ));
  FDCE \c_in_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[0]),
        .Q(in[0]));
  FDCE \c_in_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[10]),
        .Q(in[10]));
  FDCE \c_in_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[11]),
        .Q(in[11]));
  FDCE \c_in_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[12]),
        .Q(in[12]));
  FDCE \c_in_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[13]),
        .Q(in[13]));
  FDCE \c_in_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[14]),
        .Q(in[14]));
  FDCE \c_in_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[15]),
        .Q(in[15]));
  FDCE \c_in_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[16]),
        .Q(in[16]));
  FDCE \c_in_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[17]),
        .Q(in[17]));
  FDCE \c_in_reg[18] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[18]),
        .Q(in[18]));
  FDCE \c_in_reg[19] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[19]),
        .Q(in[19]));
  FDCE \c_in_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[1]),
        .Q(in[1]));
  FDCE \c_in_reg[20] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[20]),
        .Q(in[20]));
  FDCE \c_in_reg[21] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[21]),
        .Q(in[21]));
  FDCE \c_in_reg[22] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[22]),
        .Q(in[22]));
  FDCE \c_in_reg[23] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[23]),
        .Q(in[23]));
  FDCE \c_in_reg[24] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[24]),
        .Q(in[24]));
  FDCE \c_in_reg[25] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[25]),
        .Q(in[25]));
  FDCE \c_in_reg[26] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[26]),
        .Q(in[26]));
  FDCE \c_in_reg[27] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[27]),
        .Q(in[27]));
  FDCE \c_in_reg[28] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[28]),
        .Q(in[28]));
  FDCE \c_in_reg[29] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[29]),
        .Q(in[29]));
  FDCE \c_in_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[2]),
        .Q(in[2]));
  FDCE \c_in_reg[30] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[30]),
        .Q(in[30]));
  FDCE \c_in_reg[31] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[31]),
        .Q(in[31]));
  FDCE \c_in_reg[32] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[32]),
        .Q(in[32]));
  FDCE \c_in_reg[33] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[33]),
        .Q(in[33]));
  FDCE \c_in_reg[34] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[34]),
        .Q(in[34]));
  FDCE \c_in_reg[35] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[35]),
        .Q(in[35]));
  FDCE \c_in_reg[36] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[36]),
        .Q(in[36]));
  FDCE \c_in_reg[37] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[37]),
        .Q(in[37]));
  FDCE \c_in_reg[38] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[38]),
        .Q(in[38]));
  FDCE \c_in_reg[39] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[39]),
        .Q(in[39]));
  FDCE \c_in_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[3]),
        .Q(in[3]));
  FDCE \c_in_reg[40] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[40]),
        .Q(in[40]));
  FDCE \c_in_reg[41] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[41]),
        .Q(in[41]));
  FDCE \c_in_reg[42] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[42]),
        .Q(in[42]));
  FDCE \c_in_reg[43] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[43]),
        .Q(in[43]));
  FDCE \c_in_reg[44] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[44]),
        .Q(in[44]));
  FDCE \c_in_reg[45] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[45]),
        .Q(in[45]));
  FDCE \c_in_reg[46] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[46]),
        .Q(in[46]));
  FDCE \c_in_reg[47] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[47]),
        .Q(in[47]));
  FDCE \c_in_reg[48] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[48]),
        .Q(in[48]));
  FDCE \c_in_reg[49] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[49]),
        .Q(in[49]));
  FDCE \c_in_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[4]),
        .Q(in[4]));
  FDCE \c_in_reg[50] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[50]),
        .Q(in[50]));
  FDCE \c_in_reg[51] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[51]),
        .Q(in[51]));
  FDCE \c_in_reg[52] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[52]),
        .Q(in[52]));
  FDCE \c_in_reg[53] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[53]),
        .Q(in[53]));
  FDCE \c_in_reg[54] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[54]),
        .Q(in[54]));
  FDCE \c_in_reg[55] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[55]),
        .Q(in[55]));
  FDCE \c_in_reg[56] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[56]),
        .Q(in[56]));
  FDCE \c_in_reg[57] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[57]),
        .Q(in[57]));
  FDCE \c_in_reg[58] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[58]),
        .Q(in[58]));
  FDCE \c_in_reg[59] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[59]),
        .Q(in[59]));
  FDCE \c_in_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[5]),
        .Q(in[5]));
  FDCE \c_in_reg[60] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[60]),
        .Q(in[60]));
  FDCE \c_in_reg[61] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[61]),
        .Q(in[61]));
  FDCE \c_in_reg[62] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[62]),
        .Q(in[62]));
  FDCE \c_in_reg[63] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[63]),
        .Q(in[63]));
  FDCE \c_in_reg[64] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[64]),
        .Q(in[64]));
  FDCE \c_in_reg[65] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[65]),
        .Q(in[65]));
  FDCE \c_in_reg[66] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[66]),
        .Q(in[66]));
  FDCE \c_in_reg[67] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[67]),
        .Q(in[67]));
  FDCE \c_in_reg[68] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[68]),
        .Q(in[68]));
  FDCE \c_in_reg[69] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[69]),
        .Q(in[69]));
  FDCE \c_in_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[6]),
        .Q(in[6]));
  FDCE \c_in_reg[70] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[70]),
        .Q(in[70]));
  FDCE \c_in_reg[71] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[71]),
        .Q(in[71]));
  FDCE \c_in_reg[72] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[72]),
        .Q(in[72]));
  FDCE \c_in_reg[73] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[73]),
        .Q(in[73]));
  FDCE \c_in_reg[74] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[74]),
        .Q(in[74]));
  FDCE \c_in_reg[75] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[75]),
        .Q(in[75]));
  FDCE \c_in_reg[76] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[76]),
        .Q(in[76]));
  FDCE \c_in_reg[77] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[77]),
        .Q(in[77]));
  FDCE \c_in_reg[78] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[78]),
        .Q(in[78]));
  FDCE \c_in_reg[79] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[79]),
        .Q(in[79]));
  FDCE \c_in_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[7]),
        .Q(in[7]));
  FDCE \c_in_reg[80] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[80]),
        .Q(in[80]));
  FDCE \c_in_reg[81] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[81]),
        .Q(in[81]));
  FDCE \c_in_reg[82] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[82]),
        .Q(in[82]));
  FDCE \c_in_reg[83] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[83]),
        .Q(in[83]));
  FDCE \c_in_reg[84] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[84]),
        .Q(in[84]));
  FDCE \c_in_reg[85] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[85]),
        .Q(in[85]));
  FDCE \c_in_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[8]),
        .Q(in[8]));
  FDCE \c_in_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(c_in[9]),
        .Q(in[9]));
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
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[0]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[0]),
        .O(\u_b[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[10]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[10]),
        .O(\u_b[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[11]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[11]),
        .O(\u_b[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[12]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[12]),
        .O(\u_b[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[13]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[13]),
        .O(\u_b[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[14]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[14]),
        .O(\u_b[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[15]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[15]),
        .O(\u_b[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[16]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[16]),
        .O(\u_b[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[17]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[17]),
        .O(\u_b[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[1]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[1]),
        .O(\u_b[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[2]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[2]),
        .O(\u_b[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[3]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[3]),
        .O(\u_b[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[4]),
        .O(\u_b[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[5]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[5]),
        .O(\u_b[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[6]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[6]),
        .O(\u_b[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[7]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[7]),
        .O(\u_b[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[8]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[8]),
        .O(\u_b[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01160000)) 
    \u_b[9]_i_1 
       (.I0(p_0_in[4]),
        .I1(p_0_in[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(b_buf[9]),
        .O(\u_b[9]_i_1_n_0 ));
  FDCE \u_b_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[0]_i_1_n_0 ),
        .Q(u_b[0]));
  FDCE \u_b_reg[10] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[10]_i_1_n_0 ),
        .Q(u_b[10]));
  FDCE \u_b_reg[11] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[11]_i_1_n_0 ),
        .Q(u_b[11]));
  FDCE \u_b_reg[12] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[12]_i_1_n_0 ),
        .Q(u_b[12]));
  FDCE \u_b_reg[13] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[13]_i_1_n_0 ),
        .Q(u_b[13]));
  FDCE \u_b_reg[14] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[14]_i_1_n_0 ),
        .Q(u_b[14]));
  FDCE \u_b_reg[15] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[15]_i_1_n_0 ),
        .Q(u_b[15]));
  FDCE \u_b_reg[16] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[16]_i_1_n_0 ),
        .Q(u_b[16]));
  FDCE \u_b_reg[17] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[17]_i_1_n_0 ),
        .Q(u_b[17]));
  FDCE \u_b_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[1]_i_1_n_0 ),
        .Q(u_b[1]));
  FDCE \u_b_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[2]_i_1_n_0 ),
        .Q(u_b[2]));
  FDCE \u_b_reg[3] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[3]_i_1_n_0 ),
        .Q(u_b[3]));
  FDCE \u_b_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[4]_i_1_n_0 ),
        .Q(u_b[4]));
  FDCE \u_b_reg[5] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[5]_i_1_n_0 ),
        .Q(u_b[5]));
  FDCE \u_b_reg[6] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[6]_i_1_n_0 ),
        .Q(u_b[6]));
  FDCE \u_b_reg[7] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[7]_i_1_n_0 ),
        .Q(u_b[7]));
  FDCE \u_b_reg[8] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[8]_i_1_n_0 ),
        .Q(u_b[8]));
  FDCE \u_b_reg[9] 
       (.C(i_clk),
        .CE(1'b1),
        .CLR(i_rst),
        .D(\u_b[9]_i_1_n_0 ),
        .Q(u_b[9]));
  multiplier_69_18_1dsp_ip_dsp48_mul_ip u_dsp48_mul_ip
       (.D(c_in),
        .Q({\u_a_reg_n_0_[17] ,\u_a_reg_n_0_[16] ,\u_a_reg_n_0_[15] ,\u_a_reg_n_0_[14] ,\u_a_reg_n_0_[13] ,\u_a_reg_n_0_[12] ,\u_a_reg_n_0_[11] ,\u_a_reg_n_0_[10] ,\u_a_reg_n_0_[9] ,\u_a_reg_n_0_[8] ,\u_a_reg_n_0_[7] ,\u_a_reg_n_0_[6] ,\u_a_reg_n_0_[5] ,\u_a_reg_n_0_[4] ,\u_a_reg_n_0_[3] ,\u_a_reg_n_0_[2] ,\u_a_reg_n_0_[1] ,\u_a_reg_n_0_[0] }),
        .\en_buf_reg[3] (\c_in[85]_i_3_n_0 ),
        .\en_buf_reg[4] (\c_in[46]_i_4_n_0 ),
        .\en_buf_reg[5] (\c_in[46]_i_3_n_0 ),
        .\en_buf_reg[6] ({p_0_in[7:6],Q[0],p_0_in[4]}),
        .\en_buf_reg[6]_0 (\c_in[46]_i_2_n_0 ),
        .i_clk(i_clk),
        .\u_b_reg[17] (u_b));
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
kok3Au9rPYaBK3Xl41XUxFMHzhB5clryUahhIFFYCLappuq4nUbSwDZcIm1HNLFgwV2Y2JhBeGa4
z0PFVwKpYLLsUJ1bfD5lniVgbCGnD5Mq6/dZ5J/6F4GMp068G3+VHCPOn1jYRCMxoZXNaF8x8f4O
sS31Ps6ihHFfc2ZVaaNPjSbbDIy+LH91G/QhjWAF4eBGa8yd1vgM4QA85/iI4b5KzgY4k7grwHMR
uFO5vsqBbqL/EUVVzEIQbRWPyNKZWO3EI7VIktHsaiLE3T16/7nLsrKLPbkvBj4HNl2vB60KhsHX
TnJKs+l2bM+5gxaC1Os4mZTYnOLRk8wHS/jPgA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
H9ksp3cK1AnWgfNAZ2a+2dNva9+UTZnNSX4WA6vKBujd1IxwkL5h1lwyNgjg7RmQIBJ4qYP5TIA0
QWC0K54SDCXuyHelmQ71gT+TWv6m+p3Wfo1CdCsF4lUB0GuxC9k3seavDJOqLOovRdsaoxM0gQSt
VIUgic7sXJ5b3d/0jIjePVumaTzLsFm9uXymOXIG5mPl6djgjtQ8JWH70vGRpIu71XN0hxA3JbXf
eG/o5j4BcSESZ5xGnbvW8nyInTODES3ajmk6t7Qwxgmv9viWXPCOaRjHpIQe/ibdkteZvY5dJHOM
uoizkPN+fsw/38jy2P5BpZUvPk5Z2+VfFl6kBw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3712)
`pragma protect data_block
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
yJ/5ozytoQ==
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
kok3Au9rPYaBK3Xl41XUxFMHzhB5clryUahhIFFYCLappuq4nUbSwDZcIm1HNLFgwV2Y2JhBeGa4
z0PFVwKpYLLsUJ1bfD5lniVgbCGnD5Mq6/dZ5J/6F4GMp068G3+VHCPOn1jYRCMxoZXNaF8x8f4O
sS31Ps6ihHFfc2ZVaaNPjSbbDIy+LH91G/QhjWAF4eBGa8yd1vgM4QA85/iI4b5KzgY4k7grwHMR
uFO5vsqBbqL/EUVVzEIQbRWPyNKZWO3EI7VIktHsaiLE3T16/7nLsrKLPbkvBj4HNl2vB60KhsHX
TnJKs+l2bM+5gxaC1Os4mZTYnOLRk8wHS/jPgA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
H9ksp3cK1AnWgfNAZ2a+2dNva9+UTZnNSX4WA6vKBujd1IxwkL5h1lwyNgjg7RmQIBJ4qYP5TIA0
QWC0K54SDCXuyHelmQ71gT+TWv6m+p3Wfo1CdCsF4lUB0GuxC9k3seavDJOqLOovRdsaoxM0gQSt
VIUgic7sXJ5b3d/0jIjePVumaTzLsFm9uXymOXIG5mPl6djgjtQ8JWH70vGRpIu71XN0hxA3JbXf
eG/o5j4BcSESZ5xGnbvW8nyInTODES3ajmk6t7Qwxgmv9viWXPCOaRjHpIQe/ibdkteZvY5dJHOM
uoizkPN+fsw/38jy2P5BpZUvPk5Z2+VfFl6kBw==


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
