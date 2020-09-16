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
-- CREATED		"Wed Sep 16 11:39:58 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lossless IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		use_lossless :  IN  STD_LOGIC;
		data :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		min :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		range :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		compr_bits :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data_out :  OUT  STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END lossless;

ARCHITECTURE bdf_type OF lossless IS 

COMPONENT lossless_shifter_56
	PORT(clk : IN STD_LOGIC;
		 data_high : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		 data_low : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bit_to_dist
	PORT(range_bit : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 range_distance : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lossless_shifter_224
	PORT(clk : IN STD_LOGIC;
		 data_high : IN STD_LOGIC_VECTOR(111 DOWNTO 0);
		 data_low : IN STD_LOGIC_VECTOR(111 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lossless_shifter_27
	PORT(clk : IN STD_LOGIC;
		 data_high : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 data_low : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lossless_shifter_112
	PORT(clk : IN STD_LOGIC;
		 data_high : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
		 data_low : IN STD_LOGIC_VECTOR(55 DOWNTO 0);
		 distance : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(111 DOWNTO 0)
	);
END COMPONENT;

COMPONENT data_sub
	PORT(data : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 min : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 data_sub : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and224
	PORT(data0x : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add4_cout
	PORT(aclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add5_cout
	PORT(aclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add6_cout
	PORT(aclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add7_cout
	PORT(aclr : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 cout : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	c1 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	dd :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	dist0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist10 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist11 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist11_10 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist11_8 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	dist12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist13_12 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist14 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist15 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist15_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	dist15_12 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	dist15_14 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist15_8 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	dist1_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist3_0 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	dist3_2 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist5 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist5_4 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist7_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	dist7_4 :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	dist7_6 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	dist8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist9 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	dist9_8 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	r :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(111 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(111 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(55 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(55 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(55 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(55 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(27 DOWNTO 0);


BEGIN 



b2v_inst : lossless_shifter_56
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_0,
		 data_low => SYNTHESIZED_WIRE_1,
		 distance => dist13_12,
		 data_out => SYNTHESIZED_WIRE_6);


b2v_inst13 : bit_to_dist
PORT MAP(range_bit => r(13 DOWNTO 0),
		 range_distance => dist0);


b2v_inst135 : lossless_shifter_224
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_2,
		 data_low => SYNTHESIZED_WIRE_3,
		 distance => dist7_0,
		 data_out => data_out);


b2v_inst14 : bit_to_dist
PORT MAP(range_bit => r(27 DOWNTO 14),
		 range_distance => dist1);


b2v_inst15 : bit_to_dist
PORT MAP(range_bit => r(41 DOWNTO 28),
		 range_distance => dist2);


b2v_inst19 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(223 DOWNTO 210),
		 data_low => dd(209 DOWNTO 196),
		 distance => dist14,
		 data_out => SYNTHESIZED_WIRE_0);


b2v_inst2 : lossless_shifter_112
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_4,
		 data_low => SYNTHESIZED_WIRE_5,
		 distance => dist3_0,
		 data_out => SYNTHESIZED_WIRE_3);


b2v_inst20 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(195 DOWNTO 182),
		 data_low => dd(181 DOWNTO 168),
		 distance => dist12,
		 data_out => SYNTHESIZED_WIRE_1);


b2v_inst21 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(167 DOWNTO 154),
		 data_low => dd(153 DOWNTO 140),
		 distance => dist10,
		 data_out => SYNTHESIZED_WIRE_12);


b2v_inst22 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(139 DOWNTO 126),
		 data_low => dd(125 DOWNTO 112),
		 distance => dist8,
		 data_out => SYNTHESIZED_WIRE_13);


b2v_inst23 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(111 DOWNTO 98),
		 data_low => dd(97 DOWNTO 84),
		 distance => dist6,
		 data_out => SYNTHESIZED_WIRE_14);


b2v_inst24 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(83 DOWNTO 70),
		 data_low => dd(69 DOWNTO 56),
		 distance => dist4,
		 data_out => SYNTHESIZED_WIRE_15);


b2v_inst25 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(55 DOWNTO 42),
		 data_low => dd(41 DOWNTO 28),
		 distance => dist2,
		 data_out => SYNTHESIZED_WIRE_16);


b2v_inst26 : lossless_shifter_27
PORT MAP(clk => clk,
		 data_high => dd(27 DOWNTO 14),
		 data_low => dd(13 DOWNTO 0),
		 distance => dist0,
		 data_out => c1);


b2v_inst3 : lossless_shifter_112
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_6,
		 data_low => SYNTHESIZED_WIRE_7,
		 distance => dist11_8,
		 data_out => SYNTHESIZED_WIRE_2);


b2v_inst31 : bit_to_dist
PORT MAP(range_bit => r(55 DOWNTO 42),
		 range_distance => dist3);


b2v_inst36 : bit_to_dist
PORT MAP(range_bit => r(69 DOWNTO 56),
		 range_distance => dist4);


b2v_inst37 : bit_to_dist
PORT MAP(range_bit => r(83 DOWNTO 70),
		 range_distance => dist5);


b2v_inst38 : bit_to_dist
PORT MAP(range_bit => r(97 DOWNTO 84),
		 range_distance => dist6);


b2v_inst39 : bit_to_dist
PORT MAP(range_bit => r(111 DOWNTO 98),
		 range_distance => dist7);


b2v_inst40 : data_sub
PORT MAP(data => SYNTHESIZED_WIRE_8,
		 min => SYNTHESIZED_WIRE_9,
		 data_sub => dd);


b2v_inst41 : bit_to_dist
PORT MAP(range_bit => r(139 DOWNTO 126),
		 range_distance => dist9);


b2v_inst42 : and224
PORT MAP(data0x => data,
		 data1x => SYNTHESIZED_WIRE_17,
		 result => SYNTHESIZED_WIRE_8);


b2v_inst43 : and224
PORT MAP(data0x => min,
		 data1x => SYNTHESIZED_WIRE_17,
		 result => SYNTHESIZED_WIRE_9);

SYNTHESIZED_WIRE_17 <= (use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless & use_lossless);



b2v_inst46 : bit_to_dist
PORT MAP(range_bit => r(153 DOWNTO 140),
		 range_distance => dist10);


b2v_inst47 : bit_to_dist
PORT MAP(range_bit => r(167 DOWNTO 154),
		 range_distance => dist11);


b2v_inst48 : bit_to_dist
PORT MAP(range_bit => r(181 DOWNTO 168),
		 range_distance => dist12);


b2v_inst49 : bit_to_dist
PORT MAP(range_bit => r(195 DOWNTO 182),
		 range_distance => dist13);


b2v_inst5 : lossless_shifter_56
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_12,
		 data_low => SYNTHESIZED_WIRE_13,
		 distance => dist9_8,
		 data_out => SYNTHESIZED_WIRE_7);


b2v_inst50 : bit_to_dist
PORT MAP(range_bit => r(209 DOWNTO 196),
		 range_distance => dist14);


b2v_inst51 : bit_to_dist
PORT MAP(range_bit => r(223 DOWNTO 210),
		 range_distance => dist15);


b2v_inst52 : bit_to_dist
PORT MAP(range_bit => r(125 DOWNTO 112),
		 range_distance => dist8);


b2v_inst6 : lossless_shifter_56
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_14,
		 data_low => SYNTHESIZED_WIRE_15,
		 distance => dist5_4,
		 data_out => SYNTHESIZED_WIRE_4);


b2v_inst62 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist0,
		 datab => dist1,
		 cout => dist1_0(4),
		 result => dist1_0(3 DOWNTO 0));


b2v_inst63 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist2,
		 datab => dist3,
		 cout => dist3_2(4),
		 result => dist3_2(3 DOWNTO 0));


b2v_inst64 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist4,
		 datab => dist5,
		 cout => dist5_4(4),
		 result => dist5_4(3 DOWNTO 0));


b2v_inst65 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist6,
		 datab => dist7,
		 cout => dist7_6(4),
		 result => dist7_6(3 DOWNTO 0));


b2v_inst66 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist8,
		 datab => dist9,
		 cout => dist9_8(4),
		 result => dist9_8(3 DOWNTO 0));


b2v_inst67 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist10,
		 datab => dist11,
		 cout => dist11_10(4),
		 result => dist11_10(3 DOWNTO 0));


b2v_inst68 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist12,
		 datab => dist13,
		 cout => dist13_12(4),
		 result => dist13_12(3 DOWNTO 0));


b2v_inst69 : add4_cout
PORT MAP(clock => clk,
		 dataa => dist14,
		 datab => dist15,
		 cout => dist15_14(4),
		 result => dist15_14(3 DOWNTO 0));


b2v_inst7 : lossless_shifter_56
PORT MAP(clk => clk,
		 data_high => SYNTHESIZED_WIRE_16,
		 data_low => c1,
		 distance => dist1_0,
		 data_out => SYNTHESIZED_WIRE_5);


b2v_inst70 : add5_cout
PORT MAP(clock => clk,
		 dataa => dist1_0,
		 datab => dist3_2,
		 cout => dist3_0(5),
		 result => dist3_0(4 DOWNTO 0));


b2v_inst71 : add5_cout
PORT MAP(clock => clk,
		 dataa => dist5_4,
		 datab => dist7_6,
		 cout => dist7_4(5),
		 result => dist7_4(4 DOWNTO 0));


b2v_inst72 : add5_cout
PORT MAP(clock => clk,
		 dataa => dist9_8,
		 datab => dist11_10,
		 cout => dist11_8(5),
		 result => dist11_8(4 DOWNTO 0));


b2v_inst73 : add5_cout
PORT MAP(clock => clk,
		 dataa => dist13_12,
		 datab => dist15_14,
		 cout => dist15_12(5),
		 result => dist15_12(4 DOWNTO 0));


b2v_inst74 : add6_cout
PORT MAP(clock => clk,
		 dataa => dist3_0,
		 datab => dist7_4,
		 cout => dist7_0(6),
		 result => dist7_0(5 DOWNTO 0));


b2v_inst75 : add6_cout
PORT MAP(clock => clk,
		 dataa => dist11_8,
		 datab => dist15_12,
		 cout => dist15_8(6),
		 result => dist15_8(5 DOWNTO 0));


b2v_inst76 : add7_cout
PORT MAP(clock => clk,
		 dataa => dist7_0,
		 datab => dist15_8,
		 cout => dist15_0(7),
		 result => dist15_0(6 DOWNTO 0));

compr_bits <= dist15_0;
r <= range;

END bdf_type;