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
-- CREATED		"Wed Sep 16 11:37:14 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bit_to_dist IS 
	PORT
	(
		range_bit :  IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
		range_distance :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END bit_to_dist;

ARCHITECTURE bdf_type OF bit_to_dist IS 

SIGNAL	ri :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	ro :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



ro(0) <= ri(1) OR ri(5) OR ri(7) OR ri(3);


ro(1) <= ri(13) OR SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_0 <= ri(2) OR ri(6) OR ri(7) OR ri(3);


ro(2) <= ri(13) OR SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_1 <= ri(4) OR ri(6) OR ri(7) OR ri(5);

ro(3) <= ri(13);


range_distance <= ro;
ri <= range_bit;

END bdf_type;