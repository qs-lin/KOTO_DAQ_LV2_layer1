-- generate this from block diagram file by Qisen
-- use VHD declaration to show the connection between each module


-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Full Version"
-- CREATED		"Wed Sep 09 23:15:58 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SFP_GxBlock IS 
	PORT
	(
		phy_mgmt_clk :  IN  STD_LOGIC;
		phy_mgmt_clk_reset :  IN  STD_LOGIC;
		pll_ref_clk :  IN  STD_LOGIC;
		SFP_rx_in_0 :  IN  STD_LOGIC;
		SFP_rx_in_1 :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		phy_mgmt_read :  IN  STD_LOGIC;
		phy_mgmt_write :  IN  STD_LOGIC;
		phy_mgmt_addr :  IN  STD_LOGIC_VECTOR(8 DOWNTO 0);
		phy_mgmt_writedata :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		SFP0_tx_parallel_data :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SFP1_tx_parallel_data :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SFP_tx0_datak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP_tx1_datak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP_Out_0 :  OUT  STD_LOGIC;
		SFP_Out_1 :  OUT  STD_LOGIC;
		SFP_rx0_clkout :  OUT  STD_LOGIC;
		SFP_rx1_clkout :  OUT  STD_LOGIC;
		Test_0_0 :  OUT  STD_LOGIC;
		Test_0_1 :  OUT  STD_LOGIC;
		Test_1_0 :  OUT  STD_LOGIC;
		Test_1_1 :  OUT  STD_LOGIC;
		Test_1_2 :  OUT  STD_LOGIC;
		Test_0_2 :  OUT  STD_LOGIC;
		phy_mgmt_readdata :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		SFP_rx0_datak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP_rx0_parallel_data :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SFP_rx1_datak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP_rx1_parallel_data :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END SFP_GxBlock;

ARCHITECTURE bdf_type OF SFP_GxBlock IS 

COMPONENT fifo16
	PORT(wrreq : IN STD_LOGIC;
		 wrclk : IN STD_LOGIC;
		 rdreq : IN STD_LOGIC;
		 rdclk : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_reco
	PORT(mgmt_clk_clk : IN STD_LOGIC;
		 mgmt_rst_reset : IN STD_LOGIC;
		 reconfig_mgmt_read : IN STD_LOGIC;
		 reconfig_mgmt_write : IN STD_LOGIC;
		 ch0_1_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 ch2_3_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 reconfig_mgmt_address : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 reconfig_mgmt_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reconfig_busy : OUT STD_LOGIC;
		 reconfig_mgmt_waitrequest : OUT STD_LOGIC;
		 ch0_1_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 ch2_3_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 reconfig_mgmt_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff16
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_1
	PORT(phy_mgmt_clk : IN STD_LOGIC;
		 phy_mgmt_clk_reset : IN STD_LOGIC;
		 phy_mgmt_read : IN STD_LOGIC;
		 phy_mgmt_write : IN STD_LOGIC;
		 pll_ref_clk : IN STD_LOGIC;
		 rx_serial_data : IN STD_LOGIC;
		 phy_mgmt_address : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 phy_mgmt_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reconfig_to_xcvr : IN STD_LOGIC_VECTOR(139 DOWNTO 0);
		 tx_datak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 tx_parallel_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 phy_mgmt_waitrequest : OUT STD_LOGIC;
		 tx_ready : OUT STD_LOGIC;
		 rx_ready : OUT STD_LOGIC;
		 tx_serial_data : OUT STD_LOGIC;
		 pll_locked : OUT STD_LOGIC;
		 rx_byteordflag : OUT STD_LOGIC;
		 tx_clkout : OUT STD_LOGIC;
		 rx_clkout : OUT STD_LOGIC;
		 phy_mgmt_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reconfig_from_xcvr : OUT STD_LOGIC_VECTOR(91 DOWNTO 0);
		 rx_datak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 rx_parallel_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx_runningdisp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	The_clock :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 
SFP_rx0_clkout <= SYNTHESIZED_WIRE_1;
SFP_rx1_clkout <= SYNTHESIZED_WIRE_17;
SYNTHESIZED_WIRE_22 <= '1';
SYNTHESIZED_WIRE_23 <= '1';
SYNTHESIZED_WIRE_24 <= '1';



b2v_inst : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_22,
		 wrclk => SYNTHESIZED_WIRE_1,
		 rdreq => SYNTHESIZED_WIRE_22,
		 rdclk => The_clock,
		 data => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_6);


b2v_inst1 : sfp_reco
PORT MAP(mgmt_clk_clk => phy_mgmt_clk,
		 mgmt_rst_reset => phy_mgmt_clk_reset,
		 ch0_1_from_xcvr => SYNTHESIZED_WIRE_4,
		 ch2_3_from_xcvr => SYNTHESIZED_WIRE_5,
		 ch0_1_to_xcvr => SYNTHESIZED_WIRE_20,
		 ch2_3_to_xcvr => SYNTHESIZED_WIRE_8);


b2v_inst10 : dff16
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_6,
		 q => SFP_rx0_parallel_data);


b2v_inst11 : dff16
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_7,
		 q => SFP_rx1_parallel_data);


b2v_inst2 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => phy_mgmt_read,
		 phy_mgmt_write => phy_mgmt_write,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in_1,
		 phy_mgmt_address => phy_mgmt_addr,
		 phy_mgmt_writedata => phy_mgmt_writedata,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_8,
		 tx_datak => SFP_tx1_datak,
		 tx_parallel_data => SYNTHESIZED_WIRE_9,
		 tx_ready => Test_1_0,
		 rx_ready => Test_1_1,
		 tx_serial_data => SFP_Out_1,
		 rx_byteordflag => Test_1_2,
		 tx_clkout => SYNTHESIZED_WIRE_15,
		 rx_clkout => SYNTHESIZED_WIRE_17,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_5,
		 rx_datak => SFP_rx1_datak,
		 rx_parallel_data => SYNTHESIZED_WIRE_19);



b2v_inst4 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_23,
		 wrclk => The_clock,
		 rdreq => SYNTHESIZED_WIRE_23,
		 rdclk => SYNTHESIZED_WIRE_12,
		 data => SFP0_tx_parallel_data,
		 q => SYNTHESIZED_WIRE_21);


b2v_inst5 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_23,
		 wrclk => The_clock,
		 rdreq => SYNTHESIZED_WIRE_23,
		 rdclk => SYNTHESIZED_WIRE_15,
		 data => SFP1_tx_parallel_data,
		 q => SYNTHESIZED_WIRE_9);



b2v_inst7 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_24,
		 wrclk => SYNTHESIZED_WIRE_17,
		 rdreq => SYNTHESIZED_WIRE_24,
		 rdclk => The_clock,
		 data => SYNTHESIZED_WIRE_19,
		 q => SYNTHESIZED_WIRE_7);



b2v_inst9 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => phy_mgmt_read,
		 phy_mgmt_write => phy_mgmt_write,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in_0,
		 phy_mgmt_address => phy_mgmt_addr,
		 phy_mgmt_writedata => phy_mgmt_writedata,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_20,
		 tx_datak => SFP_tx0_datak,
		 tx_parallel_data => SYNTHESIZED_WIRE_21,
		 tx_ready => Test_0_0,
		 rx_ready => Test_0_1,
		 tx_serial_data => SFP_Out_0,
		 rx_byteordflag => Test_0_2,
		 tx_clkout => SYNTHESIZED_WIRE_12,
		 rx_clkout => SYNTHESIZED_WIRE_1,
		 phy_mgmt_readdata => phy_mgmt_readdata,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_4,
		 rx_datak => SFP_rx0_datak,
		 rx_parallel_data => SYNTHESIZED_WIRE_3);

The_clock <= clk;

END bdf_type;
