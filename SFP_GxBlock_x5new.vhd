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
-- CREATED      "Thu Jun 07 14:31:37 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SFP_GxBlock_x5new IS 
	PORT
	(
		phy_mgmt_clk :  IN  STD_LOGIC;
		phy_mgmt_clk_reset :  IN  STD_LOGIC;
		pll_ref_clk :  IN  STD_LOGIC;
		a_txdatak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		ain :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		b_txdatak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		bin :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		c_txdatak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		cin :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		d_txdatak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		din :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		e_txdatak :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		ein :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		SFP_rx_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Test_0 :  OUT  STD_LOGIC;
		Test_1 :  OUT  STD_LOGIC;
		a :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		a_rxdatak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		b :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		b_rxdatak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		c :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		c_rxdatak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		d :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		d_rxdatak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		e :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		e_rxdatak :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP_Out :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END SFP_GxBlock_x5new;

ARCHITECTURE bdf_type OF SFP_GxBlock_x5new IS 

COMPONENT dff16
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT fifo16
	PORT(wrreq : IN STD_LOGIC;
		 wrclk : IN STD_LOGIC;
		 rdreq : IN STD_LOGIC;
		 rdclk : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT user_logic_phy_controller
	PORT(phy_mgmt_clk : IN STD_LOGIC;
		 phy_mgmt_clk_reset : IN STD_LOGIC;
		 phy_mgmt_waitrequest : IN STD_LOGIC;
		 phy_mgmt_readdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 phy_mgmt_read : OUT STD_LOGIC;
		 phy_mgmt_write : OUT STD_LOGIC;
		 phy_mgmt_address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		 phy_mgmt_writedata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_5_reconew
	PORT(mgmt_clk_clk : IN STD_LOGIC;
		 mgmt_rst_reset : IN STD_LOGIC;
		 reconfig_mgmt_read : IN STD_LOGIC;
		 reconfig_mgmt_write : IN STD_LOGIC;
		 ch0_1_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 ch2_3_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 ch4_5_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 ch6_7_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 ch8_9_from_xcvr : IN STD_LOGIC_VECTOR(91 DOWNTO 0);
		 reconfig_mgmt_address : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 reconfig_mgmt_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reconfig_busy : OUT STD_LOGIC;
		 reconfig_mgmt_waitrequest : OUT STD_LOGIC;
		 ch0_1_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 ch2_3_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 ch4_5_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 ch6_7_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 ch8_9_to_xcvr : OUT STD_LOGIC_VECTOR(139 DOWNTO 0);
		 reconfig_mgmt_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
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

COMPONENT user_logic_reconfig_controller
	PORT(reconfig_busy : IN STD_LOGIC;
		 mgmt_clk_clk : IN STD_LOGIC;
		 mgmt_rst_reset : IN STD_LOGIC;
		 reconfig_mgmt_waitrequest : IN STD_LOGIC;
		 reconfig_mgmt_readdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reconfig_mgmt_read : OUT STD_LOGIC;
		 reconfig_mgmt_write : OUT STD_LOGIC;
		 reconfig_mgmt_address : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 reconfig_mgmt_writedata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SFP_Out_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_92 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_93 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_94 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_95 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(91 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_96 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_97 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_98 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_63 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_66 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_67 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_69 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_70 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_71 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_72 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_73 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC_VECTOR(139 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_99 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_85 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_87 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_88 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_89 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_90 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_91 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_92 <= '1';
SYNTHESIZED_WIRE_93 <= '1';
SYNTHESIZED_WIRE_94 <= '1';
SYNTHESIZED_WIRE_95 <= '1';
SYNTHESIZED_WIRE_96 <= '1';
SYNTHESIZED_WIRE_97 <= '1';
SYNTHESIZED_WIRE_98 <= '1';
SYNTHESIZED_WIRE_99 <= '1';



b2v_inst : dff16
PORT MAP(clock => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_0,
		 q => a);


b2v_inst1 : dff16
PORT MAP(clock => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_1,
		 q => b);


b2v_inst10 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_92,
		 wrclk => SYNTHESIZED_WIRE_3,
		 rdreq => SYNTHESIZED_WIRE_92,
		 rdclk => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_5,
		 q => SYNTHESIZED_WIRE_83);



b2v_inst12 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_93,
		 wrclk => SYNTHESIZED_WIRE_7,
		 rdreq => SYNTHESIZED_WIRE_93,
		 rdclk => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_9,
		 q => SYNTHESIZED_WIRE_91);



b2v_inst14 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_94,
		 wrclk => SYNTHESIZED_WIRE_11,
		 rdreq => SYNTHESIZED_WIRE_94,
		 rdclk => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_13,
		 q => SYNTHESIZED_WIRE_48);




b2v_inst17 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_95,
		 wrclk => phy_mgmt_clk,
		 rdreq => SYNTHESIZED_WIRE_95,
		 rdclk => SYNTHESIZED_WIRE_16,
		 data => cin,
		 q => SYNTHESIZED_WIRE_44);


b2v_inst18 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_95,
		 wrclk => phy_mgmt_clk,
		 rdreq => SYNTHESIZED_WIRE_95,
		 rdclk => SYNTHESIZED_WIRE_19,
		 data => din,
		 q => SYNTHESIZED_WIRE_38);


b2v_inst19 : user_logic_phy_controller
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_20,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_21,
		 phy_mgmt_read => SYNTHESIZED_WIRE_33,
		 phy_mgmt_write => SYNTHESIZED_WIRE_34,
		 phy_mgmt_address => SYNTHESIZED_WIRE_35,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_36);


b2v_inst2 : sfp_5_reconew
PORT MAP(mgmt_clk_clk => phy_mgmt_clk,
		 mgmt_rst_reset => phy_mgmt_clk_reset,
		 reconfig_mgmt_read => SYNTHESIZED_WIRE_22,
		 reconfig_mgmt_write => SYNTHESIZED_WIRE_23,
		 ch0_1_from_xcvr => SYNTHESIZED_WIRE_24,
		 ch2_3_from_xcvr => SYNTHESIZED_WIRE_25,
		 ch4_5_from_xcvr => SYNTHESIZED_WIRE_26,
		 ch6_7_from_xcvr => SYNTHESIZED_WIRE_27,
		 ch8_9_from_xcvr => SYNTHESIZED_WIRE_28,
		 reconfig_mgmt_address => SYNTHESIZED_WIRE_29,
		 reconfig_mgmt_writedata => SYNTHESIZED_WIRE_30,
		 reconfig_busy => SYNTHESIZED_WIRE_88,
		 reconfig_mgmt_waitrequest => SYNTHESIZED_WIRE_89,
		 ch0_1_to_xcvr => SYNTHESIZED_WIRE_81,
		 ch2_3_to_xcvr => SYNTHESIZED_WIRE_75,
		 ch4_5_to_xcvr => SYNTHESIZED_WIRE_43,
		 ch6_7_to_xcvr => SYNTHESIZED_WIRE_37,
		 ch8_9_to_xcvr => SYNTHESIZED_WIRE_55,
		 reconfig_mgmt_readdata => SYNTHESIZED_WIRE_90);


b2v_inst20 : user_logic_phy_controller
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_31,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_32,
		 phy_mgmt_read => SYNTHESIZED_WIRE_39,
		 phy_mgmt_write => SYNTHESIZED_WIRE_40,
		 phy_mgmt_address => SYNTHESIZED_WIRE_41,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_42);


b2v_inst21 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => SYNTHESIZED_WIRE_33,
		 phy_mgmt_write => SYNTHESIZED_WIRE_34,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in(3),
		 phy_mgmt_address => SYNTHESIZED_WIRE_35,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_36,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_37,
		 tx_datak => d_txdatak,
		 tx_parallel_data => SYNTHESIZED_WIRE_38,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_20,
		 tx_serial_data => SFP_Out_ALTERA_SYNTHESIZED(3),
		 tx_clkout => SYNTHESIZED_WIRE_19,
		 rx_clkout => SYNTHESIZED_WIRE_7,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_21,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_27,
		 rx_datak => d_rxdatak,
		 rx_parallel_data => SYNTHESIZED_WIRE_9);


b2v_inst22 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => SYNTHESIZED_WIRE_39,
		 phy_mgmt_write => SYNTHESIZED_WIRE_40,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in(2),
		 phy_mgmt_address => SYNTHESIZED_WIRE_41,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_42,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_43,
		 tx_datak => c_txdatak,
		 tx_parallel_data => SYNTHESIZED_WIRE_44,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_31,
		 tx_serial_data => SFP_Out_ALTERA_SYNTHESIZED(2),
		 tx_clkout => SYNTHESIZED_WIRE_16,
		 rx_clkout => SYNTHESIZED_WIRE_3,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_32,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_26,
		 rx_datak => c_rxdatak,
		 rx_parallel_data => SYNTHESIZED_WIRE_5);



b2v_inst24 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_96,
		 wrclk => phy_mgmt_clk,
		 rdreq => SYNTHESIZED_WIRE_96,
		 rdclk => SYNTHESIZED_WIRE_47,
		 data => ein,
		 q => SYNTHESIZED_WIRE_56);


b2v_inst25 : dff16
PORT MAP(clock => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_48,
		 q => e);


b2v_inst27 : user_logic_phy_controller
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_49,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_50,
		 phy_mgmt_read => SYNTHESIZED_WIRE_51,
		 phy_mgmt_write => SYNTHESIZED_WIRE_52,
		 phy_mgmt_address => SYNTHESIZED_WIRE_53,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_54);


b2v_inst29 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => SYNTHESIZED_WIRE_51,
		 phy_mgmt_write => SYNTHESIZED_WIRE_52,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in(4),
		 phy_mgmt_address => SYNTHESIZED_WIRE_53,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_54,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_55,
		 tx_datak => e_txdatak,
		 tx_parallel_data => SYNTHESIZED_WIRE_56,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_49,
		 tx_serial_data => SFP_Out_ALTERA_SYNTHESIZED(4),
		 tx_clkout => SYNTHESIZED_WIRE_47,
		 rx_clkout => SYNTHESIZED_WIRE_11,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_50,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_28,
		 rx_datak => e_rxdatak,
		 rx_parallel_data => SYNTHESIZED_WIRE_13);


b2v_inst3 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_97,
		 wrclk => SYNTHESIZED_WIRE_58,
		 rdreq => SYNTHESIZED_WIRE_97,
		 rdclk => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_60,
		 q => SYNTHESIZED_WIRE_0);



b2v_inst31 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_98,
		 wrclk => phy_mgmt_clk,
		 rdreq => SYNTHESIZED_WIRE_98,
		 rdclk => SYNTHESIZED_WIRE_63,
		 data => ain,
		 q => SYNTHESIZED_WIRE_82);


b2v_inst32 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_98,
		 wrclk => phy_mgmt_clk,
		 rdreq => SYNTHESIZED_WIRE_98,
		 rdclk => SYNTHESIZED_WIRE_66,
		 data => bin,
		 q => SYNTHESIZED_WIRE_76);


b2v_inst33 : user_logic_phy_controller
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_67,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_68,
		 phy_mgmt_read => SYNTHESIZED_WIRE_71,
		 phy_mgmt_write => SYNTHESIZED_WIRE_72,
		 phy_mgmt_address => SYNTHESIZED_WIRE_73,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_74);


b2v_inst34 : user_logic_phy_controller
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_69,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_70,
		 phy_mgmt_read => SYNTHESIZED_WIRE_77,
		 phy_mgmt_write => SYNTHESIZED_WIRE_78,
		 phy_mgmt_address => SYNTHESIZED_WIRE_79,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_80);


b2v_inst35 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => SYNTHESIZED_WIRE_71,
		 phy_mgmt_write => SYNTHESIZED_WIRE_72,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in(1),
		 phy_mgmt_address => SYNTHESIZED_WIRE_73,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_74,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_75,
		 tx_datak => b_txdatak,
		 tx_parallel_data => SYNTHESIZED_WIRE_76,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_67,
		 tx_serial_data => SFP_Out_ALTERA_SYNTHESIZED(1),
		 tx_clkout => SYNTHESIZED_WIRE_66,
		 rx_clkout => SYNTHESIZED_WIRE_85,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_68,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_25,
		 rx_datak => b_rxdatak,
		 rx_parallel_data => SYNTHESIZED_WIRE_87);


b2v_inst36 : sfp_1
PORT MAP(phy_mgmt_clk => phy_mgmt_clk,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset,
		 phy_mgmt_read => SYNTHESIZED_WIRE_77,
		 phy_mgmt_write => SYNTHESIZED_WIRE_78,
		 pll_ref_clk => pll_ref_clk,
		 rx_serial_data => SFP_rx_in(0),
		 phy_mgmt_address => SYNTHESIZED_WIRE_79,
		 phy_mgmt_writedata => SYNTHESIZED_WIRE_80,
		 reconfig_to_xcvr => SYNTHESIZED_WIRE_81,
		 tx_datak => a_txdatak,
		 tx_parallel_data => SYNTHESIZED_WIRE_82,
		 phy_mgmt_waitrequest => SYNTHESIZED_WIRE_69,
		 tx_ready => Test_0,
		 rx_ready => Test_1,
		 tx_serial_data => SFP_Out_ALTERA_SYNTHESIZED(0),
		 tx_clkout => SYNTHESIZED_WIRE_63,
		 rx_clkout => SYNTHESIZED_WIRE_58,
		 phy_mgmt_readdata => SYNTHESIZED_WIRE_70,
		 reconfig_from_xcvr => SYNTHESIZED_WIRE_24,
		 rx_datak => a_rxdatak,
		 rx_parallel_data => SYNTHESIZED_WIRE_60);


b2v_inst4 : dff16
PORT MAP(clock => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_83,
		 q => c);



b2v_inst6 : fifo16
PORT MAP(wrreq => SYNTHESIZED_WIRE_99,
		 wrclk => SYNTHESIZED_WIRE_85,
		 rdreq => SYNTHESIZED_WIRE_99,
		 rdclk => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_87,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst7 : user_logic_reconfig_controller
PORT MAP(reconfig_busy => SYNTHESIZED_WIRE_88,
		 mgmt_clk_clk => phy_mgmt_clk,
		 mgmt_rst_reset => phy_mgmt_clk_reset,
		 reconfig_mgmt_waitrequest => SYNTHESIZED_WIRE_89,
		 reconfig_mgmt_readdata => SYNTHESIZED_WIRE_90,
		 reconfig_mgmt_read => SYNTHESIZED_WIRE_22,
		 reconfig_mgmt_write => SYNTHESIZED_WIRE_23,
		 reconfig_mgmt_address => SYNTHESIZED_WIRE_29,
		 reconfig_mgmt_writedata => SYNTHESIZED_WIRE_30);


b2v_inst8 : dff16
PORT MAP(clock => phy_mgmt_clk,
		 data => SYNTHESIZED_WIRE_91,
		 q => d);


SFP_Out <= SFP_Out_ALTERA_SYNTHESIZED;

END bdf_type;
