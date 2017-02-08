// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Fri Jan 13 11:35:07 2017
// Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_69_18_1dsp_ip/multiplier_69_18_1dsp_ip_funcsim.v
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
HaYYHvntOzotD9wfoXbfdAuqgAZkxpKsE9CDzFXvof4ZCab1w7uG1Df+TiXYN8u716IXi0g03JAH
tnQFly989LlG7r//bLEJSNKAXSIrvKpVI7HesSuT74e0PXPkNcu4BlAaWfaZYaz/LPNUPzsvdPMr
6cGaC1jyv9W4pvLqqKqshuTe+S5vIZGw/CwlSv951KIyGVuk6O4DSr+yGyLQGO2m8y9nnhL/EDR3
mMFZdokh2mBQrK501nq819JHuOWria8MJRXASFEy7w3RwjGlMXBKQxM1OjWLlGsQ03UyzlWaz4tP
FHAAmXm5X5uaMybClKHcJCUmq1A7chXI6dU13Q==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fvKqzpGQvA7ugpoEC3z1uXgiDQ3C37q0IAewTjtE4S8grX+hm+AmulgOnLO+WR1eXwk89A8lNhom
UiDQCbyZIYq7EqZcdb15v6r7v+KlNystljpMQI6YkcKftaO4Ry2T8JGyKp9W+dn8KF5gHIJfSgW1
R7wbcv+tGRC9N2IhWyLQdvTIM7uo4YZZXM52MCszTghNFx2A/4gjpqsMLMck3ehfFomsJEr0cr9q
4uN+I6XCuWEg+Mw6+giv4JRndHe5Qqv3PMykZamLrrrkiW97XKjo07I9lbxWExsuvLz/elmgkF8e
uvwlFh2HVMCM7CIMSU0Wngk56mOSxLZWFD8Ilw==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3712)
`pragma protect data_block
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
mP6Harm1hA==
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
HaYYHvntOzotD9wfoXbfdAuqgAZkxpKsE9CDzFXvof4ZCab1w7uG1Df+TiXYN8u716IXi0g03JAH
tnQFly989LlG7r//bLEJSNKAXSIrvKpVI7HesSuT74e0PXPkNcu4BlAaWfaZYaz/LPNUPzsvdPMr
6cGaC1jyv9W4pvLqqKqshuTe+S5vIZGw/CwlSv951KIyGVuk6O4DSr+yGyLQGO2m8y9nnhL/EDR3
mMFZdokh2mBQrK501nq819JHuOWria8MJRXASFEy7w3RwjGlMXBKQxM1OjWLlGsQ03UyzlWaz4tP
FHAAmXm5X5uaMybClKHcJCUmq1A7chXI6dU13Q==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fvKqzpGQvA7ugpoEC3z1uXgiDQ3C37q0IAewTjtE4S8grX+hm+AmulgOnLO+WR1eXwk89A8lNhom
UiDQCbyZIYq7EqZcdb15v6r7v+KlNystljpMQI6YkcKftaO4Ry2T8JGyKp9W+dn8KF5gHIJfSgW1
R7wbcv+tGRC9N2IhWyLQdvTIM7uo4YZZXM52MCszTghNFx2A/4gjpqsMLMck3ehfFomsJEr0cr9q
4uN+I6XCuWEg+Mw6+giv4JRndHe5Qqv3PMykZamLrrrkiW97XKjo07I9lbxWExsuvLz/elmgkF8e
uvwlFh2HVMCM7CIMSU0Wngk56mOSxLZWFD8Ilw==


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
