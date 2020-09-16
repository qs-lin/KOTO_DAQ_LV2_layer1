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
-- CREATED		"Wed Sep 16 11:38:26 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lossless_shifter_27 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		data_high :  IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
		data_low :  IN  STD_LOGIC_VECTOR(13 DOWNTO 0);
		distance :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		data_out :  OUT  STD_LOGIC_VECTOR(27 DOWNTO 0)
	);
END lossless_shifter_27;

ARCHITECTURE bdf_type OF lossless_shifter_27 IS 

COMPONENT reg28
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg14nc
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT or14x2
	PORT(data0x : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT barrel_shifter4
	PORT(data : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	a :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	b :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	d :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(0 TO 13);


BEGIN 
SYNTHESIZED_WIRE_2 <= "00000000000000";



b2v_inst : reg28
PORT MAP(clock => clk,
		 data => d,
		 q => data_out);


b2v_inst1 : reg14nc
PORT MAP(clock => clk,
		 data => data_low,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst122 : or14x2
PORT MAP(data0x => SYNTHESIZED_WIRE_0,
		 data1x => b(13 DOWNTO 0),
		 result => d(13 DOWNTO 0));

a(13 DOWNTO 0) <= SYNTHESIZED_WIRE_1;


a(27 DOWNTO 14) <= SYNTHESIZED_WIRE_2;



d(27 DOWNTO 14) <= b(27 DOWNTO 14);



b2v_inst2 : reg14nc
PORT MAP(clock => clk,
		 data => data_high,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst52 : barrel_shifter4
PORT MAP(data => a,
		 distance => distance,
		 result => b);


END bdf_type;