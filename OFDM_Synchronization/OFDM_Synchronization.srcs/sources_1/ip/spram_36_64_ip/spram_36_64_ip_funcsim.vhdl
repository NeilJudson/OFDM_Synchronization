-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
-- Date        : Fri Dec 09 13:41:04 2016
-- Host        : txjs-130 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               e:/jiaweiwei/Project/OFDM_Synchronization/OFDM_Synchronization.srcs/sources_1/ip/spram_36_64_ip/spram_36_64_ip_funcsim.vhdl
-- Design      : spram_36_64_ip
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045fbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end spram_36_64_ip_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_prim_wrapper_init is
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12) => '0',
      ADDRARDADDR(11) => '0',
      ADDRARDADDR(10 downto 5) => addra(5 downto 0),
      ADDRARDADDR(4) => '0',
      ADDRARDADDR(3) => '0',
      ADDRARDADDR(2) => '0',
      ADDRARDADDR(1) => '0',
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12) => '0',
      ADDRBWRADDR(11) => '0',
      ADDRBWRADDR(10 downto 5) => addra(5 downto 0),
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '0',
      ADDRBWRADDR(2) => '0',
      ADDRBWRADDR(1) => '0',
      ADDRBWRADDR(0) => '0',
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DIADI(15 downto 8) => dina(16 downto 9),
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 8) => dina(34 downto 27),
      DIBDI(7 downto 0) => dina(25 downto 18),
      DIPADIP(1) => dina(17),
      DIPADIP(0) => dina(8),
      DIPBDIP(1) => dina(35),
      DIPBDIP(0) => dina(26),
      DOADO(15 downto 8) => douta(16 downto 9),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(15 downto 8) => douta(34 downto 27),
      DOBDO(7 downto 0) => douta(25 downto 18),
      DOPADOP(1) => douta(17),
      DOPADOP(0) => douta(8),
      DOPBDOP(1) => douta(35),
      DOPBDOP(0) => douta(26),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => wea(0),
      WEBWE(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end spram_36_64_ip_blk_mem_gen_prim_width;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.spram_36_64_ip_blk_mem_gen_prim_wrapper_init
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      douta(35 downto 0) => douta(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end spram_36_64_ip_blk_mem_gen_generic_cstr;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.spram_36_64_ip_blk_mem_gen_prim_width
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      douta(35 downto 0) => douta(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_top : entity is "blk_mem_gen_top";
end spram_36_64_ip_blk_mem_gen_top;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_top is
begin
\valid.cstr\: entity work.spram_36_64_ip_blk_mem_gen_generic_cstr
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      douta(35 downto 0) => douta(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_v8_2_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_v8_2_synth : entity is "blk_mem_gen_v8_2_synth";
end spram_36_64_ip_blk_mem_gen_v8_2_synth;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_v8_2_synth is
begin
\gnativebmg.native_blk_mem_gen\: entity work.spram_36_64_ip_blk_mem_gen_top
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      douta(35 downto 0) => douta(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip_blk_mem_gen_v8_2 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 35 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 35 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 6;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 6;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "Estimated Power for IP     :     3.5531 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "spram_36_64_ip.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 64;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 64;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 36;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 36;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 64;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 64;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 36;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of spram_36_64_ip_blk_mem_gen_v8_2 : entity is 36;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "blk_mem_gen_v8_2";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of spram_36_64_ip_blk_mem_gen_v8_2 : entity is "yes";
end spram_36_64_ip_blk_mem_gen_v8_2;

architecture STRUCTURE of spram_36_64_ip_blk_mem_gen_v8_2 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  doutb(35) <= \<const0>\;
  doutb(34) <= \<const0>\;
  doutb(33) <= \<const0>\;
  doutb(32) <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.spram_36_64_ip_blk_mem_gen_v8_2_synth
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      clka => clka,
      dina(35 downto 0) => dina(35 downto 0),
      douta(35 downto 0) => douta(35 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spram_36_64_ip is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 35 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of spram_36_64_ip : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of spram_36_64_ip : entity is "spram_36_64_ip,blk_mem_gen_v8_2,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of spram_36_64_ip : entity is "spram_36_64_ip,blk_mem_gen_v8_2,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.2,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,C_FAMILY=zynq,C_XDEVICEFAMILY=zynq,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_USE_BRAM_BLOCK=0,C_ENABLE_32BIT_ADDRESS=0,C_CTRL_ECC_ALGO=NONE,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=0,C_BYTE_SIZE=9,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=spram_36_64_ip.mem,C_USE_DEFAULT_DATA=1,C_DEFAULT_DATA=0,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=0,C_HAS_REGCEA=0,C_USE_BYTE_WEA=0,C_WEA_WIDTH=1,C_WRITE_MODE_A=NO_CHANGE,C_WRITE_WIDTH_A=36,C_READ_WIDTH_A=36,C_WRITE_DEPTH_A=64,C_READ_DEPTH_A=64,C_ADDRA_WIDTH=6,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=0,C_HAS_REGCEB=0,C_USE_BYTE_WEB=0,C_WEB_WIDTH=1,C_WRITE_MODE_B=WRITE_FIRST,C_WRITE_WIDTH_B=36,C_READ_WIDTH_B=36,C_WRITE_DEPTH_B=64,C_READ_DEPTH_B=64,C_ADDRB_WIDTH=6,C_HAS_MEM_OUTPUT_REGS_A=1,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_EN_ECC_PIPE=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=0,C_DISABLE_WARN_BHV_COLL=0,C_EN_SLEEP_PIN=0,C_USE_URAM=0,C_EN_RDADDRA_CHG=0,C_EN_RDADDRB_CHG=0,C_EN_DEEPSLEEP_PIN=0,C_EN_SHUTDOWN_PIN=0,C_DISABLE_WARN_BHV_RANGE=0,C_COUNT_36K_BRAM=0,C_COUNT_18K_BRAM=1,C_EST_POWER_SUMMARY=Estimated Power for IP     _     3.5531 mW}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of spram_36_64_ip : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of spram_36_64_ip : entity is "blk_mem_gen_v8_2,Vivado 2015.2.1";
end spram_36_64_ip;

architecture STRUCTURE of spram_36_64_ip is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 6;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 6;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     3.5531 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "spram_36_64_ip.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 64;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 64;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 36;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 36;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 64;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 64;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 36;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 36;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.spram_36_64_ip_blk_mem_gen_v8_2
     port map (
      addra(5 downto 0) => addra(5 downto 0),
      addrb(5) => '0',
      addrb(4) => '0',
      addrb(3) => '0',
      addrb(2) => '0',
      addrb(1) => '0',
      addrb(0) => '0',
      clka => clka,
      clkb => '0',
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(35 downto 0) => dina(35 downto 0),
      dinb(35) => '0',
      dinb(34) => '0',
      dinb(33) => '0',
      dinb(32) => '0',
      dinb(31) => '0',
      dinb(30) => '0',
      dinb(29) => '0',
      dinb(28) => '0',
      dinb(27) => '0',
      dinb(26) => '0',
      dinb(25) => '0',
      dinb(24) => '0',
      dinb(23) => '0',
      dinb(22) => '0',
      dinb(21) => '0',
      dinb(20) => '0',
      dinb(19) => '0',
      dinb(18) => '0',
      dinb(17) => '0',
      dinb(16) => '0',
      dinb(15) => '0',
      dinb(14) => '0',
      dinb(13) => '0',
      dinb(12) => '0',
      dinb(11) => '0',
      dinb(10) => '0',
      dinb(9) => '0',
      dinb(8) => '0',
      dinb(7) => '0',
      dinb(6) => '0',
      dinb(5) => '0',
      dinb(4) => '0',
      dinb(3) => '0',
      dinb(2) => '0',
      dinb(1) => '0',
      dinb(0) => '0',
      douta(35 downto 0) => douta(35 downto 0),
      doutb(35 downto 0) => NLW_U0_doutb_UNCONNECTED(35 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(5 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(5 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31) => '0',
      s_axi_araddr(30) => '0',
      s_axi_araddr(29) => '0',
      s_axi_araddr(28) => '0',
      s_axi_araddr(27) => '0',
      s_axi_araddr(26) => '0',
      s_axi_araddr(25) => '0',
      s_axi_araddr(24) => '0',
      s_axi_araddr(23) => '0',
      s_axi_araddr(22) => '0',
      s_axi_araddr(21) => '0',
      s_axi_araddr(20) => '0',
      s_axi_araddr(19) => '0',
      s_axi_araddr(18) => '0',
      s_axi_araddr(17) => '0',
      s_axi_araddr(16) => '0',
      s_axi_araddr(15) => '0',
      s_axi_araddr(14) => '0',
      s_axi_araddr(13) => '0',
      s_axi_araddr(12) => '0',
      s_axi_araddr(11) => '0',
      s_axi_araddr(10) => '0',
      s_axi_araddr(9) => '0',
      s_axi_araddr(8) => '0',
      s_axi_araddr(7) => '0',
      s_axi_araddr(6) => '0',
      s_axi_araddr(5) => '0',
      s_axi_araddr(4) => '0',
      s_axi_araddr(3) => '0',
      s_axi_araddr(2) => '0',
      s_axi_araddr(1) => '0',
      s_axi_araddr(0) => '0',
      s_axi_arburst(1) => '0',
      s_axi_arburst(0) => '0',
      s_axi_arid(3) => '0',
      s_axi_arid(2) => '0',
      s_axi_arid(1) => '0',
      s_axi_arid(0) => '0',
      s_axi_arlen(7) => '0',
      s_axi_arlen(6) => '0',
      s_axi_arlen(5) => '0',
      s_axi_arlen(4) => '0',
      s_axi_arlen(3) => '0',
      s_axi_arlen(2) => '0',
      s_axi_arlen(1) => '0',
      s_axi_arlen(0) => '0',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2) => '0',
      s_axi_arsize(1) => '0',
      s_axi_arsize(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31) => '0',
      s_axi_awaddr(30) => '0',
      s_axi_awaddr(29) => '0',
      s_axi_awaddr(28) => '0',
      s_axi_awaddr(27) => '0',
      s_axi_awaddr(26) => '0',
      s_axi_awaddr(25) => '0',
      s_axi_awaddr(24) => '0',
      s_axi_awaddr(23) => '0',
      s_axi_awaddr(22) => '0',
      s_axi_awaddr(21) => '0',
      s_axi_awaddr(20) => '0',
      s_axi_awaddr(19) => '0',
      s_axi_awaddr(18) => '0',
      s_axi_awaddr(17) => '0',
      s_axi_awaddr(16) => '0',
      s_axi_awaddr(15) => '0',
      s_axi_awaddr(14) => '0',
      s_axi_awaddr(13) => '0',
      s_axi_awaddr(12) => '0',
      s_axi_awaddr(11) => '0',
      s_axi_awaddr(10) => '0',
      s_axi_awaddr(9) => '0',
      s_axi_awaddr(8) => '0',
      s_axi_awaddr(7) => '0',
      s_axi_awaddr(6) => '0',
      s_axi_awaddr(5) => '0',
      s_axi_awaddr(4) => '0',
      s_axi_awaddr(3) => '0',
      s_axi_awaddr(2) => '0',
      s_axi_awaddr(1) => '0',
      s_axi_awaddr(0) => '0',
      s_axi_awburst(1) => '0',
      s_axi_awburst(0) => '0',
      s_axi_awid(3) => '0',
      s_axi_awid(2) => '0',
      s_axi_awid(1) => '0',
      s_axi_awid(0) => '0',
      s_axi_awlen(7) => '0',
      s_axi_awlen(6) => '0',
      s_axi_awlen(5) => '0',
      s_axi_awlen(4) => '0',
      s_axi_awlen(3) => '0',
      s_axi_awlen(2) => '0',
      s_axi_awlen(1) => '0',
      s_axi_awlen(0) => '0',
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2) => '0',
      s_axi_awsize(1) => '0',
      s_axi_awsize(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(5 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(5 downto 0),
      s_axi_rdata(35 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(35 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(35) => '0',
      s_axi_wdata(34) => '0',
      s_axi_wdata(33) => '0',
      s_axi_wdata(32) => '0',
      s_axi_wdata(31) => '0',
      s_axi_wdata(30) => '0',
      s_axi_wdata(29) => '0',
      s_axi_wdata(28) => '0',
      s_axi_wdata(27) => '0',
      s_axi_wdata(26) => '0',
      s_axi_wdata(25) => '0',
      s_axi_wdata(24) => '0',
      s_axi_wdata(23) => '0',
      s_axi_wdata(22) => '0',
      s_axi_wdata(21) => '0',
      s_axi_wdata(20) => '0',
      s_axi_wdata(19) => '0',
      s_axi_wdata(18) => '0',
      s_axi_wdata(17) => '0',
      s_axi_wdata(16) => '0',
      s_axi_wdata(15) => '0',
      s_axi_wdata(14) => '0',
      s_axi_wdata(13) => '0',
      s_axi_wdata(12) => '0',
      s_axi_wdata(11) => '0',
      s_axi_wdata(10) => '0',
      s_axi_wdata(9) => '0',
      s_axi_wdata(8) => '0',
      s_axi_wdata(7) => '0',
      s_axi_wdata(6) => '0',
      s_axi_wdata(5) => '0',
      s_axi_wdata(4) => '0',
      s_axi_wdata(3) => '0',
      s_axi_wdata(2) => '0',
      s_axi_wdata(1) => '0',
      s_axi_wdata(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
