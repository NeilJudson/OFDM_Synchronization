-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Fri Dec 16 14:58:16 2016
-- Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/multiplier_42_42_ip/multiplier_42_42_ip_stub.vhdl
-- Design      : multiplier_42_42_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier_42_42_ip is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 41 downto 0 );
    B : in STD_LOGIC_VECTOR ( 41 downto 0 );
    P : out STD_LOGIC_VECTOR ( 83 downto 0 )
  );

end multiplier_42_42_ip;

architecture stub of multiplier_42_42_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[41:0],B[41:0],P[83:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0,Vivado 2015.2.1";
begin
end;
