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
-- CREATED		"Wed Sep 16 11:34:09 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bit_to_mask IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		compr_words :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		compr_mask :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END bit_to_mask;

ARCHITECTURE bdf_type OF bit_to_mask IS 

COMPONENT const_mask0
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT compare5
	PORT(dataa : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 aeb : OUT STD_LOGIC;
		 agb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT const_mask1
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask2
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask3
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask4
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask5
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask6
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask7
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask8
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask9
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask10
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask11
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask12
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask13
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask14
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT const_mask15
	PORT(		 result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg16nc
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	mask :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(4 DOWNTO 0);


BEGIN 



b2v_inst : const_mask0
PORT MAP(		 result => SYNTHESIZED_WIRE_4);


b2v_inst106 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_0,
		 agb => mask(2));


b2v_inst107 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_1,
		 agb => mask(3));


b2v_inst108 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_2,
		 agb => mask(1));


b2v_inst109 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_3,
		 agb => mask(4));


b2v_inst110 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_4,
		 agb => mask(0));


b2v_inst111 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_5,
		 agb => mask(5));


b2v_inst112 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_6,
		 agb => mask(6));


b2v_inst113 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_7,
		 agb => mask(7));


b2v_inst114 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_8,
		 agb => mask(8));


b2v_inst115 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_9,
		 agb => mask(9));


b2v_inst116 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_10,
		 agb => mask(10));


b2v_inst117 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_11,
		 agb => mask(11));


b2v_inst118 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_12,
		 agb => mask(12));


b2v_inst119 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_13,
		 agb => mask(13));


b2v_inst120 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_14,
		 agb => mask(14));


b2v_inst121 : compare5
PORT MAP(dataa => compr_words,
		 datab => SYNTHESIZED_WIRE_15,
		 agb => mask(15));


b2v_inst25 : const_mask1
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_inst26 : const_mask2
PORT MAP(		 result => SYNTHESIZED_WIRE_0);


b2v_inst27 : const_mask3
PORT MAP(		 result => SYNTHESIZED_WIRE_1);


b2v_inst28 : const_mask4
PORT MAP(		 result => SYNTHESIZED_WIRE_3);


b2v_inst29 : const_mask5
PORT MAP(		 result => SYNTHESIZED_WIRE_5);


b2v_inst30 : const_mask6
PORT MAP(		 result => SYNTHESIZED_WIRE_6);


b2v_inst31 : const_mask7
PORT MAP(		 result => SYNTHESIZED_WIRE_7);


b2v_inst32 : const_mask8
PORT MAP(		 result => SYNTHESIZED_WIRE_8);


b2v_inst33 : const_mask9
PORT MAP(		 result => SYNTHESIZED_WIRE_9);


b2v_inst34 : const_mask10
PORT MAP(		 result => SYNTHESIZED_WIRE_10);


b2v_inst35 : const_mask11
PORT MAP(		 result => SYNTHESIZED_WIRE_11);


b2v_inst36 : const_mask12
PORT MAP(		 result => SYNTHESIZED_WIRE_12);


b2v_inst37 : const_mask13
PORT MAP(		 result => SYNTHESIZED_WIRE_13);


b2v_inst38 : const_mask14
PORT MAP(		 result => SYNTHESIZED_WIRE_14);


b2v_inst39 : const_mask15
PORT MAP(		 result => SYNTHESIZED_WIRE_15);


b2v_inst40 : reg16nc
PORT MAP(clock => clock,
		 data => mask,
		 q => compr_mask);


END bdf_type;