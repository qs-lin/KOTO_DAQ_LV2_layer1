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
-- CREATED      "Wed Jun 06 08:12:37 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Rx IS 
	PORT
	(
		_lword :  IN  STD_LOGIC;
		_vme_write :  IN  STD_LOGIC;
		_as :  IN  STD_LOGIC;
		_iack :  IN  STD_LOGIC;
		sysclk :  IN  STD_LOGIC;
		CRC_ERROR_IN :  IN  STD_LOGIC;
		ClockSwitch_0 :  IN  STD_LOGIC;
		ClockSwitch_1 :  IN  STD_LOGIC;
		CLOCKIN_2 :  IN  STD_LOGIC;
		CLOCKIN_3 :  IN  STD_LOGIC;
		CLOCKIN_0 :  IN  STD_LOGIC;
		CLOCKIN_1 :  IN  STD_LOGIC;
		CLOCKIN_4 :  IN  STD_LOGIC;
		CLOCKIN_5 :  IN  STD_LOGIC;
		CLOCKIN_6 :  IN  STD_LOGIC;
		CLOCKIN_7 :  IN  STD_LOGIC;
		ClockSwitch_3 :  IN  STD_LOGIC;
		ClockSwitch_2 :  IN  STD_LOGIC;
		AUX_IN :  IN  STD_LOGIC;
		SFPB_pll_ref_clk :  IN  STD_LOGIC;
		SFP_pll_ref_clk1 :  IN  STD_LOGIC;
		SFP_rx_in1 :  IN  STD_LOGIC;
		SFP_rx_in2 :  IN  STD_LOGIC;
		mem_qvld :  IN  STD_LOGIC;
		extmem_pll_refclk :  IN  STD_LOGIC;
		oct_rzqin :  IN  STD_LOGIC;
		SFP_pll_ref_clk2 :  IN  STD_LOGIC;
		SFP_rx_in3 :  IN  STD_LOGIC;
		SFP_rx_in4 :  IN  STD_LOGIC;
		SFP_pll_ref_clk3 :  IN  STD_LOGIC;
		SFP_rx_in5 :  IN  STD_LOGIC;
		SFP_rx_in6 :  IN  STD_LOGIC;
		SFP_pll_ref_clk4 :  IN  STD_LOGIC;
		SFP_rx_in7 :  IN  STD_LOGIC;
		SFP_rx_in8 :  IN  STD_LOGIC;
		SFPA_pll_ref_clk :  IN  STD_LOGIC;
		_ds :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		_ga :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		address :  IN  STD_LOGIC_VECTOR(31 DOWNTO 2);
		am :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		debug :  INOUT  STD_LOGIC_VECTOR(19 DOWNTO 2);
		mem_dq :  INOUT  STD_LOGIC_VECTOR(35 DOWNTO 0);
		mem_qk :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		mem_qk_n :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		SFP0_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP10_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP11_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP12_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP13_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP14_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP15_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP16_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP17_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP1_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP2_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP3_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP4_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP5_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP6_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP7_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP8_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFP9_Control :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		SFPA_rx_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		SFPB_rx_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		Systemin :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		vme_data :  INOUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		_dtack :  OUT  STD_LOGIC;
		_berr :  OUT  STD_LOGIC;
		dir_trans :  OUT  STD_LOGIC;
		transceivers_OE :  OUT  STD_LOGIC;
		led_0 :  OUT  STD_LOGIC;
		led_1 :  OUT  STD_LOGIC;
		led_2 :  OUT  STD_LOGIC;
		Systemout :  OUT  STD_LOGIC;
		ClockSwitchControl_0 :  OUT  STD_LOGIC;
		ClockSwitchControl_1 :  OUT  STD_LOGIC;
		ClockSwitchControl_2 :  OUT  STD_LOGIC;
		ClockSwitchControl_3 :  OUT  STD_LOGIC;
		ClockSwitchControl_4 :  OUT  STD_LOGIC;
		AUX_OUT1 :  OUT  STD_LOGIC;
		AUX_OUT2 :  OUT  STD_LOGIC;
		AUX_OUT3 :  OUT  STD_LOGIC;
		SFP_tx_Out1 :  OUT  STD_LOGIC;
		SFP_tx_Out2 :  OUT  STD_LOGIC;
		mem_ck :  OUT  STD_LOGIC;
		mem_ck_n :  OUT  STD_LOGIC;
		mem_ref_n :  OUT  STD_LOGIC;
		mem_we_n :  OUT  STD_LOGIC;
		SFP_tx_Out3 :  OUT  STD_LOGIC;
		SFP_tx_Out4 :  OUT  STD_LOGIC;
		SFP_tx_Out5 :  OUT  STD_LOGIC;
		SFP_tx_Out6 :  OUT  STD_LOGIC;
		SFP_tx_Out7 :  OUT  STD_LOGIC;
		SFP_tx_Out8 :  OUT  STD_LOGIC;
		mem_a :  OUT  STD_LOGIC_VECTOR(19 DOWNTO 0);
		mem_ba :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0);
		mem_cs_n :  OUT  STD_LOGIC_VECTOR(0 TO 0);
		mem_dk :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		mem_dk_n :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		mem_dm :  OUT  STD_LOGIC_VECTOR(0 TO 0);
		SFPA_tx_Out :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		SFPB_tx_Out :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END Rx;

ARCHITECTURE bdf_type OF Rx IS 

COMPONENT counter_show
	PORT(clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff_one
	PORT(data : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ram_giant
	PORT(wren : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 wrclock : IN STD_LOGIC;
		 rdclock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(29 DOWNTO 0);
		 rdaddress : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ol_controller
	PORT(clk : IN STD_LOGIC;
		 LIVE : IN STD_LOGIC;
		 ena_rx : IN STD_LOGIC;
		 data_rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_tx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ena_tx : OUT STD_LOGIC;
		 error : OUT STD_LOGIC;
		 send_err : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 datak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT new_receive_manager
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_tx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 need_read : OUT STD_LOGIC;
		 need_check : OUT STD_LOGIC;
		 evt_rx_00 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_01 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_02 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_03 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_04 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_05 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_06 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_07 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_08 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_09 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_10 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_11 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_12 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_13 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_14 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 evt_rx_15 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT l1a_checker_part1
	PORT(reset : IN STD_LOGIC;
		 need_check : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 one_adc_finish_check : IN STD_LOGIC;
		 check_in_progress : OUT STD_LOGIC;
		 error : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 start_check : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_gxblock
	PORT(phy_mgmt_clk : IN STD_LOGIC;
		 phy_mgmt_clk_reset : IN STD_LOGIC;
		 pll_ref_clk : IN STD_LOGIC;
		 SFP_rx_in_0 : IN STD_LOGIC;
		 SFP_rx_in_1 : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 phy_mgmt_read : IN STD_LOGIC;
		 phy_mgmt_write : IN STD_LOGIC;
		 phy_mgmt_addr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 phy_mgmt_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP0_tx_parallel_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SFP1_tx_parallel_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SFP_tx0_datak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 SFP_tx1_datak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 SFP_rx0_clkout : OUT STD_LOGIC;
		 SFP_Out_0 : OUT STD_LOGIC;
		 SFP_Out_1 : OUT STD_LOGIC;
		 SFP_rx1_clkout : OUT STD_LOGIC;
		 Test_0_0 : OUT STD_LOGIC;
		 Test_0_1 : OUT STD_LOGIC;
		 Test_1_0 : OUT STD_LOGIC;
		 Test_1_1 : OUT STD_LOGIC;
		 Test_0_2 : OUT STD_LOGIC;
		 Test_1_2 : OUT STD_LOGIC;
		 phy_mgmt_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP_rx0_datak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 SFP_rx0_parallel_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SFP_rx1_datak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 SFP_rx1_parallel_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter16
	PORT(clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mem_simu_trigger_v1
	PORT(clk : IN STD_LOGIC;
		 start_work : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 clock_timing : IN STD_LOGIC_VECTOR(29 DOWNTO 0);
		 total_trigger : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 trigger : OUT STD_LOGIC;
		 rd_req : OUT STD_LOGIC;
		 rd_addr : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 trigger_gen : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pulse_generator
	PORT(clock : IN STD_LOGIC;
		 signal : IN STD_LOGIC;
		 pulse : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT error_output
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 err_in : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 send_err : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 err_out : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2
	PORT(data1 : IN STD_LOGIC;
		 data0 : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 result : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT output_check
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 LIVE : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 error : OUT STD_LOGIC;
		 Current_L1A : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 packet_number : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 packet_number_v2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux16_16
	PORT(clock : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data10x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data11x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data12x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data13x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data14x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data15x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data2x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data3x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data4x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data5x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data6x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data7x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data8x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data9x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT adc_data_generator
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 trigger : IN STD_LOGIC;
		 size : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 error : OUT STD_LOGIC;
		 ff_tx_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 tx_number : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pll_new
	PORT(refclk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 refclk1 : IN STD_LOGIC;
		 extswitch : IN STD_LOGIC;
		 outclk_0 : OUT STD_LOGIC;
		 outclk_1 : OUT STD_LOGIC;
		 outclk_2 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT register_set0
	PORT(clock : IN STD_LOGIC;
		 in00 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in01 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in02 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in03 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in04 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in05 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in06 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in07 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in08 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in09 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out00 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out01 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out02 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out03 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out04 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out05 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out06 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out07 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out08 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out09 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register_set1
	PORT(clock : IN STD_LOGIC;
		 in00 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in01 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in02 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in03 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out00 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out01 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out02 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out03 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT trig_delay
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 trig_in : IN STD_LOGIC;
		 delay : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 trig_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT l1a_checker_part3
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 check_in_progress : IN STD_LOGIC;
		 L1A_00 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_01 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_02 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_03 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_04 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_05 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_06 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_07 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_08 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_09 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_10 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_11 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_12 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_13 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_14 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_15 : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 start_check : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 trig_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 L1A_align : OUT STD_LOGIC;
		 one_adc_finish_check : OUT STD_LOGIC;
		 error : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vme_ram
	PORT(wren : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 wrclock : IN STD_LOGIC;
		 rdclock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rdaddress : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT delta_trig_delay
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 trig_in : IN STD_LOGIC;
		 delay : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 trig_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT show_counter
	PORT(clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(24 DOWNTO 0)
	);
END COMPONENT;

COMPONENT counter7
	PORT(clock : IN STD_LOGIC;
		 cnt_en : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT l1a_discriminator
	PORT(clk : IN STD_LOGIC;
		 in : IN STD_LOGIC;
		 L1A : OUT STD_LOGIC;
		 PL1A : OUT STD_LOGIC;
		 PS : OUT STD_LOGIC;
		 ALIGN : OUT STD_LOGIC;
		 DELTA : OUT STD_LOGIC;
		 RST : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT l1a_checker_part2
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 start_check : IN STD_LOGIC;
		 rd_req : OUT STD_LOGIC;
		 rd_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT trig_counter
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 L1A : IN STD_LOGIC;
		 PL1A : IN STD_LOGIC;
		 PS : IN STD_LOGIC;
		 ALIGN : IN STD_LOGIC;
		 DELTA : IN STD_LOGIC;
		 cnt_ALIGN : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cnt_DELTA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cnt_L1A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cnt_PL1A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 cnt_PS : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vme_interface
	PORT(_lword : IN STD_LOGIC;
		 _vme_write : IN STD_LOGIC;
		 _as : IN STD_LOGIC;
		 _iack : IN STD_LOGIC;
		 _delayed_modsel : IN STD_LOGIC;
		 _delayed_ds : IN STD_LOGIC;
		 _dtack : INOUT STD_LOGIC;
		 _berr : INOUT STD_LOGIC;
		 _ds : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 _ga : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 address : IN STD_LOGIC_VECTOR(31 DOWNTO 2);
		 am : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 fromtapdel : IN STD_LOGIC_VECTOR(5 DOWNTO 1);
		 _modsel : OUT STD_LOGIC;
		 _vme_data_str : OUT STD_LOGIC;
		 vme_write : OUT STD_LOGIC;
		 dir_trans : OUT STD_LOGIC;
		 totapdel : OUT STD_LOGIC;
		 vmeas : OUT STD_LOGIC;
		 vmeds : OUT STD_LOGIC;
		 vmespare : OUT STD_LOGIC;
		 vme_address : OUT STD_LOGIC_VECTOR(26 DOWNTO 2)
	);
END COMPONENT;

COMPONENT rldramii
	PORT(pll_ref_clk : IN STD_LOGIC;
		 global_reset_n : IN STD_LOGIC;
		 soft_reset_n : IN STD_LOGIC;
		 avl_write_req : IN STD_LOGIC;
		 avl_read_req : IN STD_LOGIC;
		 oct_rzqin : IN STD_LOGIC;
		 avl_addr : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
		 avl_size : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 avl_wdata : IN STD_LOGIC_VECTOR(143 DOWNTO 0);
		 mem_dq : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
		 mem_qk : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 mem_qk_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 afi_clk : OUT STD_LOGIC;
		 afi_half_clk : OUT STD_LOGIC;
		 afi_reset_n : OUT STD_LOGIC;
		 afi_reset_export_n : OUT STD_LOGIC;
		 mem_ck : OUT STD_LOGIC;
		 mem_ck_n : OUT STD_LOGIC;
		 mem_cs_n : OUT STD_LOGIC;
		 mem_dm : OUT STD_LOGIC;
		 mem_ref_n : OUT STD_LOGIC;
		 mem_we_n : OUT STD_LOGIC;
		 avl_rdata_valid : OUT STD_LOGIC;
		 avl_ready : OUT STD_LOGIC;
		 local_init_done : OUT STD_LOGIC;
		 local_cal_success : OUT STD_LOGIC;
		 local_cal_fail : OUT STD_LOGIC;
		 pll_mem_clk : OUT STD_LOGIC;
		 pll_write_clk : OUT STD_LOGIC;
		 pll_locked : OUT STD_LOGIC;
		 pll_write_clk_pre_phy_clk : OUT STD_LOGIC;
		 pll_addr_cmd_clk : OUT STD_LOGIC;
		 pll_avl_clk : OUT STD_LOGIC;
		 pll_config_clk : OUT STD_LOGIC;
		 pll_mem_phy_clk : OUT STD_LOGIC;
		 afi_phy_clk : OUT STD_LOGIC;
		 pll_avl_phy_clk : OUT STD_LOGIC;
		 avl_rdata : OUT STD_LOGIC_VECTOR(143 DOWNTO 0);
		 mem_a : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
		 mem_ba : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		 mem_dk : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 mem_dk_n : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vme_ram_write
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 trig_in : IN STD_LOGIC;
		 wr_ena : OUT STD_LOGIC;
		 wr_addr : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT adc_manager
	PORT(The_clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 L1A_rd_req : IN STD_LOGIC;
		 start_read_pulse : IN STD_LOGIC;
		 use_loss : IN STD_LOGIC;
		 adc_data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ADC_slot : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 FIFO_in_dly : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 L1A_rd_addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 mem_upper_limit : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 spill_id : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 dval_a : OUT STD_LOGIC;
		 dval_b : OUT STD_LOGIC;
		 data_wr_ena_falledge : OUT STD_LOGIC;
		 finish_rd : OUT STD_LOGIC;
		 err : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 L1A_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 usage_a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 usage_b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT live_cnt
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 live : IN STD_LOGIC;
		 LIVE_rst : OUT STD_LOGIC;
		 cnt : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;

COMPONENT max_mem
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 current_mem_usage : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 max_mem_usage : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT trigger_counter
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 trigger : IN STD_LOGIC;
		 simu_ram_wr_req : OUT STD_LOGIC;
		 counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 simu_ram_wr_addr : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux2_16b
	PORT(clock : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_gxblock_x5new
	PORT(pll_ref_clk : IN STD_LOGIC;
		 phy_mgmt_clk : IN STD_LOGIC;
		 phy_mgmt_clk_reset : IN STD_LOGIC;
		 a_txdatak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ain : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 b_txdatak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 bin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 c_txdatak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 cin : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 d_txdatak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 e_txdatak : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 ein : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SFP_rx_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 Test_0 : OUT STD_LOGIC;
		 Test_1 : OUT STD_LOGIC;
		 a : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 a_rxdatak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 b : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 b_rxdatak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 c_rxdatak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 d : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 d_rxdatak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 e : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 e_rxdatak : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 SFP_Out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ol_controller_32
	PORT(clk : IN STD_LOGIC;
		 LIVE : IN STD_LOGIC;
		 ena_rx : IN STD_LOGIC;
		 data_rx : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data_tx : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 ena_tx : OUT STD_LOGIC;
		 error : OUT STD_LOGIC;
		 send_err : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datak : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 delay_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tx_manager
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 L1A_Align : IN STD_LOGIC;
		 need_read : IN STD_LOGIC;
		 one_adc_finish_read : IN STD_LOGIC;
		 error : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 evt_tx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 start_read : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT signal_valid
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 tlk_err : IN STD_LOGIC;
		 LIVE : IN STD_LOGIC;
		 dval : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT tapdel_10
	PORT(in : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sfp_gxblock_6g
	PORT(phy_mgmt_read : IN STD_LOGIC;
		 phy_mgmt_write : IN STD_LOGIC;
		 SFP_rx_in_0 : IN STD_LOGIC;
		 pll_ref_clk : IN STD_LOGIC;
		 SFP_rx_in_1 : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 phy_mgmt_clk : IN STD_LOGIC;
		 phy_mgmt_clk_reset : IN STD_LOGIC;
		 phy_mgmt_addr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 phy_mgmt_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP0_tx_parallel_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP1_tx_parallel_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP_tx0_datak : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 SFP_tx1_datak : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Test_0_0 : OUT STD_LOGIC;
		 Test_0_1 : OUT STD_LOGIC;
		 SFP_Out_0 : OUT STD_LOGIC;
		 Test_0_2 : OUT STD_LOGIC;
		 SFP_rx0_clkout : OUT STD_LOGIC;
		 Test_1_0 : OUT STD_LOGIC;
		 Test_1_1 : OUT STD_LOGIC;
		 SFP_Out_1 : OUT STD_LOGIC;
		 Test_1_2 : OUT STD_LOGIC;
		 SFP_rx1_clkout : OUT STD_LOGIC;
		 phy_mgmt_readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP_rx0_datak : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 SFP_rx0_parallel_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 SFP_rx1_datak : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 SFP_rx1_parallel_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT data_packer_v2
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 dval_port_a_00 : IN STD_LOGIC;
		 dval_port_b_00 : IN STD_LOGIC;
		 dval_port_a_01 : IN STD_LOGIC;
		 dval_port_b_01 : IN STD_LOGIC;
		 dval_port_a_02 : IN STD_LOGIC;
		 dval_port_b_02 : IN STD_LOGIC;
		 dval_port_a_03 : IN STD_LOGIC;
		 dval_port_b_03 : IN STD_LOGIC;
		 dval_port_a_04 : IN STD_LOGIC;
		 dval_port_b_04 : IN STD_LOGIC;
		 dval_port_a_05 : IN STD_LOGIC;
		 dval_port_b_05 : IN STD_LOGIC;
		 dval_port_a_06 : IN STD_LOGIC;
		 dval_port_b_06 : IN STD_LOGIC;
		 dval_port_a_07 : IN STD_LOGIC;
		 dval_port_b_07 : IN STD_LOGIC;
		 dval_port_a_08 : IN STD_LOGIC;
		 dval_port_b_08 : IN STD_LOGIC;
		 dval_port_a_09 : IN STD_LOGIC;
		 dval_port_b_09 : IN STD_LOGIC;
		 dval_port_a_10 : IN STD_LOGIC;
		 dval_port_b_10 : IN STD_LOGIC;
		 dval_port_a_11 : IN STD_LOGIC;
		 dval_port_b_11 : IN STD_LOGIC;
		 dval_port_a_12 : IN STD_LOGIC;
		 dval_port_b_12 : IN STD_LOGIC;
		 dval_port_a_13 : IN STD_LOGIC;
		 dval_port_b_13 : IN STD_LOGIC;
		 dval_port_a_14 : IN STD_LOGIC;
		 dval_port_b_14 : IN STD_LOGIC;
		 dval_port_a_15 : IN STD_LOGIC;
		 dval_port_b_15 : IN STD_LOGIC;
		 data_port_a_00 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_01 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_02 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_03 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_04 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_05 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_06 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_07 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_08 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_09 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_14 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_a_15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_00 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_01 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_02 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_03 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_04 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_05 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_06 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_07 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_08 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_09 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_14 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_port_b_15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 L1A : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 start_read_pulse : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT tdc_vme
	PORT(vmewrite : IN STD_LOGIC;
		 vmeas : IN STD_LOGIC;
		 vmeds : IN STD_LOGIC;
		 id : IN STD_LOGIC;
		 sysclk : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(26 DOWNTO 2);
		 data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 rd_data9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_bus0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_bus1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_bus2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_bus3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_bus4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg100 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg101 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg102 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg103 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg104 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg105 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg106 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg107 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg108 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg109 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg110 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg111 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg112 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg113 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg114 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg115 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg116 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg117 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg118 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg119 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg120 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg121 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg122 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg123 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg124 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg125 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg126 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg127 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg128 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg129 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg130 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg131 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg132 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg133 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg134 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg135 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg136 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg137 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg138 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg139 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 status_reg140 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 test_mode : OUT STD_LOGIC;
		 reset : OUT STD_LOGIC;
		 ena_simu : OUT STD_LOGIC;
		 SPI_start : OUT STD_LOGIC;
		 vmel2a_mode : OUT STD_LOGIC;
		 reset1 : OUT STD_LOGIC;
		 halt_mode : OUT STD_LOGIC;
		 vme_wr_en1 : OUT STD_LOGIC;
		 vme_wr_en2 : OUT STD_LOGIC;
		 vme_wr_en3 : OUT STD_LOGIC;
		 vme_wr_en4 : OUT STD_LOGIC;
		 vme_wr_en5 : OUT STD_LOGIC;
		 vme_wr_en6 : OUT STD_LOGIC;
		 vme_wr_en7 : OUT STD_LOGIC;
		 vme_wr_en8 : OUT STD_LOGIC;
		 reg20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg33 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg34 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg35 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg36 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg37 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg38 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg39 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg40 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg41 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg42 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg43 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg44 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg45 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg46 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg47 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg48 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg49 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg50 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg51 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg52 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg53 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg54 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg55 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 reg56 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 register8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register_set2
	PORT(clock : IN STD_LOGIC;
		 in00 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 in01 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 in02 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 in03 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 out00 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 out01 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 out02 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 out03 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vme_thing
	PORT(In1 : IN STD_LOGIC;
		 In2 : IN STD_LOGIC;
		 In3 : IN STD_LOGIC;
		 In4 : IN STD_LOGIC;
		 In5 : IN STD_LOGIC;
		 In6 : IN STD_LOGIC;
		 In15 : IN STD_LOGIC;
		 In16 : IN STD_LOGIC;
		 In17 : IN STD_LOGIC;
		 In18 : IN STD_LOGIC;
		 In19 : IN STD_LOGIC;
		 In20 : IN STD_LOGIC;
		 In21 : IN STD_LOGIC;
		 In22 : IN STD_LOGIC;
		 In23 : IN STD_LOGIC;
		 Outclk : IN STD_LOGIC;
		 In30 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In31 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In32 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In33 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In34 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In35 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In36 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In37 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In38 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In39 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In40 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In41 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In42 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In43 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In44 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In45 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In46 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In47 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In48 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In49 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In50 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In51 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In52 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In53 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In54 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In55 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In56 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In57 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In58 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In59 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In60 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In61 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In62 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In63 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In64 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In65 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In66 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In67 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In68 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In69 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In70 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In71 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In72 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 In73 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out1 : OUT STD_LOGIC;
		 Out2 : OUT STD_LOGIC;
		 Out3 : OUT STD_LOGIC;
		 Out4 : OUT STD_LOGIC;
		 Out5 : OUT STD_LOGIC;
		 Out6 : OUT STD_LOGIC;
		 Out15 : OUT STD_LOGIC;
		 Out16 : OUT STD_LOGIC;
		 Out17 : OUT STD_LOGIC;
		 Out18 : OUT STD_LOGIC;
		 Out19 : OUT STD_LOGIC;
		 Out20 : OUT STD_LOGIC;
		 Out21 : OUT STD_LOGIC;
		 Out22 : OUT STD_LOGIC;
		 Out23 : OUT STD_LOGIC;
		 Out30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out33 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out34 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out35 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out36 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out37 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out38 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out39 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out40 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out41 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out42 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out43 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out44 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out45 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out46 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out47 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out48 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out49 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out50 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out51 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out52 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out53 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out54 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out55 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out56 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out57 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out58 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out59 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out60 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out61 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out62 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out63 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out64 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out65 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out66 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out67 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out68 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out69 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out70 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out71 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out72 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Out73 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pulse_generator_falledge
	PORT(clock : IN STD_LOGIC;
		 signal : IN STD_LOGIC;
		 pulse : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	00_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	00_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	00_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	01_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	01_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	01_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	02_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	02_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	02_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	03_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	03_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	03_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	04_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	04_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	04_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	05_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	05_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	05_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	06_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	06_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	06_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	07_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	07_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	07_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	08_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	08_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	08_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	09_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	09_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	09_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	10_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	10_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	10_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	11_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	11_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	11_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	12_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	12_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	12_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	13_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	13_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	13_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	14_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	14_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	14_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	15_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	15_OL_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	15_Simu_Fiber :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	16_Fiber_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	17_Fiber_in :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	_dalayed_ds_in :  STD_LOGIC;
SIGNAL	_dalayed_modsel_in :  STD_LOGIC;
SIGNAL	adc_data_gen_err :  STD_LOGIC;
SIGNAL	adc_data_in_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_in_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_data_valid :  STD_LOGIC;
SIGNAL	adc_err00 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err01 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err02 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err03 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err04 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err05 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err06 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err07 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err08 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err09 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err10 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err11 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err12 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err13 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err14 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_err15 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	adc_packet_send :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	adc_slot_00 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_01 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_02 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_03 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_04 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_05 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_06 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_07 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_08 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_09 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_10 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_11 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_12 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_13 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_14 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	adc_slot_15 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	addr :  STD_LOGIC_VECTOR(26 DOWNTO 2);
SIGNAL	check_in_progress :  STD_LOGIC;
SIGNAL	cnt_DELTA :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	counter7_out :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	counter_show :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	current_L1A :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	data_ena :  STD_LOGIC;
SIGNAL	data_mem :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_out :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	data_port_a_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_a_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_port_b_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	DigiIn :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	din :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	dval_port_a_00 :  STD_LOGIC;
SIGNAL	dval_port_a_01 :  STD_LOGIC;
SIGNAL	dval_port_a_02 :  STD_LOGIC;
SIGNAL	dval_port_a_03 :  STD_LOGIC;
SIGNAL	dval_port_a_04 :  STD_LOGIC;
SIGNAL	dval_port_a_05 :  STD_LOGIC;
SIGNAL	dval_port_a_06 :  STD_LOGIC;
SIGNAL	dval_port_a_07 :  STD_LOGIC;
SIGNAL	dval_port_a_08 :  STD_LOGIC;
SIGNAL	dval_port_a_09 :  STD_LOGIC;
SIGNAL	dval_port_a_10 :  STD_LOGIC;
SIGNAL	dval_port_a_11 :  STD_LOGIC;
SIGNAL	dval_port_a_12 :  STD_LOGIC;
SIGNAL	dval_port_a_13 :  STD_LOGIC;
SIGNAL	dval_port_a_14 :  STD_LOGIC;
SIGNAL	dval_port_a_15 :  STD_LOGIC;
SIGNAL	dval_port_b_00 :  STD_LOGIC;
SIGNAL	dval_port_b_01 :  STD_LOGIC;
SIGNAL	dval_port_b_02 :  STD_LOGIC;
SIGNAL	dval_port_b_03 :  STD_LOGIC;
SIGNAL	dval_port_b_04 :  STD_LOGIC;
SIGNAL	dval_port_b_05 :  STD_LOGIC;
SIGNAL	dval_port_b_06 :  STD_LOGIC;
SIGNAL	dval_port_b_07 :  STD_LOGIC;
SIGNAL	dval_port_b_08 :  STD_LOGIC;
SIGNAL	dval_port_b_09 :  STD_LOGIC;
SIGNAL	dval_port_b_10 :  STD_LOGIC;
SIGNAL	dval_port_b_11 :  STD_LOGIC;
SIGNAL	dval_port_b_12 :  STD_LOGIC;
SIGNAL	dval_port_b_13 :  STD_LOGIC;
SIGNAL	dval_port_b_14 :  STD_LOGIC;
SIGNAL	dval_port_b_15 :  STD_LOGIC;
SIGNAL	ENA_RX :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	energy_size :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	event_tx_err :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	evt_rx_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_rx_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	evt_tx :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	fanout_clock :  STD_LOGIC;
SIGNAL	ff_tx_data :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	FIFO_in_dly :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	finish_rd_00 :  STD_LOGIC;
SIGNAL	finish_rd_01 :  STD_LOGIC;
SIGNAL	finish_rd_02 :  STD_LOGIC;
SIGNAL	finish_rd_03 :  STD_LOGIC;
SIGNAL	finish_rd_04 :  STD_LOGIC;
SIGNAL	finish_rd_05 :  STD_LOGIC;
SIGNAL	finish_rd_06 :  STD_LOGIC;
SIGNAL	finish_rd_07 :  STD_LOGIC;
SIGNAL	finish_rd_08 :  STD_LOGIC;
SIGNAL	finish_rd_09 :  STD_LOGIC;
SIGNAL	finish_rd_10 :  STD_LOGIC;
SIGNAL	finish_rd_11 :  STD_LOGIC;
SIGNAL	finish_rd_12 :  STD_LOGIC;
SIGNAL	finish_rd_13 :  STD_LOGIC;
SIGNAL	finish_rd_14 :  STD_LOGIC;
SIGNAL	finish_rd_15 :  STD_LOGIC;
SIGNAL	fromdel :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	glink_on_ch_12_14_active :  STD_LOGIC;
SIGNAL	input_switch :  STD_LOGIC;
SIGNAL	L1A_00 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_00_delay :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	L1A_01 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_02 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_03 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_04 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_05 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_06 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_07 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_08 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_09 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_10 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_11 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_12 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_13 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_14 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_15 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_align :  STD_LOGIC;
SIGNAL	L1A_check_err_part1 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	L1A_check_error :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	L1A_rd_addr_00 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_01 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_02 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_03 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_04 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_05 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_06 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_07 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_08 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_09 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_11 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_12 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_13 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_14 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_addr_15 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_rd_req_00 :  STD_LOGIC;
SIGNAL	L1A_rd_req_01 :  STD_LOGIC;
SIGNAL	L1A_rd_req_02 :  STD_LOGIC;
SIGNAL	L1A_rd_req_03 :  STD_LOGIC;
SIGNAL	L1A_rd_req_04 :  STD_LOGIC;
SIGNAL	L1A_rd_req_05 :  STD_LOGIC;
SIGNAL	L1A_rd_req_06 :  STD_LOGIC;
SIGNAL	L1A_rd_req_07 :  STD_LOGIC;
SIGNAL	L1A_rd_req_08 :  STD_LOGIC;
SIGNAL	L1A_rd_req_09 :  STD_LOGIC;
SIGNAL	L1A_rd_req_10 :  STD_LOGIC;
SIGNAL	L1A_rd_req_11 :  STD_LOGIC;
SIGNAL	L1A_rd_req_12 :  STD_LOGIC;
SIGNAL	L1A_rd_req_13 :  STD_LOGIC;
SIGNAL	L1A_rd_req_14 :  STD_LOGIC;
SIGNAL	L1A_rd_req_15 :  STD_LOGIC;
SIGNAL	L1A_trig_dleayed :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	LIVE :  STD_LOGIC;
SIGNAL	LIVE_rst :  STD_LOGIC;
SIGNAL	logic_reset :  STD_LOGIC;
SIGNAL	m_register_20 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_21 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_22 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_23 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_24 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_25 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_26 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_27 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_28 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_29 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_30 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_31 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_32 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_33 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_34 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_35 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_36 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_37 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_38 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_39 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_40 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_41 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_42 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_43 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_44 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_45 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_46 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_47 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_48 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_49 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_50 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_51 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_52 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_53 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_54 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	m_register_55 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	mask :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mask_select :  STD_LOGIC;
SIGNAL	max_mem_a_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_a_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	max_mem_b_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_upper_limit :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	mem_usage_a_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_a_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_00 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_01 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_02 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_03 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_04 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_05 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_06 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_07 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_08 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_09 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_10 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_12 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	more_counter :  STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL	need_check :  STD_LOGIC;
SIGNAL	need_read :  STD_LOGIC;
SIGNAL	one_adc_finish_check :  STD_LOGIC;
SIGNAL	one_adc_finish_read :  STD_LOGIC;
SIGNAL	output_check_err :  STD_LOGIC;
SIGNAL	phy_mgmt_clk_reset_1 :  STD_LOGIC;
SIGNAL	ram_out :  STD_LOGIC_VECTOR(29 DOWNTO 0);
SIGNAL	rd_1data1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_1data8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_data9 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	rd_memory8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	reset :  STD_LOGIC;
SIGNAL	reset_PLLs :  STD_LOGIC;
SIGNAL	send_err :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	show_counter :  STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL	simu_rd_addr :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	simu_rd_req :  STD_LOGIC;
SIGNAL	SPI_start :  STD_LOGIC;
SIGNAL	spill_id :  STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL	spy_mem_mux :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	standard_Fiber_in :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	start_check :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	start_read :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	start_read_pulse :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	start_work :  STD_LOGIC;
SIGNAL	status :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus103 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus104 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus105 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus106 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus107 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus108 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus109 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus110 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus111 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus112 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus113 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus114 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus115 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus116 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus117 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus118 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus119 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus120 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus121 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus122 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus123 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus124 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus125 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus126 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus127 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus128 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus129 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus130 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus131 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus132 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus133 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus134 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus135 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus136 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus137 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	status_bus138 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	test_counter :  STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL	test_mode :  STD_LOGIC;
SIGNAL	The_clock :  STD_LOGIC;
SIGNAL	TLK_Err :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	TLK_err_output :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	total_packet_sent :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	total_packet_sent_LIVE :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	total_trigger :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	trig_delay_delta :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	trig_delta :  STD_LOGIC;
SIGNAL	trigger_active :  STD_LOGIC;
SIGNAL	trigger_beam :  STD_LOGIC;
SIGNAL	trigger_gen :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	trigger_received :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	TrigIn :  STD_LOGIC;
SIGNAL	use_loss :  STD_LOGIC;
SIGNAL	vme_halt :  STD_LOGIC;
SIGNAL	vme_ram_wr_addr :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	vme_ram_wr_ena :  STD_LOGIC;
SIGNAL	vme_register_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_register_8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	vme_service_8ns :  STD_LOGIC;
SIGNAL	vme_service_clock :  STD_LOGIC;
SIGNAL	vmeas :  STD_LOGIC;
SIGNAL	vmeds :  STD_LOGIC;
SIGNAL	vmewrite :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_240 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_241 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC_VECTOR(0 TO 7);
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_62 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_63 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_65 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_66 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_67 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_69 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_70 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_242 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_72 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_73 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_84 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_243 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_95 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_96 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_102 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_103 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_104 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_105 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_106 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_244 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_110 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_111 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_112 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_113 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_116 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_117 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_118 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_119 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_120 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_121 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_122 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_123 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_124 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_125 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_126 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_127 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_128 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_129 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_130 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_131 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_132 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_133 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_134 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_135 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_136 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_137 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_138 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_139 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_140 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_141 :  STD_LOGIC_VECTOR(0 TO 15);
SIGNAL	SYNTHESIZED_WIRE_142 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_143 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_144 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_145 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_146 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_147 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_148 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_150 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_151 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_152 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_245 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_246 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_163 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_164 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_165 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_166 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_167 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_168 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_169 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_170 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_171 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_172 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_173 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_174 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_175 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_176 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_177 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_178 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_179 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_180 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_181 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_182 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_183 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_184 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_185 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_186 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_187 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_188 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_189 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_190 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_191 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_192 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_193 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_194 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_195 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_196 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_197 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_198 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_199 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_200 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_201 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_202 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_203 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_204 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_205 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_206 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_207 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_208 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_209 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_210 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_211 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_212 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_213 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_214 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_215 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_216 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_217 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_218 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_219 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_220 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_221 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_222 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_223 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_224 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_225 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_226 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_230 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_231 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_232 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_233 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_234 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_235 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_236 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_237 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 
transceivers_OE <= SYNTHESIZED_WIRE_29;
SYNTHESIZED_WIRE_0 <= '0';
SYNTHESIZED_WIRE_12 <= "00000000";
SYNTHESIZED_WIRE_13 <= "00000000";
SYNTHESIZED_WIRE_14 <= "00000000";
SYNTHESIZED_WIRE_15 <= "00000000";
SYNTHESIZED_WIRE_26 <= "00000000";
SYNTHESIZED_WIRE_27 <= "00000000";
SYNTHESIZED_WIRE_28 <= '0';
SYNTHESIZED_WIRE_30 <= "00000000";
SYNTHESIZED_WIRE_31 <= "00000000";
SYNTHESIZED_WIRE_32 <= "00000000";
SYNTHESIZED_WIRE_33 <= "00000000";
SYNTHESIZED_WIRE_34 <= "00000000";
SYNTHESIZED_WIRE_35 <= "00000000";
SYNTHESIZED_WIRE_36 <= "00000000";
SYNTHESIZED_WIRE_37 <= "00000000";
SYNTHESIZED_WIRE_38 <= "00000000";
SYNTHESIZED_WIRE_39 <= "00000000";
SYNTHESIZED_WIRE_40 <= "00000000";
SYNTHESIZED_WIRE_41 <= "00000000";
SYNTHESIZED_WIRE_42 <= "00000000";
SYNTHESIZED_WIRE_43 <= "00000000";
SYNTHESIZED_WIRE_44 <= "00000000";
SYNTHESIZED_WIRE_45 <= "00000000";
SYNTHESIZED_WIRE_46 <= "00000000";
SYNTHESIZED_WIRE_47 <= "00000000";
SYNTHESIZED_WIRE_49 <= "00000000";
SYNTHESIZED_WIRE_50 <= "00000000";
SYNTHESIZED_WIRE_51 <= "00000000";
SYNTHESIZED_WIRE_52 <= "00000000";
SYNTHESIZED_WIRE_53 <= "00000000";
SYNTHESIZED_WIRE_54 <= "00000000";
SYNTHESIZED_WIRE_55 <= "00000000";
SYNTHESIZED_WIRE_56 <= "00000000";
SYNTHESIZED_WIRE_57 <= "00000000";
SYNTHESIZED_WIRE_58 <= "00000000";
SYNTHESIZED_WIRE_59 <= "00000000";
SYNTHESIZED_WIRE_60 <= "00000000";
SYNTHESIZED_WIRE_127 <= '0';
SYNTHESIZED_WIRE_129 <= '0';
SYNTHESIZED_WIRE_140 <= '1';
SYNTHESIZED_WIRE_141 <= "0000000000000000";
SYNTHESIZED_WIRE_143 <= '1';
SYNTHESIZED_WIRE_150 <= '1';
SYNTHESIZED_WIRE_151 <= '1';
SYNTHESIZED_WIRE_152 <= '0';
SYNTHESIZED_WIRE_245 <= "00000000000000000000000000000000";
SYNTHESIZED_WIRE_246 <= "00000000000000000000000000000000";
SYNTHESIZED_WIRE_163 <= '1';



b2v_inst : counter_show
PORT MAP(clock => vme_service_clock,
		 q => counter_show);


phy_mgmt_clk_reset_1 <= SYNTHESIZED_WIRE_0;



data_ena <= adc_data_valid AND input_switch;

led_2 <= counter_show(21);



b2v_inst101 : dff_one
PORT MAP(data => logic_reset,
		 clock => The_clock,
		 q => SYNTHESIZED_WIRE_2);




logic_reset <= LIVE_rst OR reset;



b2v_inst106 : ram_giant
PORT MAP(wren => test_mode,
		 rden => simu_rd_req,
		 wrclock => vmeas,
		 rdclock => The_clock,
		 data => vme_register_1(29 DOWNTO 0),
		 rdaddress => simu_rd_addr,
		 wraddress => vme_register_5(13 DOWNTO 0),
		 q => ram_out);


b2v_inst107 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(0),
		 data_rx => 00_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_240,
		 error => TLK_Err(0),
		 send_err => send_err(0),
		 data_out => SYNTHESIZED_WIRE_20,
		 datak => SYNTHESIZED_WIRE_25);



b2v_inst109 : new_receive_manager
PORT MAP(clk => The_clock,
		 reset => SYNTHESIZED_WIRE_2,
		 din => din,
		 evt_tx => evt_tx,
		 need_read => need_read,
		 need_check => need_check,
		 evt_rx_00 => evt_rx_00,
		 evt_rx_01 => evt_rx_01,
		 evt_rx_02 => evt_rx_02,
		 evt_rx_03 => evt_rx_03,
		 evt_rx_04 => evt_rx_04,
		 evt_rx_05 => evt_rx_05,
		 evt_rx_06 => evt_rx_06,
		 evt_rx_07 => evt_rx_07,
		 evt_rx_08 => evt_rx_08,
		 evt_rx_09 => evt_rx_09,
		 evt_rx_10 => evt_rx_10,
		 evt_rx_11 => evt_rx_11,
		 evt_rx_12 => evt_rx_12,
		 evt_rx_13 => evt_rx_13,
		 evt_rx_14 => evt_rx_14,
		 evt_rx_15 => evt_rx_15);



b2v_inst110 : l1a_checker_part1
PORT MAP(reset => logic_reset,
		 need_check => need_check,
		 clk => The_clock,
		 one_adc_finish_check => one_adc_finish_check,
		 check_in_progress => check_in_progress,
		 error => L1A_check_err_part1,
		 start_check => start_check);


b2v_inst111 : sfp_gxblock
PORT MAP(phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 pll_ref_clk => SFP_pll_ref_clk3,
		 SFP_rx_in_0 => SFP_rx_in5,
		 SFP_rx_in_1 => SFP_rx_in6,
		 clk => The_clock,
		 phy_mgmt_read => vme_register_2(0),
		 phy_mgmt_write => vme_register_2(1),
		 phy_mgmt_addr => vme_register_1(8 DOWNTO 0),
		 phy_mgmt_writedata => vme_register_3,
		 SFP0_tx_parallel_data => SYNTHESIZED_WIRE_3,
		 SFP1_tx_parallel_data => SYNTHESIZED_WIRE_4,
		 SFP_tx0_datak => SYNTHESIZED_WIRE_5,
		 SFP_tx1_datak => SYNTHESIZED_WIRE_6,
		 SFP_Out_0 => SFP_tx_Out5,
		 SFP_Out_1 => SFP_tx_Out6,
		 SFP_rx0_parallel_data => 14_Fiber_in,
		 SFP_rx1_parallel_data => 15_Fiber_in);


b2v_inst112 : counter16
PORT MAP(clock => The_clock,
		 q => SYNTHESIZED_WIRE_240);


b2v_inst113 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(9),
		 data_rx => 09_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_241,
		 error => TLK_Err(9),
		 send_err => send_err(9),
		 data_out => SYNTHESIZED_WIRE_61,
		 datak => SYNTHESIZED_WIRE_66);


b2v_inst114 : mem_simu_trigger_v1
PORT MAP(clk => The_clock,
		 start_work => start_work,
		 reset => logic_reset,
		 clock_timing => ram_out,
		 total_trigger => total_trigger,
		 trigger => trigger_beam,
		 rd_req => simu_rd_req,
		 rd_addr => simu_rd_addr,
		 trigger_gen => trigger_gen);


b2v_inst115 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(0),
		 pulse => start_read_pulse(0));


b2v_inst116 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(8),
		 data_rx => 08_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_241,
		 error => TLK_Err(8),
		 send_err => send_err(8),
		 data_out => SYNTHESIZED_WIRE_62,
		 datak => SYNTHESIZED_WIRE_67);


b2v_inst117 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(7),
		 data_rx => 07_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_241,
		 error => TLK_Err(7),
		 send_err => send_err(7),
		 data_out => SYNTHESIZED_WIRE_63,
		 datak => SYNTHESIZED_WIRE_68);


b2v_inst118 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(6),
		 data_rx => 06_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_241,
		 error => TLK_Err(6),
		 send_err => send_err(6),
		 data_out => SYNTHESIZED_WIRE_64,
		 datak => SYNTHESIZED_WIRE_69);


b2v_inst119 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(5),
		 data_rx => 05_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_241,
		 error => TLK_Err(5),
		 send_err => send_err(5),
		 data_out => SYNTHESIZED_WIRE_65,
		 datak => SYNTHESIZED_WIRE_70);

led_1 <= vme_halt;



b2v_inst120 : counter16
PORT MAP(clock => The_clock,
		 q => SYNTHESIZED_WIRE_241);


b2v_inst121 : error_output
PORT MAP(clk => The_clock,
		 reset => reset,
		 err_in => TLK_Err,
		 send_err => send_err,
		 err_out => TLK_err_output);


b2v_inst122 : mux2
PORT MAP(data1 => TLK_Err(1),
		 data0 => TLK_Err(0),
		 clock => The_clock,
		 sel => mask_select,
		 result => SYNTHESIZED_WIRE_142);


b2v_inst123 : output_check
PORT MAP(clock => The_clock,
		 reset => logic_reset,
		 LIVE => LIVE,
		 data_in => data_out,
		 error => output_check_err,
		 Current_L1A => current_L1A,
		 packet_number => total_packet_sent_LIVE,
		 packet_number_v2 => total_packet_sent);

debug(16) <= reset_PLLs;



b2v_inst125 : mux16_16
PORT MAP(clock => The_clock,
		 data0x => adc_data_in_00,
		 data10x => adc_data_in_10,
		 data11x => adc_data_in_11,
		 data12x => adc_data_in_12,
		 data13x => adc_data_in_13,
		 data14x => adc_data_in_14,
		 data15x => adc_data_in_15,
		 data1x => adc_data_in_01,
		 data2x => adc_data_in_02,
		 data3x => adc_data_in_03,
		 data4x => adc_data_in_04,
		 data5x => adc_data_in_05,
		 data6x => adc_data_in_06,
		 data7x => adc_data_in_07,
		 data8x => adc_data_in_08,
		 data9x => adc_data_in_09,
		 sel => spy_mem_mux,
		 result => data_mem);


b2v_inst126 : counter16
PORT MAP(clock => The_clock,
		 q => SYNTHESIZED_WIRE_244);


b2v_inst128 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(1),
		 pulse => start_read_pulse(1));

00_Simu_Fiber <= ff_tx_data;


mem_a(19) <= mem_qvld;


01_Simu_Fiber <= ff_tx_data;



b2v_inst131 : adc_data_generator
PORT MAP(clock => The_clock,
		 reset => logic_reset,
		 trigger => trigger_beam,
		 size => energy_size,
		 error => adc_data_gen_err,
		 ff_tx_data => ff_tx_data,
		 tx_number => adc_packet_send);

02_Simu_Fiber <= ff_tx_data;


03_Simu_Fiber <= ff_tx_data;



b2v_inst134 : pll_new
PORT MAP(refclk => CLOCKIN_0,
		 rst => reset_PLLs,
		 refclk1 => CLOCKIN_1,
		 extswitch => ClockSwitch_0,
		 outclk_0 => The_clock,
		 outclk_2 => fanout_clock);


PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(0) = '1') THEN
	SFP0_Control(7) <= SYNTHESIZED_WIRE_12(0);
ELSE
	SFP0_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(1) = '1') THEN
	SFP0_Control(6) <= SYNTHESIZED_WIRE_12(1);
ELSE
	SFP0_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(2) = '1') THEN
	SFP0_Control(5) <= SYNTHESIZED_WIRE_12(2);
ELSE
	SFP0_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(3) = '1') THEN
	SFP0_Control(4) <= SYNTHESIZED_WIRE_12(3);
ELSE
	SFP0_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(4) = '1') THEN
	SFP0_Control(3) <= SYNTHESIZED_WIRE_12(4);
ELSE
	SFP0_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(5) = '1') THEN
	SFP0_Control(2) <= SYNTHESIZED_WIRE_12(5);
ELSE
	SFP0_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(6) = '1') THEN
	SFP0_Control(1) <= SYNTHESIZED_WIRE_12(6);
ELSE
	SFP0_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_12,SYNTHESIZED_WIRE_13)
BEGIN
if (SYNTHESIZED_WIRE_13(7) = '1') THEN
	SFP0_Control(0) <= SYNTHESIZED_WIRE_12(7);
ELSE
	SFP0_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(0) = '1') THEN
	SFP1_Control(7) <= SYNTHESIZED_WIRE_14(0);
ELSE
	SFP1_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(1) = '1') THEN
	SFP1_Control(6) <= SYNTHESIZED_WIRE_14(1);
ELSE
	SFP1_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(2) = '1') THEN
	SFP1_Control(5) <= SYNTHESIZED_WIRE_14(2);
ELSE
	SFP1_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(3) = '1') THEN
	SFP1_Control(4) <= SYNTHESIZED_WIRE_14(3);
ELSE
	SFP1_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(4) = '1') THEN
	SFP1_Control(3) <= SYNTHESIZED_WIRE_14(4);
ELSE
	SFP1_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(5) = '1') THEN
	SFP1_Control(2) <= SYNTHESIZED_WIRE_14(5);
ELSE
	SFP1_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(6) = '1') THEN
	SFP1_Control(1) <= SYNTHESIZED_WIRE_14(6);
ELSE
	SFP1_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_14,SYNTHESIZED_WIRE_15)
BEGIN
if (SYNTHESIZED_WIRE_15(7) = '1') THEN
	SFP1_Control(0) <= SYNTHESIZED_WIRE_14(7);
ELSE
	SFP1_Control(0) <= 'Z';
END IF;
END PROCESS;


b2v_inst137 : register_set0
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_16,
		 in01 => SYNTHESIZED_WIRE_17,
		 in02 => SYNTHESIZED_WIRE_18,
		 in03 => SYNTHESIZED_WIRE_19,
		 in04 => SYNTHESIZED_WIRE_20,
		 in05 => SYNTHESIZED_WIRE_21,
		 in06 => SYNTHESIZED_WIRE_22,
		 in07 => SYNTHESIZED_WIRE_23,
		 in08 => SYNTHESIZED_WIRE_24,
		 in09 => SYNTHESIZED_WIRE_25,
		 out00 => SYNTHESIZED_WIRE_131,
		 out01 => SYNTHESIZED_WIRE_133,
		 out02 => SYNTHESIZED_WIRE_135,
		 out03 => SYNTHESIZED_WIRE_137,
		 out04 => SYNTHESIZED_WIRE_139,
		 out05 => SYNTHESIZED_WIRE_130,
		 out06 => SYNTHESIZED_WIRE_132,
		 out07 => SYNTHESIZED_WIRE_134,
		 out08 => SYNTHESIZED_WIRE_136,
		 out09 => SYNTHESIZED_WIRE_138);


PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(0) = '1') THEN
	SFP2_Control(7) <= SYNTHESIZED_WIRE_26(0);
ELSE
	SFP2_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(1) = '1') THEN
	SFP2_Control(6) <= SYNTHESIZED_WIRE_26(1);
ELSE
	SFP2_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(2) = '1') THEN
	SFP2_Control(5) <= SYNTHESIZED_WIRE_26(2);
ELSE
	SFP2_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(3) = '1') THEN
	SFP2_Control(4) <= SYNTHESIZED_WIRE_26(3);
ELSE
	SFP2_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(4) = '1') THEN
	SFP2_Control(3) <= SYNTHESIZED_WIRE_26(4);
ELSE
	SFP2_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(5) = '1') THEN
	SFP2_Control(2) <= SYNTHESIZED_WIRE_26(5);
ELSE
	SFP2_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(6) = '1') THEN
	SFP2_Control(1) <= SYNTHESIZED_WIRE_26(6);
ELSE
	SFP2_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_26,SYNTHESIZED_WIRE_27)
BEGIN
if (SYNTHESIZED_WIRE_27(7) = '1') THEN
	SFP2_Control(0) <= SYNTHESIZED_WIRE_26(7);
ELSE
	SFP2_Control(0) <= 'Z';
END IF;
END PROCESS;


b2v_inst139 : pll_new
PORT MAP(refclk => CLOCKIN_2,
		 rst => SYNTHESIZED_WIRE_28,
		 refclk1 => CLOCKIN_3,
		 extswitch => ClockSwitch_1,
		 outclk_1 => vme_service_clock);


b2v_inst14 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_29,
		 clock => vme_service_clock,
		 q => SYNTHESIZED_WIRE_48);


PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(0) = '1') THEN
	SFP3_Control(7) <= SYNTHESIZED_WIRE_30(0);
ELSE
	SFP3_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(1) = '1') THEN
	SFP3_Control(6) <= SYNTHESIZED_WIRE_30(1);
ELSE
	SFP3_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(2) = '1') THEN
	SFP3_Control(5) <= SYNTHESIZED_WIRE_30(2);
ELSE
	SFP3_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(3) = '1') THEN
	SFP3_Control(4) <= SYNTHESIZED_WIRE_30(3);
ELSE
	SFP3_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(4) = '1') THEN
	SFP3_Control(3) <= SYNTHESIZED_WIRE_30(4);
ELSE
	SFP3_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(5) = '1') THEN
	SFP3_Control(2) <= SYNTHESIZED_WIRE_30(5);
ELSE
	SFP3_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(6) = '1') THEN
	SFP3_Control(1) <= SYNTHESIZED_WIRE_30(6);
ELSE
	SFP3_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_30,SYNTHESIZED_WIRE_31)
BEGIN
if (SYNTHESIZED_WIRE_31(7) = '1') THEN
	SFP3_Control(0) <= SYNTHESIZED_WIRE_30(7);
ELSE
	SFP3_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(0) = '1') THEN
	SFP4_Control(7) <= SYNTHESIZED_WIRE_32(0);
ELSE
	SFP4_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(1) = '1') THEN
	SFP4_Control(6) <= SYNTHESIZED_WIRE_32(1);
ELSE
	SFP4_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(2) = '1') THEN
	SFP4_Control(5) <= SYNTHESIZED_WIRE_32(2);
ELSE
	SFP4_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(3) = '1') THEN
	SFP4_Control(4) <= SYNTHESIZED_WIRE_32(3);
ELSE
	SFP4_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(4) = '1') THEN
	SFP4_Control(3) <= SYNTHESIZED_WIRE_32(4);
ELSE
	SFP4_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(5) = '1') THEN
	SFP4_Control(2) <= SYNTHESIZED_WIRE_32(5);
ELSE
	SFP4_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(6) = '1') THEN
	SFP4_Control(1) <= SYNTHESIZED_WIRE_32(6);
ELSE
	SFP4_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_32,SYNTHESIZED_WIRE_33)
BEGIN
if (SYNTHESIZED_WIRE_33(7) = '1') THEN
	SFP4_Control(0) <= SYNTHESIZED_WIRE_32(7);
ELSE
	SFP4_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(0) = '1') THEN
	SFP5_Control(7) <= SYNTHESIZED_WIRE_34(0);
ELSE
	SFP5_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(1) = '1') THEN
	SFP5_Control(6) <= SYNTHESIZED_WIRE_34(1);
ELSE
	SFP5_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(2) = '1') THEN
	SFP5_Control(5) <= SYNTHESIZED_WIRE_34(2);
ELSE
	SFP5_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(3) = '1') THEN
	SFP5_Control(4) <= SYNTHESIZED_WIRE_34(3);
ELSE
	SFP5_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(4) = '1') THEN
	SFP5_Control(3) <= SYNTHESIZED_WIRE_34(4);
ELSE
	SFP5_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(5) = '1') THEN
	SFP5_Control(2) <= SYNTHESIZED_WIRE_34(5);
ELSE
	SFP5_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(6) = '1') THEN
	SFP5_Control(1) <= SYNTHESIZED_WIRE_34(6);
ELSE
	SFP5_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_34,SYNTHESIZED_WIRE_35)
BEGIN
if (SYNTHESIZED_WIRE_35(7) = '1') THEN
	SFP5_Control(0) <= SYNTHESIZED_WIRE_34(7);
ELSE
	SFP5_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(0) = '1') THEN
	SFP6_Control(7) <= SYNTHESIZED_WIRE_36(0);
ELSE
	SFP6_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(1) = '1') THEN
	SFP6_Control(6) <= SYNTHESIZED_WIRE_36(1);
ELSE
	SFP6_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(2) = '1') THEN
	SFP6_Control(5) <= SYNTHESIZED_WIRE_36(2);
ELSE
	SFP6_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(3) = '1') THEN
	SFP6_Control(4) <= SYNTHESIZED_WIRE_36(3);
ELSE
	SFP6_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(4) = '1') THEN
	SFP6_Control(3) <= SYNTHESIZED_WIRE_36(4);
ELSE
	SFP6_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(5) = '1') THEN
	SFP6_Control(2) <= SYNTHESIZED_WIRE_36(5);
ELSE
	SFP6_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(6) = '1') THEN
	SFP6_Control(1) <= SYNTHESIZED_WIRE_36(6);
ELSE
	SFP6_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_36,SYNTHESIZED_WIRE_37)
BEGIN
if (SYNTHESIZED_WIRE_37(7) = '1') THEN
	SFP6_Control(0) <= SYNTHESIZED_WIRE_36(7);
ELSE
	SFP6_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(0) = '1') THEN
	SFP7_Control(7) <= SYNTHESIZED_WIRE_38(0);
ELSE
	SFP7_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(1) = '1') THEN
	SFP7_Control(6) <= SYNTHESIZED_WIRE_38(1);
ELSE
	SFP7_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(2) = '1') THEN
	SFP7_Control(5) <= SYNTHESIZED_WIRE_38(2);
ELSE
	SFP7_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(3) = '1') THEN
	SFP7_Control(4) <= SYNTHESIZED_WIRE_38(3);
ELSE
	SFP7_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(4) = '1') THEN
	SFP7_Control(3) <= SYNTHESIZED_WIRE_38(4);
ELSE
	SFP7_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(5) = '1') THEN
	SFP7_Control(2) <= SYNTHESIZED_WIRE_38(5);
ELSE
	SFP7_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(6) = '1') THEN
	SFP7_Control(1) <= SYNTHESIZED_WIRE_38(6);
ELSE
	SFP7_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_38,SYNTHESIZED_WIRE_39)
BEGIN
if (SYNTHESIZED_WIRE_39(7) = '1') THEN
	SFP7_Control(0) <= SYNTHESIZED_WIRE_38(7);
ELSE
	SFP7_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(0) = '1') THEN
	SFP8_Control(7) <= SYNTHESIZED_WIRE_40(0);
ELSE
	SFP8_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(1) = '1') THEN
	SFP8_Control(6) <= SYNTHESIZED_WIRE_40(1);
ELSE
	SFP8_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(2) = '1') THEN
	SFP8_Control(5) <= SYNTHESIZED_WIRE_40(2);
ELSE
	SFP8_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(3) = '1') THEN
	SFP8_Control(4) <= SYNTHESIZED_WIRE_40(3);
ELSE
	SFP8_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(4) = '1') THEN
	SFP8_Control(3) <= SYNTHESIZED_WIRE_40(4);
ELSE
	SFP8_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(5) = '1') THEN
	SFP8_Control(2) <= SYNTHESIZED_WIRE_40(5);
ELSE
	SFP8_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(6) = '1') THEN
	SFP8_Control(1) <= SYNTHESIZED_WIRE_40(6);
ELSE
	SFP8_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_40,SYNTHESIZED_WIRE_41)
BEGIN
if (SYNTHESIZED_WIRE_41(7) = '1') THEN
	SFP8_Control(0) <= SYNTHESIZED_WIRE_40(7);
ELSE
	SFP8_Control(0) <= 'Z';
END IF;
END PROCESS;


b2v_inst146 : pll_new
PORT MAP(refclk => CLOCKIN_6,
		 rst => reset_PLLs,
		 refclk1 => CLOCKIN_7,
		 extswitch => ClockSwitch_3);


PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(0) = '1') THEN
	SFP9_Control(7) <= SYNTHESIZED_WIRE_42(0);
ELSE
	SFP9_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(1) = '1') THEN
	SFP9_Control(6) <= SYNTHESIZED_WIRE_42(1);
ELSE
	SFP9_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(2) = '1') THEN
	SFP9_Control(5) <= SYNTHESIZED_WIRE_42(2);
ELSE
	SFP9_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(3) = '1') THEN
	SFP9_Control(4) <= SYNTHESIZED_WIRE_42(3);
ELSE
	SFP9_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(4) = '1') THEN
	SFP9_Control(3) <= SYNTHESIZED_WIRE_42(4);
ELSE
	SFP9_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(5) = '1') THEN
	SFP9_Control(2) <= SYNTHESIZED_WIRE_42(5);
ELSE
	SFP9_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(6) = '1') THEN
	SFP9_Control(1) <= SYNTHESIZED_WIRE_42(6);
ELSE
	SFP9_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_42,SYNTHESIZED_WIRE_43)
BEGIN
if (SYNTHESIZED_WIRE_43(7) = '1') THEN
	SFP9_Control(0) <= SYNTHESIZED_WIRE_42(7);
ELSE
	SFP9_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(0) = '1') THEN
	SFP10_Control(7) <= SYNTHESIZED_WIRE_44(0);
ELSE
	SFP10_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(1) = '1') THEN
	SFP10_Control(6) <= SYNTHESIZED_WIRE_44(1);
ELSE
	SFP10_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(2) = '1') THEN
	SFP10_Control(5) <= SYNTHESIZED_WIRE_44(2);
ELSE
	SFP10_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(3) = '1') THEN
	SFP10_Control(4) <= SYNTHESIZED_WIRE_44(3);
ELSE
	SFP10_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(4) = '1') THEN
	SFP10_Control(3) <= SYNTHESIZED_WIRE_44(4);
ELSE
	SFP10_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(5) = '1') THEN
	SFP10_Control(2) <= SYNTHESIZED_WIRE_44(5);
ELSE
	SFP10_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(6) = '1') THEN
	SFP10_Control(1) <= SYNTHESIZED_WIRE_44(6);
ELSE
	SFP10_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_44,SYNTHESIZED_WIRE_45)
BEGIN
if (SYNTHESIZED_WIRE_45(7) = '1') THEN
	SFP10_Control(0) <= SYNTHESIZED_WIRE_44(7);
ELSE
	SFP10_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(0) = '1') THEN
	SFP11_Control(7) <= SYNTHESIZED_WIRE_46(0);
ELSE
	SFP11_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(1) = '1') THEN
	SFP11_Control(6) <= SYNTHESIZED_WIRE_46(1);
ELSE
	SFP11_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(2) = '1') THEN
	SFP11_Control(5) <= SYNTHESIZED_WIRE_46(2);
ELSE
	SFP11_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(3) = '1') THEN
	SFP11_Control(4) <= SYNTHESIZED_WIRE_46(3);
ELSE
	SFP11_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(4) = '1') THEN
	SFP11_Control(3) <= SYNTHESIZED_WIRE_46(4);
ELSE
	SFP11_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(5) = '1') THEN
	SFP11_Control(2) <= SYNTHESIZED_WIRE_46(5);
ELSE
	SFP11_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(6) = '1') THEN
	SFP11_Control(1) <= SYNTHESIZED_WIRE_46(6);
ELSE
	SFP11_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_46,SYNTHESIZED_WIRE_47)
BEGIN
if (SYNTHESIZED_WIRE_47(7) = '1') THEN
	SFP11_Control(0) <= SYNTHESIZED_WIRE_46(7);
ELSE
	SFP11_Control(0) <= 'Z';
END IF;
END PROCESS;


b2v_inst15 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_48,
		 clock => vme_service_clock,
		 q => _dalayed_ds_in);


PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(0) = '1') THEN
	SFP12_Control(7) <= SYNTHESIZED_WIRE_49(0);
ELSE
	SFP12_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(1) = '1') THEN
	SFP12_Control(6) <= SYNTHESIZED_WIRE_49(1);
ELSE
	SFP12_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(2) = '1') THEN
	SFP12_Control(5) <= SYNTHESIZED_WIRE_49(2);
ELSE
	SFP12_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(3) = '1') THEN
	SFP12_Control(4) <= SYNTHESIZED_WIRE_49(3);
ELSE
	SFP12_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(4) = '1') THEN
	SFP12_Control(3) <= SYNTHESIZED_WIRE_49(4);
ELSE
	SFP12_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(5) = '1') THEN
	SFP12_Control(2) <= SYNTHESIZED_WIRE_49(5);
ELSE
	SFP12_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(6) = '1') THEN
	SFP12_Control(1) <= SYNTHESIZED_WIRE_49(6);
ELSE
	SFP12_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_49,SYNTHESIZED_WIRE_50)
BEGIN
if (SYNTHESIZED_WIRE_50(7) = '1') THEN
	SFP12_Control(0) <= SYNTHESIZED_WIRE_49(7);
ELSE
	SFP12_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(0) = '1') THEN
	SFP13_Control(7) <= SYNTHESIZED_WIRE_51(0);
ELSE
	SFP13_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(1) = '1') THEN
	SFP13_Control(6) <= SYNTHESIZED_WIRE_51(1);
ELSE
	SFP13_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(2) = '1') THEN
	SFP13_Control(5) <= SYNTHESIZED_WIRE_51(2);
ELSE
	SFP13_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(3) = '1') THEN
	SFP13_Control(4) <= SYNTHESIZED_WIRE_51(3);
ELSE
	SFP13_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(4) = '1') THEN
	SFP13_Control(3) <= SYNTHESIZED_WIRE_51(4);
ELSE
	SFP13_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(5) = '1') THEN
	SFP13_Control(2) <= SYNTHESIZED_WIRE_51(5);
ELSE
	SFP13_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(6) = '1') THEN
	SFP13_Control(1) <= SYNTHESIZED_WIRE_51(6);
ELSE
	SFP13_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_51,SYNTHESIZED_WIRE_52)
BEGIN
if (SYNTHESIZED_WIRE_52(7) = '1') THEN
	SFP13_Control(0) <= SYNTHESIZED_WIRE_51(7);
ELSE
	SFP13_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(0) = '1') THEN
	SFP14_Control(7) <= SYNTHESIZED_WIRE_53(0);
ELSE
	SFP14_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(1) = '1') THEN
	SFP14_Control(6) <= SYNTHESIZED_WIRE_53(1);
ELSE
	SFP14_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(2) = '1') THEN
	SFP14_Control(5) <= SYNTHESIZED_WIRE_53(2);
ELSE
	SFP14_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(3) = '1') THEN
	SFP14_Control(4) <= SYNTHESIZED_WIRE_53(3);
ELSE
	SFP14_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(4) = '1') THEN
	SFP14_Control(3) <= SYNTHESIZED_WIRE_53(4);
ELSE
	SFP14_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(5) = '1') THEN
	SFP14_Control(2) <= SYNTHESIZED_WIRE_53(5);
ELSE
	SFP14_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(6) = '1') THEN
	SFP14_Control(1) <= SYNTHESIZED_WIRE_53(6);
ELSE
	SFP14_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_53,SYNTHESIZED_WIRE_54)
BEGIN
if (SYNTHESIZED_WIRE_54(7) = '1') THEN
	SFP14_Control(0) <= SYNTHESIZED_WIRE_53(7);
ELSE
	SFP14_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(0) = '1') THEN
	SFP15_Control(7) <= SYNTHESIZED_WIRE_55(0);
ELSE
	SFP15_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(1) = '1') THEN
	SFP15_Control(6) <= SYNTHESIZED_WIRE_55(1);
ELSE
	SFP15_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(2) = '1') THEN
	SFP15_Control(5) <= SYNTHESIZED_WIRE_55(2);
ELSE
	SFP15_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(3) = '1') THEN
	SFP15_Control(4) <= SYNTHESIZED_WIRE_55(3);
ELSE
	SFP15_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(4) = '1') THEN
	SFP15_Control(3) <= SYNTHESIZED_WIRE_55(4);
ELSE
	SFP15_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(5) = '1') THEN
	SFP15_Control(2) <= SYNTHESIZED_WIRE_55(5);
ELSE
	SFP15_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(6) = '1') THEN
	SFP15_Control(1) <= SYNTHESIZED_WIRE_55(6);
ELSE
	SFP15_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_55,SYNTHESIZED_WIRE_56)
BEGIN
if (SYNTHESIZED_WIRE_56(7) = '1') THEN
	SFP15_Control(0) <= SYNTHESIZED_WIRE_55(7);
ELSE
	SFP15_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(0) = '1') THEN
	SFP16_Control(7) <= SYNTHESIZED_WIRE_57(0);
ELSE
	SFP16_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(1) = '1') THEN
	SFP16_Control(6) <= SYNTHESIZED_WIRE_57(1);
ELSE
	SFP16_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(2) = '1') THEN
	SFP16_Control(5) <= SYNTHESIZED_WIRE_57(2);
ELSE
	SFP16_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(3) = '1') THEN
	SFP16_Control(4) <= SYNTHESIZED_WIRE_57(3);
ELSE
	SFP16_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(4) = '1') THEN
	SFP16_Control(3) <= SYNTHESIZED_WIRE_57(4);
ELSE
	SFP16_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(5) = '1') THEN
	SFP16_Control(2) <= SYNTHESIZED_WIRE_57(5);
ELSE
	SFP16_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(6) = '1') THEN
	SFP16_Control(1) <= SYNTHESIZED_WIRE_57(6);
ELSE
	SFP16_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_57,SYNTHESIZED_WIRE_58)
BEGIN
if (SYNTHESIZED_WIRE_58(7) = '1') THEN
	SFP16_Control(0) <= SYNTHESIZED_WIRE_57(7);
ELSE
	SFP16_Control(0) <= 'Z';
END IF;
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(0) = '1') THEN
	SFP17_Control(7) <= SYNTHESIZED_WIRE_59(0);
ELSE
	SFP17_Control(7) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(1) = '1') THEN
	SFP17_Control(6) <= SYNTHESIZED_WIRE_59(1);
ELSE
	SFP17_Control(6) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(2) = '1') THEN
	SFP17_Control(5) <= SYNTHESIZED_WIRE_59(2);
ELSE
	SFP17_Control(5) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(3) = '1') THEN
	SFP17_Control(4) <= SYNTHESIZED_WIRE_59(3);
ELSE
	SFP17_Control(4) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(4) = '1') THEN
	SFP17_Control(3) <= SYNTHESIZED_WIRE_59(4);
ELSE
	SFP17_Control(3) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(5) = '1') THEN
	SFP17_Control(2) <= SYNTHESIZED_WIRE_59(5);
ELSE
	SFP17_Control(2) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(6) = '1') THEN
	SFP17_Control(1) <= SYNTHESIZED_WIRE_59(6);
ELSE
	SFP17_Control(1) <= 'Z';
END IF;
END PROCESS;

PROCESS(SYNTHESIZED_WIRE_59,SYNTHESIZED_WIRE_60)
BEGIN
if (SYNTHESIZED_WIRE_60(7) = '1') THEN
	SFP17_Control(0) <= SYNTHESIZED_WIRE_59(7);
ELSE
	SFP17_Control(0) <= 'Z';
END IF;
END PROCESS;


b2v_inst156 : pll_new
PORT MAP(refclk => CLOCKIN_4,
		 rst => reset_PLLs,
		 refclk1 => CLOCKIN_5,
		 extswitch => ClockSwitch_2);

04_Simu_Fiber <= ff_tx_data;



b2v_inst158 : register_set0
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_61,
		 in01 => SYNTHESIZED_WIRE_62,
		 in02 => SYNTHESIZED_WIRE_63,
		 in03 => SYNTHESIZED_WIRE_64,
		 in04 => SYNTHESIZED_WIRE_65,
		 in05 => SYNTHESIZED_WIRE_66,
		 in06 => SYNTHESIZED_WIRE_67,
		 in07 => SYNTHESIZED_WIRE_68,
		 in08 => SYNTHESIZED_WIRE_69,
		 in09 => SYNTHESIZED_WIRE_70,
		 out00 => SYNTHESIZED_WIRE_117,
		 out01 => SYNTHESIZED_WIRE_119,
		 out02 => SYNTHESIZED_WIRE_121,
		 out03 => SYNTHESIZED_WIRE_123,
		 out04 => SYNTHESIZED_WIRE_125,
		 out05 => SYNTHESIZED_WIRE_116,
		 out06 => SYNTHESIZED_WIRE_118,
		 out07 => SYNTHESIZED_WIRE_120,
		 out08 => SYNTHESIZED_WIRE_122,
		 out09 => SYNTHESIZED_WIRE_124);


b2v_inst16 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_242,
		 clock => vme_service_clock,
		 q => SYNTHESIZED_WIRE_84);


b2v_inst160 : register_set1
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_72,
		 in01 => SYNTHESIZED_WIRE_73,
		 in02 => SYNTHESIZED_WIRE_74,
		 in03 => SYNTHESIZED_WIRE_75,
		 out00 => SYNTHESIZED_WIRE_230,
		 out01 => SYNTHESIZED_WIRE_232,
		 out02 => SYNTHESIZED_WIRE_231,
		 out03 => SYNTHESIZED_WIRE_233);


b2v_inst161 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_00,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(0));


b2v_inst162 : register_set1
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_76,
		 in01 => SYNTHESIZED_WIRE_77,
		 in02 => SYNTHESIZED_WIRE_78,
		 in03 => SYNTHESIZED_WIRE_79,
		 out00 => SYNTHESIZED_WIRE_234,
		 out01 => SYNTHESIZED_WIRE_236,
		 out02 => SYNTHESIZED_WIRE_235,
		 out03 => SYNTHESIZED_WIRE_237);


b2v_inst163 : register_set1
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_80,
		 in01 => SYNTHESIZED_WIRE_81,
		 in02 => SYNTHESIZED_WIRE_82,
		 in03 => SYNTHESIZED_WIRE_83,
		 out00 => SYNTHESIZED_WIRE_3,
		 out01 => SYNTHESIZED_WIRE_5,
		 out02 => SYNTHESIZED_WIRE_4,
		 out03 => SYNTHESIZED_WIRE_6);


b2v_inst164 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(2),
		 pulse => start_read_pulse(2));


b2v_inst165 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_01,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(1));


b2v_inst166 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_02,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(2));


b2v_inst167 : l1a_checker_part3
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 check_in_progress => check_in_progress,
		 L1A_00 => L1A_00,
		 L1A_01 => L1A_01,
		 L1A_02 => L1A_02,
		 L1A_03 => L1A_03,
		 L1A_04 => L1A_04,
		 L1A_05 => L1A_05,
		 L1A_06 => L1A_06,
		 L1A_07 => L1A_07,
		 L1A_08 => L1A_08,
		 L1A_09 => L1A_09,
		 L1A_10 => L1A_10,
		 L1A_11 => L1A_11,
		 L1A_12 => L1A_12,
		 L1A_13 => L1A_13,
		 L1A_14 => L1A_14,
		 L1A_15 => L1A_15,
		 start_check => start_check,
		 trig_in => L1A_trig_dleayed,
		 L1A_align => L1A_align,
		 one_adc_finish_check => one_adc_finish_check,
		 error => L1A_check_error);


b2v_inst168 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_03,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(3));


b2v_inst169 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_04,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(4));


b2v_inst17 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_84,
		 clock => vme_service_clock,
		 q => _dalayed_modsel_in);

status_bus103(15 DOWNTO 0) <= evt_tx;


status_bus104(15 DOWNTO 0) <= evt_rx_00;


status_bus104(31 DOWNTO 16) <= evt_rx_01;


status_bus105(15 DOWNTO 0) <= evt_rx_02;



b2v_inst174 : vme_ram
PORT MAP(wren => vme_ram_wr_ena,
		 rden => test_mode,
		 wrclock => The_clock,
		 rdclock => vmeas,
		 data => data_mem,
		 rdaddress => addr(13 DOWNTO 2),
		 wraddress => vme_ram_wr_addr,
		 q => rd_data1(15 DOWNTO 0));


b2v_inst175 : delta_trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => trig_delta,
		 delay => trig_delay_delta,
		 trig_out => SYNTHESIZED_WIRE_106);

05_Simu_Fiber <= ff_tx_data;


06_Simu_Fiber <= ff_tx_data;


rd_data5(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data5(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);



b2v_inst18 : show_counter
PORT MAP(clock => vme_service_clock);

rd_data6(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data6(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data7(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data7(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data8(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data8(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);




rd_data2(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data2(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);



b2v_inst19 : counter7
PORT MAP(clock => vme_service_clock,
		 cnt_en => SYNTHESIZED_WIRE_95,
		 aclr => SYNTHESIZED_WIRE_96,
		 q => counter7_out);

rd_data3(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data3(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data4(15 DOWNTO 0) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data4(31 DOWNTO 16) <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


rd_data9 <= (SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243 & SYNTHESIZED_WIRE_243);


status_bus105(31 DOWNTO 16) <= evt_rx_03;



b2v_inst196 : l1a_discriminator
PORT MAP(clk => The_clock,
		 in => TrigIn,
		 L1A => SYNTHESIZED_WIRE_102,
		 PL1A => SYNTHESIZED_WIRE_103,
		 PS => SYNTHESIZED_WIRE_104,
		 ALIGN => SYNTHESIZED_WIRE_105,
		 DELTA => trig_delta);


b2v_inst197 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(1),
		 rd_req => L1A_rd_req_01,
		 rd_addr => L1A_rd_addr_01);


b2v_inst198 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(2),
		 rd_req => L1A_rd_req_02,
		 rd_addr => L1A_rd_addr_02);


b2v_inst199 : trig_counter
PORT MAP(clk => The_clock,
		 rst => reset,
		 L1A => SYNTHESIZED_WIRE_102,
		 PL1A => SYNTHESIZED_WIRE_103,
		 PS => SYNTHESIZED_WIRE_104,
		 ALIGN => SYNTHESIZED_WIRE_105,
		 DELTA => trig_delta);


b2v_inst2 : vme_interface
PORT MAP(_lword => _lword,
		 _vme_write => _vme_write,
		 _as => _as,
		 _iack => _iack,
		 _delayed_modsel => _dalayed_modsel_in,
		 _delayed_ds => _dalayed_ds_in,
		 _dtack => _dtack,
		 _berr => _berr,
		 _ds => _ds,
		 _ga => _ga,
		 address => address,
		 am => am,
		 fromtapdel => fromdel(5 DOWNTO 1),
		 _modsel => SYNTHESIZED_WIRE_242,
		 _vme_data_str => SYNTHESIZED_WIRE_29,
		 vme_write => vmewrite,
		 dir_trans => dir_trans,
		 totapdel => SYNTHESIZED_WIRE_144,
		 vmeas => vmeas,
		 vmeds => vmeds,
		 vme_address => addr);


b2v_inst20 : rldramii
PORT MAP(pll_ref_clk => extmem_pll_refclk,
		 global_reset_n => reset,
		 oct_rzqin => oct_rzqin,
		 mem_dq => mem_dq,
		 mem_qk => mem_qk,
		 mem_qk_n => mem_qk_n,
		 mem_ck => mem_ck,
		 mem_ck_n => mem_ck_n,
		 mem_cs_n => mem_cs_n(0),
		 mem_dm => mem_dm(0),
		 mem_ref_n => mem_ref_n,
		 mem_we_n => mem_we_n,
		 mem_a => mem_a(18 DOWNTO 0),
		 mem_ba => mem_ba,
		 mem_dk => mem_dk,
		 mem_dk_n => mem_dk_n);

status_bus106(15 DOWNTO 0) <= evt_rx_04;



b2v_inst201 : vme_ram_write
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => SYNTHESIZED_WIRE_106,
		 wr_ena => vme_ram_wr_ena,
		 wr_addr => vme_ram_wr_addr);


b2v_inst202 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_01,
		 start_read_pulse => start_read_pulse(1),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_01,
		 ADC_slot => adc_slot_01,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_01,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_01,
		 dval_b => dval_port_b_01,
		 data_wr_ena_falledge => din(1),
		 finish_rd => finish_rd_01,
		 err => adc_err01,
		 L1A_out => L1A_01,
		 q_a => data_port_a_01,
		 q_b => data_port_b_01,
		 usage_a => mem_usage_a_01,
		 usage_b => mem_usage_b_01);


b2v_inst203 : live_cnt
PORT MAP(clk => The_clock,
		 rst => reset,
		 live => LIVE,
		 LIVE_rst => LIVE_rst,
		 cnt => spill_id);


b2v_inst204 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(3),
		 rd_req => L1A_rd_req_03,
		 rd_addr => L1A_rd_addr_03);


b2v_inst205 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(0),
		 rd_req => L1A_rd_req_00,
		 rd_addr => L1A_rd_addr_00);

07_Simu_Fiber <= ff_tx_data;



b2v_inst207 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(3),
		 pulse => start_read_pulse(3));


b2v_inst208 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(5),
		 rd_req => L1A_rd_req_05,
		 rd_addr => L1A_rd_addr_05);


b2v_inst21 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(12),
		 data_rx => 12_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(12),
		 send_err => send_err(12),
		 data_out => SYNTHESIZED_WIRE_76,
		 datak => SYNTHESIZED_WIRE_77);


b2v_inst210 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_02,
		 start_read_pulse => start_read_pulse(2),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_02,
		 ADC_slot => adc_slot_02,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_02,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_02,
		 dval_b => dval_port_b_02,
		 data_wr_ena_falledge => din(2),
		 finish_rd => finish_rd_02,
		 err => adc_err02,
		 L1A_out => L1A_02,
		 q_a => data_port_a_02,
		 q_b => data_port_b_02,
		 usage_a => mem_usage_a_02,
		 usage_b => mem_usage_b_02);


b2v_inst211 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_03,
		 start_read_pulse => start_read_pulse(3),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_03,
		 ADC_slot => adc_slot_03,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_03,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_03,
		 dval_b => dval_port_b_03,
		 data_wr_ena_falledge => din(3),
		 finish_rd => finish_rd_03,
		 err => adc_err03,
		 L1A_out => L1A_03,
		 q_a => data_port_a_03,
		 q_b => data_port_b_03,
		 usage_a => mem_usage_a_03,
		 usage_b => mem_usage_b_03);


b2v_inst212 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_00,
		 start_read_pulse => start_read_pulse(0),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_00,
		 ADC_slot => adc_slot_00,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_00,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_00,
		 dval_b => dval_port_b_00,
		 data_wr_ena_falledge => din(0),
		 finish_rd => finish_rd_00,
		 err => adc_err00,
		 L1A_out => L1A_00,
		 q_a => data_port_a_00,
		 q_b => data_port_b_00,
		 usage_a => mem_usage_a_00,
		 usage_b => mem_usage_b_00);


SYNTHESIZED_WIRE_110 <= finish_rd_00 OR finish_rd_02 OR finish_rd_03 OR finish_rd_01;


b2v_inst214 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(6),
		 rd_req => L1A_rd_req_06,
		 rd_addr => L1A_rd_addr_06);


b2v_inst215 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(7),
		 rd_req => L1A_rd_req_07,
		 rd_addr => L1A_rd_addr_07);


b2v_inst216 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(4),
		 rd_req => L1A_rd_req_04,
		 rd_addr => L1A_rd_addr_04);


b2v_inst217 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(9),
		 rd_req => L1A_rd_req_09,
		 rd_addr => L1A_rd_addr_09);


b2v_inst218 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(10),
		 rd_req => L1A_rd_req_10,
		 rd_addr => L1A_rd_addr_10);


b2v_inst219 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(11),
		 rd_req => L1A_rd_req_11,
		 rd_addr => L1A_rd_addr_11);



b2v_inst220 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(8),
		 rd_req => L1A_rd_req_08,
		 rd_addr => L1A_rd_addr_08);


b2v_inst221 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(13),
		 rd_req => L1A_rd_req_13,
		 rd_addr => L1A_rd_addr_13);


b2v_inst222 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(14),
		 rd_req => L1A_rd_req_14,
		 rd_addr => L1A_rd_addr_14);


b2v_inst223 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(15),
		 rd_req => L1A_rd_req_15,
		 rd_addr => L1A_rd_addr_15);


b2v_inst224 : l1a_checker_part2
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 start_check => start_check(12),
		 rd_req => L1A_rd_req_12,
		 rd_addr => L1A_rd_addr_12);


b2v_inst225 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(4),
		 pulse => start_read_pulse(4));


b2v_inst226 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(5),
		 pulse => start_read_pulse(5));


b2v_inst227 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(6),
		 pulse => start_read_pulse(6));


b2v_inst228 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(7),
		 pulse => start_read_pulse(7));


b2v_inst229 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(8),
		 pulse => start_read_pulse(8));


SYNTHESIZED_WIRE_96 <= NOT(SYNTHESIZED_WIRE_242);



b2v_inst230 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(9),
		 pulse => start_read_pulse(9));


b2v_inst231 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(10),
		 pulse => start_read_pulse(10));


b2v_inst232 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(11),
		 pulse => start_read_pulse(11));


b2v_inst233 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(12),
		 pulse => start_read_pulse(12));


b2v_inst234 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(13),
		 pulse => start_read_pulse(13));


b2v_inst235 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(14),
		 pulse => start_read_pulse(14));


b2v_inst236 : pulse_generator
PORT MAP(clock => The_clock,
		 signal => start_read(15),
		 pulse => start_read_pulse(15));


b2v_inst237 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_09,
		 start_read_pulse => start_read_pulse(9),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_09,
		 ADC_slot => adc_slot_09,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_09,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_09,
		 dval_b => dval_port_b_09,
		 data_wr_ena_falledge => din(9),
		 finish_rd => finish_rd_09,
		 err => adc_err09,
		 L1A_out => L1A_09,
		 q_a => data_port_a_09,
		 q_b => data_port_b_09,
		 usage_a => mem_usage_a_09,
		 usage_b => mem_usage_b_09);


b2v_inst238 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_10,
		 start_read_pulse => start_read_pulse(10),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_10,
		 ADC_slot => adc_slot_10,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_10,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_10,
		 dval_b => dval_port_b_10,
		 data_wr_ena_falledge => din(10),
		 finish_rd => finish_rd_10,
		 err => adc_err10,
		 L1A_out => L1A_10,
		 q_a => data_port_a_10,
		 q_b => data_port_b_10,
		 usage_a => mem_usage_a_10,
		 usage_b => mem_usage_b_10);


b2v_inst239 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_11,
		 start_read_pulse => start_read_pulse(11),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_11,
		 ADC_slot => adc_slot_11,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_11,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_11,
		 dval_b => dval_port_b_11,
		 data_wr_ena_falledge => din(11),
		 finish_rd => finish_rd_11,
		 err => adc_err11,
		 L1A_out => L1A_11,
		 q_a => data_port_a_11,
		 q_b => data_port_b_11,
		 usage_a => mem_usage_a_11,
		 usage_b => mem_usage_b_11);


b2v_inst24 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(13),
		 data_rx => 13_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(13),
		 send_err => send_err(13),
		 data_out => SYNTHESIZED_WIRE_78,
		 datak => SYNTHESIZED_WIRE_79);


b2v_inst240 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_08,
		 start_read_pulse => start_read_pulse(8),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_08,
		 ADC_slot => adc_slot_08,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_08,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_08,
		 dval_b => dval_port_b_08,
		 data_wr_ena_falledge => din(8),
		 finish_rd => finish_rd_08,
		 err => adc_err08,
		 L1A_out => L1A_08,
		 q_a => data_port_a_08,
		 q_b => data_port_b_08,
		 usage_a => mem_usage_a_08,
		 usage_b => mem_usage_b_08);


b2v_inst241 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_05,
		 start_read_pulse => start_read_pulse(5),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_05,
		 ADC_slot => adc_slot_05,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_05,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_05,
		 dval_b => dval_port_b_05,
		 data_wr_ena_falledge => din(5),
		 finish_rd => finish_rd_05,
		 err => adc_err05,
		 L1A_out => L1A_05,
		 q_a => data_port_a_05,
		 q_b => data_port_b_05,
		 usage_a => mem_usage_a_05,
		 usage_b => mem_usage_b_05);


b2v_inst242 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_06,
		 start_read_pulse => start_read_pulse(6),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_06,
		 ADC_slot => adc_slot_06,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_06,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_06,
		 dval_b => dval_port_b_06,
		 data_wr_ena_falledge => din(6),
		 finish_rd => finish_rd_06,
		 err => adc_err06,
		 L1A_out => L1A_06,
		 q_a => data_port_a_06,
		 q_b => data_port_b_06,
		 usage_a => mem_usage_a_06,
		 usage_b => mem_usage_b_06);


b2v_inst243 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_07,
		 start_read_pulse => start_read_pulse(7),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_07,
		 ADC_slot => adc_slot_07,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_07,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_07,
		 dval_b => dval_port_b_07,
		 data_wr_ena_falledge => din(7),
		 finish_rd => finish_rd_07,
		 err => adc_err07,
		 L1A_out => L1A_07,
		 q_a => data_port_a_07,
		 q_b => data_port_b_07,
		 usage_a => mem_usage_a_07,
		 usage_b => mem_usage_b_07);


b2v_inst244 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_04,
		 start_read_pulse => start_read_pulse(4),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_04,
		 ADC_slot => adc_slot_04,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_04,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_04,
		 dval_b => dval_port_b_04,
		 data_wr_ena_falledge => din(4),
		 finish_rd => finish_rd_04,
		 err => adc_err04,
		 L1A_out => L1A_04,
		 q_a => data_port_a_04,
		 q_b => data_port_b_04,
		 usage_a => mem_usage_a_04,
		 usage_b => mem_usage_b_04);


b2v_inst245 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_13,
		 start_read_pulse => start_read_pulse(13),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_13,
		 ADC_slot => adc_slot_13,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_13,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_13,
		 dval_b => dval_port_b_13,
		 data_wr_ena_falledge => din(13),
		 finish_rd => finish_rd_13,
		 err => adc_err13,
		 L1A_out => L1A_13,
		 q_a => data_port_a_13,
		 q_b => data_port_b_13,
		 usage_a => mem_usage_a_13,
		 usage_b => mem_usage_b_13);


b2v_inst246 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_14,
		 start_read_pulse => start_read_pulse(14),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_14,
		 ADC_slot => adc_slot_14,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_14,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_14,
		 dval_b => dval_port_b_14,
		 data_wr_ena_falledge => din(14),
		 finish_rd => finish_rd_14,
		 err => adc_err14,
		 L1A_out => L1A_14,
		 q_a => data_port_a_14,
		 q_b => data_port_b_14,
		 usage_a => mem_usage_a_14,
		 usage_b => mem_usage_b_14);


b2v_inst247 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_15,
		 start_read_pulse => start_read_pulse(15),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_15,
		 ADC_slot => adc_slot_15,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_15,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_15,
		 dval_b => dval_port_b_15,
		 data_wr_ena_falledge => din(15),
		 finish_rd => finish_rd_15,
		 err => adc_err15,
		 L1A_out => L1A_15,
		 q_a => data_port_a_15,
		 q_b => data_port_b_15,
		 usage_a => mem_usage_a_15,
		 usage_b => mem_usage_b_15);


b2v_inst248 : adc_manager
PORT MAP(The_clock => The_clock,
		 reset => logic_reset,
		 L1A_rd_req => L1A_rd_req_12,
		 start_read_pulse => start_read_pulse(12),
		 use_loss => use_loss,
		 adc_data_in => adc_data_in_12,
		 ADC_slot => adc_slot_12,
		 FIFO_in_dly => FIFO_in_dly,
		 L1A_rd_addr => L1A_rd_addr_12,
		 mem_upper_limit => mem_upper_limit,
		 spill_id => spill_id,
		 dval_a => dval_port_a_12,
		 dval_b => dval_port_b_12,
		 data_wr_ena_falledge => din(12),
		 finish_rd => finish_rd_12,
		 err => adc_err12,
		 L1A_out => L1A_12,
		 q_a => data_port_a_12,
		 q_b => data_port_b_12,
		 usage_a => mem_usage_a_12,
		 usage_b => mem_usage_b_12);


SYNTHESIZED_WIRE_113 <= finish_rd_04 OR finish_rd_06 OR finish_rd_07 OR finish_rd_05;


SYNTHESIZED_WIRE_95 <= NOT(counter7_out(23));



SYNTHESIZED_WIRE_111 <= finish_rd_08 OR finish_rd_10 OR finish_rd_11 OR finish_rd_09;


SYNTHESIZED_WIRE_112 <= finish_rd_12 OR finish_rd_14 OR finish_rd_15 OR finish_rd_13;


one_adc_finish_read <= SYNTHESIZED_WIRE_110 OR SYNTHESIZED_WIRE_111 OR SYNTHESIZED_WIRE_112 OR SYNTHESIZED_WIRE_113;


b2v_inst253 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_00,
		 max_mem_usage => max_mem_a_00);

status_bus106(31 DOWNTO 16) <= evt_rx_05;



b2v_inst255 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_00,
		 max_mem_usage => max_mem_b_00);

08_Simu_Fiber <= ff_tx_data;


status_bus114(0) <= output_check_err;


status_bus113(31 DOWNTO 16) <= total_packet_sent;



b2v_inst259 : trigger_counter
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 trigger => trigger_beam,
		 counter => trigger_received);


b2v_inst26 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(14),
		 data_rx => 14_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(14),
		 send_err => send_err(14),
		 data_out => SYNTHESIZED_WIRE_80,
		 datak => SYNTHESIZED_WIRE_81);

09_Simu_Fiber <= ff_tx_data;


10_Simu_Fiber <= ff_tx_data;


11_Simu_Fiber <= ff_tx_data;


12_Simu_Fiber <= ff_tx_data;


13_Simu_Fiber <= ff_tx_data;


14_Simu_Fiber <= ff_tx_data;


15_Simu_Fiber <= ff_tx_data;


status_bus112(31 DOWNTO 16) <= max_mem_b_00;


status_bus112(15 DOWNTO 0) <= max_mem_a_00;



b2v_inst269 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_01,
		 max_mem_usage => max_mem_a_01);


b2v_inst27 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(15),
		 data_rx => 15_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(15),
		 send_err => send_err(15),
		 data_out => SYNTHESIZED_WIRE_82,
		 datak => SYNTHESIZED_WIRE_83);


b2v_inst270 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_01,
		 max_mem_usage => max_mem_b_01);


b2v_inst271 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_02,
		 max_mem_usage => max_mem_a_02);


b2v_inst272 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_05,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(5));


b2v_inst273 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_06,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(6));


b2v_inst274 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_07,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(7));

status_bus107(15 DOWNTO 0) <= evt_rx_06;



b2v_inst276 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_08,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(8));


b2v_inst277 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_09,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(9));


b2v_inst278 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_10,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(10));


b2v_inst279 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_11,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(11));



b2v_inst280 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_12,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(12));


b2v_inst281 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_13,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(13));


b2v_inst282 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_14,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(14));


b2v_inst283 : trig_delay
PORT MAP(clk => The_clock,
		 rst => logic_reset,
		 trig_in => L1A_rd_req_15,
		 delay => L1A_00_delay,
		 trig_out => L1A_trig_dleayed(15));

status_bus113(15 DOWNTO 0) <= total_packet_sent_LIVE;




b2v_inst290 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 00_Simu_Fiber,
		 data1x => 00_OL_in,
		 result => adc_data_in_00);


b2v_inst291 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 01_Simu_Fiber,
		 data1x => 01_OL_in,
		 result => adc_data_in_01);


b2v_inst292 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask_select,
		 data0x => 00_Fiber_in,
		 data1x => 01_Fiber_in,
		 result => standard_Fiber_in);


b2v_inst294 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(1),
		 data0x => 01_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 01_OL_in);


b2v_inst295 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(0),
		 data0x => 00_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 00_OL_in);


b2v_inst297 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(5),
		 data0x => 05_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 05_OL_in);


b2v_inst298 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(4),
		 data0x => 04_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 04_OL_in);


b2v_inst299 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 04_Simu_Fiber,
		 data1x => 04_OL_in,
		 result => adc_data_in_04);


b2v_inst3 : sfp_gxblock_x5new
PORT MAP(pll_ref_clk => SFPA_pll_ref_clk,
		 phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 a_txdatak => SYNTHESIZED_WIRE_116,
		 ain => SYNTHESIZED_WIRE_117,
		 b_txdatak => SYNTHESIZED_WIRE_118,
		 bin => SYNTHESIZED_WIRE_119,
		 c_txdatak => SYNTHESIZED_WIRE_120,
		 cin => SYNTHESIZED_WIRE_121,
		 d_txdatak => SYNTHESIZED_WIRE_122,
		 din => SYNTHESIZED_WIRE_123,
		 e_txdatak => SYNTHESIZED_WIRE_124,
		 ein => SYNTHESIZED_WIRE_125,
		 SFP_rx_in => SFPA_rx_in,
		 a => 09_Fiber_in,
		 b => 08_Fiber_in,
		 c => 07_Fiber_in,
		 d => 06_Fiber_in,
		 e => 05_Fiber_in,
		 SFP_Out => SFPA_tx_Out);


b2v_inst30 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_126,
		 clock => fanout_clock,
		 q => SYNTHESIZED_WIRE_128);


b2v_inst301 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(9),
		 data0x => 09_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 09_OL_in);


b2v_inst302 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(8),
		 data0x => 08_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 08_OL_in);


b2v_inst304 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(13),
		 data0x => 13_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 13_OL_in);


b2v_inst305 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(12),
		 data0x => 12_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 12_OL_in);

AUX_OUT1 <= TrigIn;



b2v_inst310 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 05_Simu_Fiber,
		 data1x => 05_OL_in,
		 result => adc_data_in_05);

status_bus114(17 DOWNTO 4) <= L1A_00;


input_switch <= m_register_22(0);



b2v_inst313 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 02_Simu_Fiber,
		 data1x => 02_OL_in,
		 result => adc_data_in_02);


b2v_inst314 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 03_Simu_Fiber,
		 data1x => 03_OL_in,
		 result => adc_data_in_03);


b2v_inst315 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 06_Simu_Fiber,
		 data1x => 06_OL_in,
		 result => adc_data_in_06);


b2v_inst316 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 07_Simu_Fiber,
		 data1x => 07_OL_in,
		 result => adc_data_in_07);


b2v_inst317 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(2),
		 data0x => 02_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 02_OL_in);


b2v_inst318 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 08_Simu_Fiber,
		 data1x => 08_OL_in,
		 result => adc_data_in_08);


b2v_inst319 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 09_Simu_Fiber,
		 data1x => 09_OL_in,
		 result => adc_data_in_09);

AUX_OUT2 <= TrigIn;



b2v_inst320 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 10_Simu_Fiber,
		 data1x => 10_OL_in,
		 result => adc_data_in_10);


b2v_inst321 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 11_Simu_Fiber,
		 data1x => 11_OL_in,
		 result => adc_data_in_11);


b2v_inst322 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 12_Simu_Fiber,
		 data1x => 12_OL_in,
		 result => adc_data_in_12);


b2v_inst323 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 13_Simu_Fiber,
		 data1x => 13_OL_in,
		 result => adc_data_in_13);


b2v_inst324 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 14_Simu_Fiber,
		 data1x => 14_OL_in,
		 result => adc_data_in_14);


b2v_inst325 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => data_ena,
		 data0x => 15_Simu_Fiber,
		 data1x => 15_OL_in,
		 result => adc_data_in_15);


b2v_inst326 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(3),
		 data0x => 03_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 03_OL_in);

status_bus107(31 DOWNTO 16) <= evt_rx_07;



b2v_inst33 : ol_controller_32
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(16),
		 data_rx => 16_Fiber_in,
		 data_tx => data_out,
		 error => TLK_Err(16),
		 send_err => send_err(16),
		 data_out => SYNTHESIZED_WIRE_164,
		 datak => SYNTHESIZED_WIRE_165);

total_trigger <= m_register_29(13 DOWNTO 0);


mem_upper_limit <= m_register_31(14 DOWNTO 0);



b2v_inst333 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(6),
		 data0x => 06_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 06_OL_in);

energy_size <= m_register_30(15 DOWNTO 0);



b2v_inst335 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(7),
		 data0x => 07_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 07_OL_in);


b2v_inst336 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(10),
		 data0x => 10_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 10_OL_in);


b2v_inst337 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_127,
		 clock => fanout_clock,
		 q => SYNTHESIZED_WIRE_126);


b2v_inst338 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(11),
		 data0x => 11_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 11_OL_in);


b2v_inst339 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(14),
		 data0x => 14_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 14_OL_in);

test_mode <= vme_halt;



b2v_inst340 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_128,
		 clock => fanout_clock,
		 q => Systemout);


b2v_inst341 : mux2_16b
PORT MAP(clock => The_clock,
		 sel => mask(15),
		 data0x => 15_Fiber_in,
		 data1x => standard_Fiber_in,
		 result => 15_OL_in);

mask_select <= m_register_32(16);


mask <= m_register_32(15 DOWNTO 0);



b2v_inst344 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_02,
		 max_mem_usage => max_mem_b_02);


b2v_inst345 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_03,
		 max_mem_usage => max_mem_a_03);


spy_mem_mux <= m_register_33(3 DOWNTO 0);


adc_slot_00 <= m_register_40(4 DOWNTO 0);


adc_slot_01 <= m_register_40(9 DOWNTO 5);


SYNTHESIZED_WIRE_243 <= SYNTHESIZED_WIRE_129;


adc_slot_02 <= m_register_40(14 DOWNTO 10);


adc_slot_03 <= m_register_40(19 DOWNTO 15);


adc_slot_04 <= m_register_40(24 DOWNTO 20);


adc_slot_05 <= m_register_40(29 DOWNTO 25);


adc_slot_06 <= m_register_41(4 DOWNTO 0);


adc_slot_07 <= m_register_41(9 DOWNTO 5);


adc_slot_08 <= m_register_41(14 DOWNTO 10);


adc_slot_09 <= m_register_41(19 DOWNTO 15);


adc_slot_10 <= m_register_41(24 DOWNTO 20);


adc_slot_11 <= m_register_41(29 DOWNTO 25);



adc_slot_12 <= m_register_42(4 DOWNTO 0);


adc_slot_13 <= m_register_42(9 DOWNTO 5);


adc_slot_14 <= m_register_42(14 DOWNTO 10);


adc_slot_15 <= m_register_42(19 DOWNTO 15);


use_loss <= m_register_33(4);




b2v_inst37 : tx_manager
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 L1A_Align => L1A_align,
		 need_read => need_read,
		 one_adc_finish_read => one_adc_finish_read,
		 error => event_tx_err,
		 evt_tx => evt_tx,
		 start_read => start_read);



led_0 <= NOT(counter_show(20));


status_bus108(15 DOWNTO 0) <= evt_rx_08;


status_bus108(31 DOWNTO 16) <= evt_rx_09;


status_bus109(15 DOWNTO 0) <= evt_rx_10;


status_bus109(31 DOWNTO 16) <= evt_rx_11;


status_bus110(15 DOWNTO 0) <= evt_rx_12;


status_bus110(31 DOWNTO 16) <= evt_rx_13;


status_bus111(15 DOWNTO 0) <= evt_rx_14;


status_bus111(31 DOWNTO 16) <= evt_rx_15;


status_bus115(15 DOWNTO 0) <= L1A_check_error;


status_bus116(17 DOWNTO 0) <= TLK_err_output;



b2v_inst4 : sfp_gxblock_x5new
PORT MAP(pll_ref_clk => SFPB_pll_ref_clk,
		 phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 a_txdatak => SYNTHESIZED_WIRE_130,
		 ain => SYNTHESIZED_WIRE_131,
		 b_txdatak => SYNTHESIZED_WIRE_132,
		 bin => SYNTHESIZED_WIRE_133,
		 c_txdatak => SYNTHESIZED_WIRE_134,
		 cin => SYNTHESIZED_WIRE_135,
		 d_txdatak => SYNTHESIZED_WIRE_136,
		 din => SYNTHESIZED_WIRE_137,
		 e_txdatak => SYNTHESIZED_WIRE_138,
		 ein => SYNTHESIZED_WIRE_139,
		 SFP_rx_in => SFPB_rx_in,
		 a => 04_Fiber_in,
		 b => 03_Fiber_in,
		 c => 02_Fiber_in,
		 d => 01_Fiber_in,
		 e => 00_Fiber_in,
		 SFP_Out => SFPB_tx_Out);

ClockSwitchControl_0 <= SYNTHESIZED_WIRE_140;


status_bus119(0) <= LIVE;


status_bus117(31 DOWNTO 16) <= adc_packet_send;


status_bus117(15 DOWNTO 0) <= trigger_received;


status_bus115(31 DOWNTO 16) <= trigger_received;


status_bus118(8 DOWNTO 0) <= spill_id;


status_bus118(29 DOWNTO 16) <= trigger_gen;


status_bus118(31) <= adc_data_gen_err;


status_bus119(17 DOWNTO 4) <= current_L1A;


status_bus116(19 DOWNTO 18) <= L1A_check_err_part1;


status_bus116(21 DOWNTO 20) <= event_tx_err;


rd_data1(31 DOWNTO 16) <= SYNTHESIZED_WIRE_141;



b2v_inst410 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_03,
		 max_mem_usage => max_mem_b_03);


b2v_inst411 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_04,
		 max_mem_usage => max_mem_a_04);


b2v_inst412 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_04,
		 max_mem_usage => max_mem_b_04);


b2v_inst413 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_05,
		 max_mem_usage => max_mem_a_05);


b2v_inst414 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_05,
		 max_mem_usage => max_mem_b_05);


b2v_inst415 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_06,
		 max_mem_usage => max_mem_a_06);


b2v_inst416 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_06,
		 max_mem_usage => max_mem_b_06);


b2v_inst417 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_07,
		 max_mem_usage => max_mem_a_07);


b2v_inst418 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_07,
		 max_mem_usage => max_mem_b_07);


b2v_inst419 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_08,
		 max_mem_usage => max_mem_a_08);


b2v_inst42 : signal_valid
PORT MAP(clk => The_clock,
		 reset => reset,
		 tlk_err => SYNTHESIZED_WIRE_142,
		 LIVE => LIVE,
		 dval => adc_data_valid);


b2v_inst420 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_08,
		 max_mem_usage => max_mem_b_08);


b2v_inst421 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_09,
		 max_mem_usage => max_mem_a_09);


b2v_inst422 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_09,
		 max_mem_usage => max_mem_b_09);


b2v_inst423 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_10,
		 max_mem_usage => max_mem_a_10);


b2v_inst424 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_10,
		 max_mem_usage => max_mem_b_10);


b2v_inst425 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_11,
		 max_mem_usage => max_mem_a_11);


b2v_inst426 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_11,
		 max_mem_usage => max_mem_b_11);


b2v_inst427 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_12,
		 max_mem_usage => max_mem_a_12);


b2v_inst428 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_12,
		 max_mem_usage => max_mem_b_12);

status_bus120(31 DOWNTO 16) <= max_mem_b_01;



status_bus120(15 DOWNTO 0) <= max_mem_a_01;


status_bus121(31 DOWNTO 16) <= max_mem_b_02;


status_bus121(15 DOWNTO 0) <= max_mem_a_02;


status_bus122(31 DOWNTO 16) <= max_mem_b_03;


status_bus122(15 DOWNTO 0) <= max_mem_a_03;


status_bus123(31 DOWNTO 16) <= max_mem_b_04;


status_bus123(15 DOWNTO 0) <= max_mem_a_04;


status_bus124(31 DOWNTO 16) <= max_mem_b_05;


status_bus124(15 DOWNTO 0) <= max_mem_a_05;


status_bus125(31 DOWNTO 16) <= max_mem_b_06;


ClockSwitchControl_1 <= SYNTHESIZED_WIRE_143;


status_bus125(15 DOWNTO 0) <= max_mem_a_06;


status_bus126(31 DOWNTO 16) <= max_mem_b_07;


status_bus126(15 DOWNTO 0) <= max_mem_a_07;


status_bus127(31 DOWNTO 16) <= max_mem_b_08;


status_bus127(15 DOWNTO 0) <= max_mem_a_08;


status_bus128(31 DOWNTO 16) <= max_mem_b_09;


status_bus128(15 DOWNTO 0) <= max_mem_a_09;


status_bus129(31 DOWNTO 16) <= max_mem_b_10;


status_bus129(15 DOWNTO 0) <= max_mem_a_10;


status_bus130(31 DOWNTO 16) <= max_mem_b_11;



b2v_inst45 : tapdel_10
PORT MAP(in => SYNTHESIZED_WIRE_144,
		 clk => vme_service_clock,
		 out => fromdel);

status_bus130(15 DOWNTO 0) <= max_mem_a_11;


status_bus131(31 DOWNTO 16) <= max_mem_b_12;


status_bus131(15 DOWNTO 0) <= max_mem_a_12;


status_bus132(31 DOWNTO 16) <= max_mem_b_13;


status_bus132(15 DOWNTO 0) <= max_mem_a_13;


status_bus133(31 DOWNTO 16) <= max_mem_b_14;


status_bus133(15 DOWNTO 0) <= max_mem_a_14;


status_bus134(31 DOWNTO 16) <= max_mem_b_15;


status_bus134(15 DOWNTO 0) <= max_mem_a_15;


status_bus135(13 DOWNTO 7) <= adc_err01;



status_bus135(6 DOWNTO 0) <= adc_err00;


status_bus135(27 DOWNTO 21) <= adc_err03;


status_bus135(20 DOWNTO 14) <= adc_err02;


status_bus137(13 DOWNTO 7) <= adc_err09;


status_bus136(13 DOWNTO 7) <= adc_err05;


status_bus137(6 DOWNTO 0) <= adc_err08;


status_bus137(27 DOWNTO 21) <= adc_err11;


status_bus137(20 DOWNTO 14) <= adc_err10;


status_bus138(13 DOWNTO 7) <= adc_err13;


AUX_OUT3 <= TrigIn;



b2v_inst475 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_13,
		 max_mem_usage => max_mem_a_13);


b2v_inst476 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_13,
		 max_mem_usage => max_mem_b_13);


b2v_inst477 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_14,
		 max_mem_usage => max_mem_a_14);


b2v_inst478 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_14,
		 max_mem_usage => max_mem_b_14);


b2v_inst479 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_a_15,
		 max_mem_usage => max_mem_a_15);


b2v_inst48 : sfp_gxblock_6g
PORT MAP(phy_mgmt_read => vme_register_2(0),
		 phy_mgmt_write => vme_register_2(1),
		 SFP_rx_in_0 => SFP_rx_in7,
		 pll_ref_clk => SFP_pll_ref_clk4,
		 SFP_rx_in_1 => SFP_rx_in8,
		 clk => The_clock,
		 phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 phy_mgmt_addr => vme_register_1(8 DOWNTO 0),
		 phy_mgmt_writedata => vme_register_3,
		 SFP0_tx_parallel_data => SYNTHESIZED_WIRE_145,
		 SFP1_tx_parallel_data => SYNTHESIZED_WIRE_146,
		 SFP_tx0_datak => SYNTHESIZED_WIRE_147,
		 SFP_tx1_datak => SYNTHESIZED_WIRE_148,
		 SFP_Out_0 => SFP_tx_Out7,
		 SFP_Out_1 => SFP_tx_Out8,
		 SFP_rx0_parallel_data => 16_Fiber_in,
		 SFP_rx1_parallel_data => 17_Fiber_in);


b2v_inst480 : max_mem
PORT MAP(clk => The_clock,
		 reset => logic_reset,
		 current_mem_usage => mem_usage_b_15,
		 max_mem_usage => max_mem_b_15);

status_bus136(6 DOWNTO 0) <= adc_err04;


status_bus136(27 DOWNTO 21) <= adc_err07;


status_bus136(20 DOWNTO 14) <= adc_err06;


status_bus138(6 DOWNTO 0) <= adc_err12;


status_bus138(27 DOWNTO 21) <= adc_err15;


status_bus138(20 DOWNTO 14) <= adc_err14;



b2v_inst49 : data_packer_v2
PORT MAP(clock => The_clock,
		 reset => logic_reset,
		 dval_port_a_00 => dval_port_a_00,
		 dval_port_b_00 => dval_port_b_00,
		 dval_port_a_01 => dval_port_a_01,
		 dval_port_b_01 => dval_port_b_01,
		 dval_port_a_02 => dval_port_a_02,
		 dval_port_b_02 => dval_port_b_02,
		 dval_port_a_03 => dval_port_a_03,
		 dval_port_b_03 => dval_port_b_03,
		 dval_port_a_04 => dval_port_a_04,
		 dval_port_b_04 => dval_port_b_04,
		 dval_port_a_05 => dval_port_a_05,
		 dval_port_b_05 => dval_port_b_05,
		 dval_port_a_06 => dval_port_a_06,
		 dval_port_b_06 => dval_port_b_06,
		 dval_port_a_07 => dval_port_a_07,
		 dval_port_b_07 => dval_port_b_07,
		 dval_port_a_08 => dval_port_a_08,
		 dval_port_b_08 => dval_port_b_08,
		 dval_port_a_09 => dval_port_a_09,
		 dval_port_b_09 => dval_port_b_09,
		 dval_port_a_10 => dval_port_a_10,
		 dval_port_b_10 => dval_port_b_10,
		 dval_port_a_11 => dval_port_a_11,
		 dval_port_b_11 => dval_port_b_11,
		 dval_port_a_12 => dval_port_a_12,
		 dval_port_b_12 => dval_port_b_12,
		 dval_port_a_13 => dval_port_a_13,
		 dval_port_b_13 => dval_port_b_13,
		 dval_port_a_14 => dval_port_a_14,
		 dval_port_b_14 => dval_port_b_14,
		 dval_port_a_15 => dval_port_a_15,
		 dval_port_b_15 => dval_port_b_15,
		 data_port_a_00 => data_port_a_00,
		 data_port_a_01 => data_port_a_01,
		 data_port_a_02 => data_port_a_02,
		 data_port_a_03 => data_port_a_03,
		 data_port_a_04 => data_port_a_04,
		 data_port_a_05 => data_port_a_05,
		 data_port_a_06 => data_port_a_06,
		 data_port_a_07 => data_port_a_07,
		 data_port_a_08 => data_port_a_08,
		 data_port_a_09 => data_port_a_09,
		 data_port_a_10 => data_port_a_10,
		 data_port_a_11 => data_port_a_11,
		 data_port_a_12 => data_port_a_12,
		 data_port_a_13 => data_port_a_13,
		 data_port_a_14 => data_port_a_14,
		 data_port_a_15 => data_port_a_15,
		 data_port_b_00 => data_port_b_00,
		 data_port_b_01 => data_port_b_01,
		 data_port_b_02 => data_port_b_02,
		 data_port_b_03 => data_port_b_03,
		 data_port_b_04 => data_port_b_04,
		 data_port_b_05 => data_port_b_05,
		 data_port_b_06 => data_port_b_06,
		 data_port_b_07 => data_port_b_07,
		 data_port_b_08 => data_port_b_08,
		 data_port_b_09 => data_port_b_09,
		 data_port_b_10 => data_port_b_10,
		 data_port_b_11 => data_port_b_11,
		 data_port_b_12 => data_port_b_12,
		 data_port_b_13 => data_port_b_13,
		 data_port_b_14 => data_port_b_14,
		 data_port_b_15 => data_port_b_15,
		 L1A => L1A_15,
		 start_read_pulse => start_read_pulse,
		 data_out => data_out);



b2v_inst50 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(4),
		 data_rx => 04_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_240,
		 error => TLK_Err(4),
		 send_err => send_err(4),
		 data_out => SYNTHESIZED_WIRE_16,
		 datak => SYNTHESIZED_WIRE_21);


b2v_inst51 : ol_controller_32
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(17),
		 data_rx => 17_Fiber_in,
		 data_tx => data_out,
		 error => TLK_Err(17),
		 send_err => send_err(17),
		 data_out => SYNTHESIZED_WIRE_166,
		 datak => SYNTHESIZED_WIRE_167);


ClockSwitchControl_2 <= SYNTHESIZED_WIRE_150;



ClockSwitchControl_3 <= SYNTHESIZED_WIRE_151;




b2v_inst57 : tdc_vme
PORT MAP(vmewrite => vmewrite,
		 vmeas => vmeas,
		 vmeds => vmeds,
		 id => SYNTHESIZED_WIRE_152,
		 sysclk => sysclk,
		 addr => addr,
		 data => vme_data,
		 rd_data1 => rd_data1,
		 rd_data2 => rd_data2,
		 rd_data3 => rd_data3,
		 rd_data4 => rd_data4,
		 rd_data5 => rd_data5,
		 rd_data6 => rd_data6,
		 rd_data7 => rd_data7,
		 rd_data8 => rd_data8,
		 rd_data9 => rd_data9,
		 status_bus0 => SYNTHESIZED_WIRE_245,
		 status_bus1 => SYNTHESIZED_WIRE_245,
		 status_bus2 => SYNTHESIZED_WIRE_245,
		 status_bus3 => SYNTHESIZED_WIRE_245,
		 status_bus4 => SYNTHESIZED_WIRE_246,
		 status_reg100 => SYNTHESIZED_WIRE_246,
		 status_reg101 => SYNTHESIZED_WIRE_246,
		 status_reg102 => SYNTHESIZED_WIRE_246,
		 status_reg103 => status_bus103,
		 status_reg104 => status_bus104,
		 status_reg105 => status_bus105,
		 status_reg106 => status_bus106,
		 status_reg107 => status_bus107,
		 status_reg108 => status_bus108,
		 status_reg109 => status_bus109,
		 status_reg110 => status_bus110,
		 status_reg111 => status_bus111,
		 status_reg112 => status_bus112,
		 status_reg113 => status_bus113,
		 status_reg114 => status_bus114,
		 status_reg115 => status_bus115,
		 status_reg116 => status_bus116,
		 status_reg117 => status_bus117,
		 status_reg118 => status_bus118,
		 status_reg119 => status_bus119,
		 status_reg120 => status_bus120,
		 status_reg121 => status_bus121,
		 status_reg122 => status_bus122,
		 status_reg123 => status_bus123,
		 status_reg124 => status_bus124,
		 status_reg125 => status_bus125,
		 status_reg126 => status_bus126,
		 status_reg127 => status_bus127,
		 status_reg128 => status_bus128,
		 status_reg129 => status_bus129,
		 status_reg130 => status_bus130,
		 status_reg131 => status_bus131,
		 status_reg132 => status_bus132,
		 status_reg133 => status_bus133,
		 status_reg134 => status_bus134,
		 status_reg135 => status_bus135,
		 status_reg136 => status_bus136,
		 status_reg137 => status_bus137,
		 status_reg138 => status_bus138,
		 status_reg139 => SYNTHESIZED_WIRE_246,
		 status_reg140 => SYNTHESIZED_WIRE_246,
		 test_mode => SYNTHESIZED_WIRE_168,
		 reset => SYNTHESIZED_WIRE_169,
		 ena_simu => SYNTHESIZED_WIRE_170,
		 SPI_start => SYNTHESIZED_WIRE_171,
		 vmel2a_mode => SYNTHESIZED_WIRE_172,
		 reset1 => SYNTHESIZED_WIRE_173,
		 halt_mode => SYNTHESIZED_WIRE_174,
		 vme_wr_en1 => SYNTHESIZED_WIRE_175,
		 vme_wr_en2 => SYNTHESIZED_WIRE_176,
		 vme_wr_en3 => SYNTHESIZED_WIRE_177,
		 vme_wr_en4 => SYNTHESIZED_WIRE_178,
		 vme_wr_en5 => SYNTHESIZED_WIRE_179,
		 vme_wr_en6 => SYNTHESIZED_WIRE_180,
		 vme_wr_en7 => SYNTHESIZED_WIRE_181,
		 vme_wr_en8 => SYNTHESIZED_WIRE_182,
		 reg20 => SYNTHESIZED_WIRE_191,
		 reg21 => SYNTHESIZED_WIRE_192,
		 reg22 => SYNTHESIZED_WIRE_193,
		 reg23 => SYNTHESIZED_WIRE_194,
		 reg24 => SYNTHESIZED_WIRE_195,
		 reg25 => SYNTHESIZED_WIRE_196,
		 reg26 => SYNTHESIZED_WIRE_197,
		 reg27 => SYNTHESIZED_WIRE_198,
		 reg28 => SYNTHESIZED_WIRE_199,
		 reg29 => SYNTHESIZED_WIRE_200,
		 reg30 => SYNTHESIZED_WIRE_201,
		 reg31 => SYNTHESIZED_WIRE_202,
		 reg32 => SYNTHESIZED_WIRE_203,
		 reg33 => SYNTHESIZED_WIRE_204,
		 reg34 => SYNTHESIZED_WIRE_205,
		 reg35 => SYNTHESIZED_WIRE_206,
		 reg36 => SYNTHESIZED_WIRE_207,
		 reg37 => SYNTHESIZED_WIRE_208,
		 reg38 => SYNTHESIZED_WIRE_209,
		 reg39 => SYNTHESIZED_WIRE_210,
		 reg40 => SYNTHESIZED_WIRE_211,
		 reg41 => SYNTHESIZED_WIRE_212,
		 reg42 => SYNTHESIZED_WIRE_213,
		 reg43 => SYNTHESIZED_WIRE_214,
		 reg44 => SYNTHESIZED_WIRE_215,
		 reg45 => SYNTHESIZED_WIRE_216,
		 reg46 => SYNTHESIZED_WIRE_217,
		 reg47 => SYNTHESIZED_WIRE_218,
		 reg48 => SYNTHESIZED_WIRE_219,
		 reg49 => SYNTHESIZED_WIRE_220,
		 reg50 => SYNTHESIZED_WIRE_221,
		 reg51 => SYNTHESIZED_WIRE_222,
		 reg52 => SYNTHESIZED_WIRE_223,
		 reg53 => SYNTHESIZED_WIRE_224,
		 reg54 => SYNTHESIZED_WIRE_225,
		 reg55 => SYNTHESIZED_WIRE_226,
		 register1 => SYNTHESIZED_WIRE_183,
		 register2 => SYNTHESIZED_WIRE_184,
		 register3 => SYNTHESIZED_WIRE_185,
		 register4 => SYNTHESIZED_WIRE_186,
		 register5 => SYNTHESIZED_WIRE_187,
		 register6 => SYNTHESIZED_WIRE_188,
		 register7 => SYNTHESIZED_WIRE_189,
		 register8 => SYNTHESIZED_WIRE_190);

ClockSwitchControl_4 <= SYNTHESIZED_WIRE_163;










b2v_inst65 : register_set2
PORT MAP(clock => The_clock,
		 in00 => SYNTHESIZED_WIRE_164,
		 in01 => SYNTHESIZED_WIRE_165,
		 in02 => SYNTHESIZED_WIRE_166,
		 in03 => SYNTHESIZED_WIRE_167,
		 out00 => SYNTHESIZED_WIRE_145,
		 out01 => SYNTHESIZED_WIRE_147,
		 out02 => SYNTHESIZED_WIRE_146,
		 out03 => SYNTHESIZED_WIRE_148);




b2v_inst676 : dff_one
PORT MAP(data => DigiIn(1),
		 clock => The_clock,
		 q => LIVE);


b2v_inst677 : dff_one
PORT MAP(data => DigiIn(0),
		 clock => The_clock,
		 q => TrigIn);




b2v_inst681 : vme_thing
PORT MAP(In1 => SYNTHESIZED_WIRE_168,
		 In2 => SYNTHESIZED_WIRE_169,
		 In3 => SYNTHESIZED_WIRE_170,
		 In4 => SYNTHESIZED_WIRE_171,
		 In5 => SYNTHESIZED_WIRE_172,
		 In6 => SYNTHESIZED_WIRE_173,
		 In15 => SYNTHESIZED_WIRE_174,
		 In16 => SYNTHESIZED_WIRE_175,
		 In17 => SYNTHESIZED_WIRE_176,
		 In18 => SYNTHESIZED_WIRE_177,
		 In19 => SYNTHESIZED_WIRE_178,
		 In20 => SYNTHESIZED_WIRE_179,
		 In21 => SYNTHESIZED_WIRE_180,
		 In22 => SYNTHESIZED_WIRE_181,
		 In23 => SYNTHESIZED_WIRE_182,
		 Outclk => vme_service_clock,
		 In30 => SYNTHESIZED_WIRE_183,
		 In31 => SYNTHESIZED_WIRE_184,
		 In32 => SYNTHESIZED_WIRE_185,
		 In33 => SYNTHESIZED_WIRE_186,
		 In34 => SYNTHESIZED_WIRE_187,
		 In35 => SYNTHESIZED_WIRE_188,
		 In36 => SYNTHESIZED_WIRE_189,
		 In37 => SYNTHESIZED_WIRE_190,
		 In38 => SYNTHESIZED_WIRE_191,
		 In39 => SYNTHESIZED_WIRE_192,
		 In40 => SYNTHESIZED_WIRE_193,
		 In41 => SYNTHESIZED_WIRE_194,
		 In42 => SYNTHESIZED_WIRE_195,
		 In43 => SYNTHESIZED_WIRE_196,
		 In44 => SYNTHESIZED_WIRE_197,
		 In45 => SYNTHESIZED_WIRE_198,
		 In46 => SYNTHESIZED_WIRE_199,
		 In47 => SYNTHESIZED_WIRE_200,
		 In48 => SYNTHESIZED_WIRE_201,
		 In49 => SYNTHESIZED_WIRE_202,
		 In50 => SYNTHESIZED_WIRE_203,
		 In51 => SYNTHESIZED_WIRE_204,
		 In52 => SYNTHESIZED_WIRE_205,
		 In53 => SYNTHESIZED_WIRE_206,
		 In54 => SYNTHESIZED_WIRE_207,
		 In55 => SYNTHESIZED_WIRE_208,
		 In56 => SYNTHESIZED_WIRE_209,
		 In57 => SYNTHESIZED_WIRE_210,
		 In58 => SYNTHESIZED_WIRE_211,
		 In59 => SYNTHESIZED_WIRE_212,
		 In60 => SYNTHESIZED_WIRE_213,
		 In61 => SYNTHESIZED_WIRE_214,
		 In62 => SYNTHESIZED_WIRE_215,
		 In63 => SYNTHESIZED_WIRE_216,
		 In64 => SYNTHESIZED_WIRE_217,
		 In65 => SYNTHESIZED_WIRE_218,
		 In66 => SYNTHESIZED_WIRE_219,
		 In67 => SYNTHESIZED_WIRE_220,
		 In68 => SYNTHESIZED_WIRE_221,
		 In69 => SYNTHESIZED_WIRE_222,
		 In70 => SYNTHESIZED_WIRE_223,
		 In71 => SYNTHESIZED_WIRE_224,
		 In72 => SYNTHESIZED_WIRE_225,
		 In73 => SYNTHESIZED_WIRE_226,
		 Out1 => vme_halt,
		 Out2 => reset,
		 Out6 => reset_PLLs,
		 Out30 => vme_register_1,
		 Out31 => vme_register_2,
		 Out32 => vme_register_3,
		 Out34 => vme_register_5,
		 Out37 => vme_register_8,
		 Out38 => m_register_20,
		 Out39 => m_register_21,
		 Out40 => m_register_22,
		 Out47 => m_register_29,
		 Out48 => m_register_30,
		 Out49 => m_register_31,
		 Out50 => m_register_32,
		 Out51 => m_register_33,
		 Out58 => m_register_40,
		 Out59 => m_register_41,
		 Out60 => m_register_42);

FIFO_in_dly <= m_register_20(3 DOWNTO 0);


ENA_RX <= vme_register_8(17 DOWNTO 0);


L1A_00_delay <= m_register_20(7 DOWNTO 4);



trig_delay_delta <= m_register_21(15 DOWNTO 0);



b2v_inst7 : show_counter
PORT MAP(clock => vme_service_clock);

debug(9) <= reset;












b2v_inst8 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(10),
		 data_rx => 10_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(10),
		 send_err => send_err(10),
		 data_out => SYNTHESIZED_WIRE_72,
		 datak => SYNTHESIZED_WIRE_73);



b2v_inst81 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(3),
		 data_rx => 03_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_240,
		 error => TLK_Err(3),
		 send_err => send_err(3),
		 data_out => SYNTHESIZED_WIRE_17,
		 datak => SYNTHESIZED_WIRE_22);








b2v_inst88 : show_counter
PORT MAP(clock => The_clock);



b2v_inst9 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(11),
		 data_rx => 11_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_244,
		 error => TLK_Err(11),
		 send_err => send_err(11),
		 data_out => SYNTHESIZED_WIRE_74,
		 datak => SYNTHESIZED_WIRE_75);




debug(7) <= phy_mgmt_clk_reset_1;



b2v_inst94 : sfp_gxblock
PORT MAP(phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 pll_ref_clk => SFP_pll_ref_clk1,
		 SFP_rx_in_0 => SFP_rx_in1,
		 SFP_rx_in_1 => SFP_rx_in2,
		 clk => The_clock,
		 phy_mgmt_read => vme_register_2(0),
		 phy_mgmt_write => vme_register_2(1),
		 phy_mgmt_addr => vme_register_1(8 DOWNTO 0),
		 phy_mgmt_writedata => vme_register_3,
		 SFP0_tx_parallel_data => SYNTHESIZED_WIRE_230,
		 SFP1_tx_parallel_data => SYNTHESIZED_WIRE_231,
		 SFP_tx0_datak => SYNTHESIZED_WIRE_232,
		 SFP_tx1_datak => SYNTHESIZED_WIRE_233,
		 SFP_Out_0 => SFP_tx_Out1,
		 SFP_Out_1 => SFP_tx_Out2,
		 Test_0_0 => debug(10),
		 Test_0_1 => debug(11),
		 Test_1_0 => debug(13),
		 Test_1_1 => debug(14),
		 Test_0_2 => debug(12),
		 Test_1_2 => debug(15),
		 SFP_rx0_datak => debug(5 DOWNTO 4),
		 SFP_rx0_parallel_data => 10_Fiber_in,
		 SFP_rx1_datak => debug(3 DOWNTO 2),
		 SFP_rx1_parallel_data => 11_Fiber_in);



b2v_inst96 : pulse_generator_falledge
PORT MAP(clock => The_clock,
		 signal => LIVE_rst,
		 pulse => start_work);


b2v_inst97 : sfp_gxblock
PORT MAP(phy_mgmt_clk => The_clock,
		 phy_mgmt_clk_reset => phy_mgmt_clk_reset_1,
		 pll_ref_clk => SFP_pll_ref_clk2,
		 SFP_rx_in_0 => SFP_rx_in3,
		 SFP_rx_in_1 => SFP_rx_in4,
		 clk => The_clock,
		 phy_mgmt_read => vme_register_2(0),
		 phy_mgmt_write => vme_register_2(1),
		 phy_mgmt_addr => vme_register_1(8 DOWNTO 0),
		 phy_mgmt_writedata => vme_register_3,
		 SFP0_tx_parallel_data => SYNTHESIZED_WIRE_234,
		 SFP1_tx_parallel_data => SYNTHESIZED_WIRE_235,
		 SFP_tx0_datak => SYNTHESIZED_WIRE_236,
		 SFP_tx1_datak => SYNTHESIZED_WIRE_237,
		 SFP_Out_0 => SFP_tx_Out3,
		 SFP_Out_1 => SFP_tx_Out4,
		 SFP_rx0_parallel_data => 12_Fiber_in,
		 SFP_rx1_parallel_data => 13_Fiber_in);


b2v_inst98 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(2),
		 data_rx => 02_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_240,
		 error => TLK_Err(2),
		 send_err => send_err(2),
		 data_out => SYNTHESIZED_WIRE_18,
		 datak => SYNTHESIZED_WIRE_23);


b2v_inst99 : ol_controller
PORT MAP(clk => The_clock,
		 LIVE => LIVE,
		 ena_rx => ENA_RX(1),
		 data_rx => 01_Fiber_in,
		 data_tx => SYNTHESIZED_WIRE_240,
		 error => TLK_Err(1),
		 send_err => send_err(1),
		 data_out => SYNTHESIZED_WIRE_19,
		 datak => SYNTHESIZED_WIRE_24);

DigiIn <= Systemin;

END bdf_type;
