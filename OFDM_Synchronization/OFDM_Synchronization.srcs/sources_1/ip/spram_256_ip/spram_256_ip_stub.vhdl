-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Fri Nov 18 14:49:13 2016
-- Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_256_ip/spram_256_ip_stub.vhdl
-- Design      : spram_256_ip
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity spram_256_ip is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end spram_256_ip;

architecture stub of spram_256_ip is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[7:0],dina[63:0],douta[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_2,Vivado 2015.2.1";
begin
end;
