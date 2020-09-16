-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 9.1 Build 222 10/21/2009 SJ Full Version"
-- CREATED		"Wed Sep 16 11:28:48 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY new_coe_data_block IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		wr :  IN  STD_LOGIC;
		disable_coe :  IN  STD_LOGIC;
		enable_sum :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		address :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data_in :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		vme_in :  IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
		ovfl :  OUT  STD_LOGIC;
		calib_trg :  OUT  STD_LOGIC;
		sumE :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sumEx :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		sumEy :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		vme_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END new_coe_data_block;

ARCHITECTURE bdf_type OF new_coe_data_block IS 



BEGIN 



END bdf_type;