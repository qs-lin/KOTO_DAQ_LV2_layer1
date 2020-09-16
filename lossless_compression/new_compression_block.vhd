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
-- CREATED		"Wed Sep 16 11:26:06 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY new_compression_block IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		packet_transfer :  IN  STD_LOGIC;
		data_transfer :  IN  STD_LOGIC;
		find_min_max :  IN  STD_LOGIC;
		use_lossless :  IN  STD_LOGIC;
		wr :  IN  STD_LOGIC;
		disable_coe :  IN  STD_LOGIC;
		enable_sum :  IN  STD_LOGIC;
		clear :  IN  STD_LOGIC;
		compr_vme_read :  IN  STD_LOGIC;
		address :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		data :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		UC_data :  IN  STD_LOGIC_VECTOR(223 DOWNTO 0);
		vme_in :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		ovfl :  OUT  STD_LOGIC;
		calib_trg :  OUT  STD_LOGIC;
		compr_words :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0);
		data_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		full_data :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		min :  OUT  STD_LOGIC_VECTOR(223 DOWNTO 0);
		range :  OUT  STD_LOGIC_VECTOR(223 DOWNTO 0);
		sumE :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sumEx :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		sumEy :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		vme_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END new_compression_block;

ARCHITECTURE bdf_type OF new_compression_block IS 

COMPONENT new_coe_data_block
	PORT(clk : IN STD_LOGIC;
		 wr : IN STD_LOGIC;
		 disable_coe : IN STD_LOGIC;
		 enable_sum : IN STD_LOGIC;
		 clear : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data_in : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 vme_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 calib_trg : OUT STD_LOGIC;
		 ovfl : OUT STD_LOGIC;
		 sumE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sumEx : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 sumEy : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 vme_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT min_range_cal
	PORT(enable : IN STD_LOGIC;
		 use_lossless : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 data[223] : IN STD_LOGIC;
		 data[222] : IN STD_LOGIC;
		 data[221] : IN STD_LOGIC;
		 data[220] : IN STD_LOGIC;
		 data[219] : IN STD_LOGIC;
		 data[218] : IN STD_LOGIC;
		 data[217] : IN STD_LOGIC;
		 data[216] : IN STD_LOGIC;
		 data[215] : IN STD_LOGIC;
		 data[214] : IN STD_LOGIC;
		 data[213] : IN STD_LOGIC;
		 data[212] : IN STD_LOGIC;
		 data[211] : IN STD_LOGIC;
		 data[210] : IN STD_LOGIC;
		 data[209] : IN STD_LOGIC;
		 data[208] : IN STD_LOGIC;
		 data[207] : IN STD_LOGIC;
		 data[206] : IN STD_LOGIC;
		 data[205] : IN STD_LOGIC;
		 data[204] : IN STD_LOGIC;
		 data[203] : IN STD_LOGIC;
		 data[202] : IN STD_LOGIC;
		 data[201] : IN STD_LOGIC;
		 data[200] : IN STD_LOGIC;
		 data[199] : IN STD_LOGIC;
		 data[198] : IN STD_LOGIC;
		 data[197] : IN STD_LOGIC;
		 data[196] : IN STD_LOGIC;
		 data[195] : IN STD_LOGIC;
		 data[194] : IN STD_LOGIC;
		 data[193] : IN STD_LOGIC;
		 data[192] : IN STD_LOGIC;
		 data[191] : IN STD_LOGIC;
		 data[190] : IN STD_LOGIC;
		 data[189] : IN STD_LOGIC;
		 data[188] : IN STD_LOGIC;
		 data[187] : IN STD_LOGIC;
		 data[186] : IN STD_LOGIC;
		 data[185] : IN STD_LOGIC;
		 data[184] : IN STD_LOGIC;
		 data[183] : IN STD_LOGIC;
		 data[182] : IN STD_LOGIC;
		 data[181] : IN STD_LOGIC;
		 data[180] : IN STD_LOGIC;
		 data[179] : IN STD_LOGIC;
		 data[178] : IN STD_LOGIC;
		 data[177] : IN STD_LOGIC;
		 data[176] : IN STD_LOGIC;
		 data[175] : IN STD_LOGIC;
		 data[174] : IN STD_LOGIC;
		 data[173] : IN STD_LOGIC;
		 data[172] : IN STD_LOGIC;
		 data[171] : IN STD_LOGIC;
		 data[170] : IN STD_LOGIC;
		 data[169] : IN STD_LOGIC;
		 data[168] : IN STD_LOGIC;
		 data[167] : IN STD_LOGIC;
		 data[166] : IN STD_LOGIC;
		 data[165] : IN STD_LOGIC;
		 data[164] : IN STD_LOGIC;
		 data[163] : IN STD_LOGIC;
		 data[162] : IN STD_LOGIC;
		 data[161] : IN STD_LOGIC;
		 data[160] : IN STD_LOGIC;
		 data[159] : IN STD_LOGIC;
		 data[158] : IN STD_LOGIC;
		 data[157] : IN STD_LOGIC;
		 data[156] : IN STD_LOGIC;
		 data[155] : IN STD_LOGIC;
		 data[154] : IN STD_LOGIC;
		 data[153] : IN STD_LOGIC;
		 data[152] : IN STD_LOGIC;
		 data[151] : IN STD_LOGIC;
		 data[150] : IN STD_LOGIC;
		 data[149] : IN STD_LOGIC;
		 data[148] : IN STD_LOGIC;
		 data[147] : IN STD_LOGIC;
		 data[146] : IN STD_LOGIC;
		 data[145] : IN STD_LOGIC;
		 data[144] : IN STD_LOGIC;
		 data[143] : IN STD_LOGIC;
		 data[142] : IN STD_LOGIC;
		 data[141] : IN STD_LOGIC;
		 data[140] : IN STD_LOGIC;
		 data[139] : IN STD_LOGIC;
		 data[138] : IN STD_LOGIC;
		 data[137] : IN STD_LOGIC;
		 data[136] : IN STD_LOGIC;
		 data[135] : IN STD_LOGIC;
		 data[134] : IN STD_LOGIC;
		 data[133] : IN STD_LOGIC;
		 data[132] : IN STD_LOGIC;
		 data[131] : IN STD_LOGIC;
		 data[130] : IN STD_LOGIC;
		 data[129] : IN STD_LOGIC;
		 data[128] : IN STD_LOGIC;
		 data[127] : IN STD_LOGIC;
		 data[126] : IN STD_LOGIC;
		 data[125] : IN STD_LOGIC;
		 data[124] : IN STD_LOGIC;
		 data[123] : IN STD_LOGIC;
		 data[122] : IN STD_LOGIC;
		 data[121] : IN STD_LOGIC;
		 data[120] : IN STD_LOGIC;
		 data[119] : IN STD_LOGIC;
		 data[118] : IN STD_LOGIC;
		 data[117] : IN STD_LOGIC;
		 data[116] : IN STD_LOGIC;
		 data[115] : IN STD_LOGIC;
		 data[114] : IN STD_LOGIC;
		 data[113] : IN STD_LOGIC;
		 data[112] : IN STD_LOGIC;
		 data[111] : IN STD_LOGIC;
		 data[110] : IN STD_LOGIC;
		 data[109] : IN STD_LOGIC;
		 data[108] : IN STD_LOGIC;
		 data[107] : IN STD_LOGIC;
		 data[106] : IN STD_LOGIC;
		 data[105] : IN STD_LOGIC;
		 data[104] : IN STD_LOGIC;
		 data[103] : IN STD_LOGIC;
		 data[102] : IN STD_LOGIC;
		 data[101] : IN STD_LOGIC;
		 data[100] : IN STD_LOGIC;
		 data[99] : IN STD_LOGIC;
		 data[98] : IN STD_LOGIC;
		 data[97] : IN STD_LOGIC;
		 data[96] : IN STD_LOGIC;
		 data[95] : IN STD_LOGIC;
		 data[94] : IN STD_LOGIC;
		 data[93] : IN STD_LOGIC;
		 data[92] : IN STD_LOGIC;
		 data[91] : IN STD_LOGIC;
		 data[90] : IN STD_LOGIC;
		 data[89] : IN STD_LOGIC;
		 data[88] : IN STD_LOGIC;
		 data[87] : IN STD_LOGIC;
		 data[86] : IN STD_LOGIC;
		 data[85] : IN STD_LOGIC;
		 data[84] : IN STD_LOGIC;
		 data[83] : IN STD_LOGIC;
		 data[82] : IN STD_LOGIC;
		 data[81] : IN STD_LOGIC;
		 data[80] : IN STD_LOGIC;
		 data[79] : IN STD_LOGIC;
		 data[78] : IN STD_LOGIC;
		 data[77] : IN STD_LOGIC;
		 data[76] : IN STD_LOGIC;
		 data[75] : IN STD_LOGIC;
		 data[74] : IN STD_LOGIC;
		 data[73] : IN STD_LOGIC;
		 data[72] : IN STD_LOGIC;
		 data[71] : IN STD_LOGIC;
		 data[70] : IN STD_LOGIC;
		 data[69] : IN STD_LOGIC;
		 data[68] : IN STD_LOGIC;
		 data[67] : IN STD_LOGIC;
		 data[66] : IN STD_LOGIC;
		 data[65] : IN STD_LOGIC;
		 data[64] : IN STD_LOGIC;
		 data[63] : IN STD_LOGIC;
		 data[62] : IN STD_LOGIC;
		 data[61] : IN STD_LOGIC;
		 data[60] : IN STD_LOGIC;
		 data[59] : IN STD_LOGIC;
		 data[58] : IN STD_LOGIC;
		 data[57] : IN STD_LOGIC;
		 data[56] : IN STD_LOGIC;
		 data[55] : IN STD_LOGIC;
		 data[54] : IN STD_LOGIC;
		 data[53] : IN STD_LOGIC;
		 data[52] : IN STD_LOGIC;
		 data[51] : IN STD_LOGIC;
		 data[50] : IN STD_LOGIC;
		 data[49] : IN STD_LOGIC;
		 data[48] : IN STD_LOGIC;
		 data[47] : IN STD_LOGIC;
		 data[46] : IN STD_LOGIC;
		 data[45] : IN STD_LOGIC;
		 data[44] : IN STD_LOGIC;
		 data[43] : IN STD_LOGIC;
		 data[42] : IN STD_LOGIC;
		 data[41] : IN STD_LOGIC;
		 data[40] : IN STD_LOGIC;
		 data[39] : IN STD_LOGIC;
		 data[38] : IN STD_LOGIC;
		 data[37] : IN STD_LOGIC;
		 data[36] : IN STD_LOGIC;
		 data[35] : IN STD_LOGIC;
		 data[34] : IN STD_LOGIC;
		 data[33] : IN STD_LOGIC;
		 data[32] : IN STD_LOGIC;
		 data[31] : IN STD_LOGIC;
		 data[30] : IN STD_LOGIC;
		 data[29] : IN STD_LOGIC;
		 data[28] : IN STD_LOGIC;
		 data[27] : IN STD_LOGIC;
		 data[26] : IN STD_LOGIC;
		 data[25] : IN STD_LOGIC;
		 data[24] : IN STD_LOGIC;
		 data[23] : IN STD_LOGIC;
		 data[22] : IN STD_LOGIC;
		 data[21] : IN STD_LOGIC;
		 data[20] : IN STD_LOGIC;
		 data[19] : IN STD_LOGIC;
		 data[18] : IN STD_LOGIC;
		 data[17] : IN STD_LOGIC;
		 data[16] : IN STD_LOGIC;
		 data[15] : IN STD_LOGIC;
		 data[14] : IN STD_LOGIC;
		 data[13] : IN STD_LOGIC;
		 data[12] : IN STD_LOGIC;
		 data[11] : IN STD_LOGIC;
		 data[10] : IN STD_LOGIC;
		 data[9] : IN STD_LOGIC;
		 data[8] : IN STD_LOGIC;
		 data[7] : IN STD_LOGIC;
		 data[6] : IN STD_LOGIC;
		 data[5] : IN STD_LOGIC;
		 data[4] : IN STD_LOGIC;
		 data[3] : IN STD_LOGIC;
		 data[2] : IN STD_LOGIC;
		 data[1] : IN STD_LOGIC;
		 data[0] : IN STD_LOGIC;
		 min : OUT STD_LOGIC_VECTOR(223 DOWNTO 0);
		 range : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux16
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT word_aligner
	PORT(reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 buffer_data : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 compr_mask : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux224
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg16nc
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT divide_by_14
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lossless
	PORT(use_lossless : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 min : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 range : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 compr_bits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(223 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg5
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ff3
	PORT(data : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT uncompressed_read
	PORT(clk : IN STD_LOGIC;
		 use_lossless : IN STD_LOGIC;
		 packet_transfer : IN STD_LOGIC;
		 data_transfer : IN STD_LOGIC;
		 in : IN STD_LOGIC_VECTOR(223 DOWNTO 0);
		 out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT and16
	PORT(data0x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bit_to_mask
	PORT(clock : IN STD_LOGIC;
		 compr_words : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 compr_mask : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	v :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(0 TO 15);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(223 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 
min <= SYNTHESIZED_WIRE_9;
range <= SYNTHESIZED_WIRE_10;
SYNTHESIZED_WIRE_0 <= "0000000000000000";



b2v_inst : new_coe_data_block
PORT MAP(clk => clk,
		 wr => wr,
		 disable_coe => disable_coe,
		 enable_sum => enable_sum,
		 clear => clear,
		 address => address,
		 data_in => UC_data,
		 vme_in => v(13 DOWNTO 0),
		 calib_trg => calib_trg,
		 ovfl => ovfl,
		 sumE => sumE,
		 sumEx => sumEx,
		 sumEy => sumEy,
		 vme_out => vme_out);


b2v_inst1 : min_range_cal
PORT MAP(enable => find_min_max,
		 use_lossless => use_lossless,
		 clk => clk,
		 data[223] => data(223),
		 data[222] => data(222),
		 data[221] => data(221),
		 data[220] => data(220),
		 data[219] => data(219),
		 data[218] => data(218),
		 data[217] => data(217),
		 data[216] => data(216),
		 data[215] => data(215),
		 data[214] => data(214),
		 data[213] => data(213),
		 data[212] => data(212),
		 data[211] => data(211),
		 data[210] => data(210),
		 data[209] => data(209),
		 data[208] => data(208),
		 data[207] => data(207),
		 data[206] => data(206),
		 data[205] => data(205),
		 data[204] => data(204),
		 data[203] => data(203),
		 data[202] => data(202),
		 data[201] => data(201),
		 data[200] => data(200),
		 data[199] => data(199),
		 data[198] => data(198),
		 data[197] => data(197),
		 data[196] => data(196),
		 data[195] => data(195),
		 data[194] => data(194),
		 data[193] => data(193),
		 data[192] => data(192),
		 data[191] => data(191),
		 data[190] => data(190),
		 data[189] => data(189),
		 data[188] => data(188),
		 data[187] => data(187),
		 data[186] => data(186),
		 data[185] => data(185),
		 data[184] => data(184),
		 data[183] => data(183),
		 data[182] => data(182),
		 data[181] => data(181),
		 data[180] => data(180),
		 data[179] => data(179),
		 data[178] => data(178),
		 data[177] => data(177),
		 data[176] => data(176),
		 data[175] => data(175),
		 data[174] => data(174),
		 data[173] => data(173),
		 data[172] => data(172),
		 data[171] => data(171),
		 data[170] => data(170),
		 data[169] => data(169),
		 data[168] => data(168),
		 data[167] => data(167),
		 data[166] => data(166),
		 data[165] => data(165),
		 data[164] => data(164),
		 data[163] => data(163),
		 data[162] => data(162),
		 data[161] => data(161),
		 data[160] => data(160),
		 data[159] => data(159),
		 data[158] => data(158),
		 data[157] => data(157),
		 data[156] => data(156),
		 data[155] => data(155),
		 data[154] => data(154),
		 data[153] => data(153),
		 data[152] => data(152),
		 data[151] => data(151),
		 data[150] => data(150),
		 data[149] => data(149),
		 data[148] => data(148),
		 data[147] => data(147),
		 data[146] => data(146),
		 data[145] => data(145),
		 data[144] => data(144),
		 data[143] => data(143),
		 data[142] => data(142),
		 data[141] => data(141),
		 data[140] => data(140),
		 data[139] => data(139),
		 data[138] => data(138),
		 data[137] => data(137),
		 data[136] => data(136),
		 data[135] => data(135),
		 data[134] => data(134),
		 data[133] => data(133),
		 data[132] => data(132),
		 data[131] => data(131),
		 data[130] => data(130),
		 data[129] => data(129),
		 data[128] => data(128),
		 data[127] => data(127),
		 data[126] => data(126),
		 data[125] => data(125),
		 data[124] => data(124),
		 data[123] => data(123),
		 data[122] => data(122),
		 data[121] => data(121),
		 data[120] => data(120),
		 data[119] => data(119),
		 data[118] => data(118),
		 data[117] => data(117),
		 data[116] => data(116),
		 data[115] => data(115),
		 data[114] => data(114),
		 data[113] => data(113),
		 data[112] => data(112),
		 data[111] => data(111),
		 data[110] => data(110),
		 data[109] => data(109),
		 data[108] => data(108),
		 data[107] => data(107),
		 data[106] => data(106),
		 data[105] => data(105),
		 data[104] => data(104),
		 data[103] => data(103),
		 data[102] => data(102),
		 data[101] => data(101),
		 data[100] => data(100),
		 data[99] => data(99),
		 data[98] => data(98),
		 data[97] => data(97),
		 data[96] => data(96),
		 data[95] => data(95),
		 data[94] => data(94),
		 data[93] => data(93),
		 data[92] => data(92),
		 data[91] => data(91),
		 data[90] => data(90),
		 data[89] => data(89),
		 data[88] => data(88),
		 data[87] => data(87),
		 data[86] => data(86),
		 data[85] => data(85),
		 data[84] => data(84),
		 data[83] => data(83),
		 data[82] => data(82),
		 data[81] => data(81),
		 data[80] => data(80),
		 data[79] => data(79),
		 data[78] => data(78),
		 data[77] => data(77),
		 data[76] => data(76),
		 data[75] => data(75),
		 data[74] => data(74),
		 data[73] => data(73),
		 data[72] => data(72),
		 data[71] => data(71),
		 data[70] => data(70),
		 data[69] => data(69),
		 data[68] => data(68),
		 data[67] => data(67),
		 data[66] => data(66),
		 data[65] => data(65),
		 data[64] => data(64),
		 data[63] => data(63),
		 data[62] => data(62),
		 data[61] => data(61),
		 data[60] => data(60),
		 data[59] => data(59),
		 data[58] => data(58),
		 data[57] => data(57),
		 data[56] => data(56),
		 data[55] => data(55),
		 data[54] => data(54),
		 data[53] => data(53),
		 data[52] => data(52),
		 data[51] => data(51),
		 data[50] => data(50),
		 data[49] => data(49),
		 data[48] => data(48),
		 data[47] => data(47),
		 data[46] => data(46),
		 data[45] => data(45),
		 data[44] => data(44),
		 data[43] => data(43),
		 data[42] => data(42),
		 data[41] => data(41),
		 data[40] => data(40),
		 data[39] => data(39),
		 data[38] => data(38),
		 data[37] => data(37),
		 data[36] => data(36),
		 data[35] => data(35),
		 data[34] => data(34),
		 data[33] => data(33),
		 data[32] => data(32),
		 data[31] => data(31),
		 data[30] => data(30),
		 data[29] => data(29),
		 data[28] => data(28),
		 data[27] => data(27),
		 data[26] => data(26),
		 data[25] => data(25),
		 data[24] => data(24),
		 data[23] => data(23),
		 data[22] => data(22),
		 data[21] => data(21),
		 data[20] => data(20),
		 data[19] => data(19),
		 data[18] => data(18),
		 data[17] => data(17),
		 data[16] => data(16),
		 data[15] => data(15),
		 data[14] => data(14),
		 data[13] => data(13),
		 data[12] => data(12),
		 data[11] => data(11),
		 data[10] => data(10),
		 data[9] => data(9),
		 data[8] => data(8),
		 data[7] => data(7),
		 data[6] => data(6),
		 data[5] => data(5),
		 data[4] => data(4),
		 data[3] => data(3),
		 data[2] => data(2),
		 data[1] => data(1),
		 data[0] => data(0),
		 min => SYNTHESIZED_WIRE_9,
		 range => SYNTHESIZED_WIRE_10);



SYNTHESIZED_WIRE_20 <= NOT(SYNTHESIZED_WIRE_0);



b2v_inst12 : mux16
PORT MAP(sel => compr_vme_read,
		 data0x => SYNTHESIZED_WIRE_1,
		 data1x => SYNTHESIZED_WIRE_20,
		 result => SYNTHESIZED_WIRE_5);

SYNTHESIZED_WIRE_22 <= (SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_3);



b2v_inst2 : word_aligner
PORT MAP(reset => packet_transfer,
		 enable => data_transfer,
		 clk => clk,
		 buffer_data => SYNTHESIZED_WIRE_4,
		 compr_mask => SYNTHESIZED_WIRE_5,
		 out => SYNTHESIZED_WIRE_13);


b2v_inst3 : mux224
PORT MAP(sel => use_lossless,
		 data0x => data,
		 data1x => SYNTHESIZED_WIRE_6,
		 result => SYNTHESIZED_WIRE_4);


b2v_inst38 : reg16nc
PORT MAP(clock => clk,
		 data => SYNTHESIZED_WIRE_7,
		 q => data_out);


b2v_inst39 : divide_by_14
PORT MAP(clock => clk,
		 address => SYNTHESIZED_WIRE_8,
		 q => SYNTHESIZED_WIRE_21);


b2v_inst4 : lossless
PORT MAP(use_lossless => use_lossless,
		 clk => clk,
		 data => data,
		 min => SYNTHESIZED_WIRE_9,
		 range => SYNTHESIZED_WIRE_10,
		 compr_bits => SYNTHESIZED_WIRE_8,
		 data_out => SYNTHESIZED_WIRE_6);


b2v_inst40 : reg16nc
PORT MAP(clock => clk,
		 data => SYNTHESIZED_WIRE_11,
		 q => full_data);


b2v_inst5 : reg5
PORT MAP(clock => clk,
		 data => SYNTHESIZED_WIRE_21,
		 q => compr_words);


b2v_inst6 : ff3
PORT MAP(data => packet_transfer,
		 clock => clk,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst7 : uncompressed_read
PORT MAP(clk => clk,
		 use_lossless => use_lossless,
		 packet_transfer => packet_transfer,
		 data_transfer => data_transfer,
		 in => UC_data,
		 out => SYNTHESIZED_WIRE_15);


b2v_inst70 : and16
PORT MAP(data0x => SYNTHESIZED_WIRE_13,
		 data1x => SYNTHESIZED_WIRE_22,
		 result => SYNTHESIZED_WIRE_7);


b2v_inst71 : and16
PORT MAP(data0x => SYNTHESIZED_WIRE_15,
		 data1x => SYNTHESIZED_WIRE_22,
		 result => SYNTHESIZED_WIRE_11);


b2v_inst8 : bit_to_mask
PORT MAP(clock => clk,
		 compr_words => SYNTHESIZED_WIRE_21,
		 compr_mask => SYNTHESIZED_WIRE_19);


b2v_inst9 : mux16
PORT MAP(sel => use_lossless,
		 data0x => SYNTHESIZED_WIRE_20,
		 data1x => SYNTHESIZED_WIRE_19,
		 result => SYNTHESIZED_WIRE_1);

v <= vme_in;

END bdf_type;