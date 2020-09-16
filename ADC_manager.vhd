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
-- CREATED		"Thu Jun 07 13:11:27 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ADC_manager IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		The_clock :  IN  STD_LOGIC;
		L1A_rd_req :  IN  STD_LOGIC;
		start_read_pulse :  IN  STD_LOGIC;
		use_loss :  IN  STD_LOGIC;
		adc_data_in :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		ADC_slot :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		FIFO_in_dly :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		L1A_rd_addr :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		mem_upper_limit :  IN  STD_LOGIC_VECTOR(14 DOWNTO 0);
		spill_id :  IN  STD_LOGIC_VECTOR(8 DOWNTO 0);
		data_wr_ena_falledge :  OUT  STD_LOGIC;
		finish_rd :  OUT  STD_LOGIC;
		dval_a :  OUT  STD_LOGIC;
		dval_b :  OUT  STD_LOGIC;
		err :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		L1A_out :  OUT  STD_LOGIC_VECTOR(13 DOWNTO 0);
		q_a :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		q_b :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		usage_a :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		usage_b :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ADC_manager;

ARCHITECTURE bdf_type OF ADC_manager IS 

COMPONENT pulse_generator_falledge
	PORT(clock : IN STD_LOGIC;
		 signal : IN STD_LOGIC;
		 pulse : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT true_ram_sclk
	PORT(wr_ena : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 rd_ena : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rd_addr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 wr_addr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 dval : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff_one
	PORT(data : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT data_split_v2
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 wr_ena : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 mem_upper_lim : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 wr_ena_a : OUT STD_LOGIC;
		 wr_ena_b : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 limit_a : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 limit_b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 wr_addr_a : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
		 wr_addr_b : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram_l1a
	PORT(wren : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 rdaddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram_es
	PORT(wren : IN STD_LOGIC;
		 rden : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		 rdaddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 wraddress : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;

COMPONENT memory_monitor
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 limit : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 n1 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 n2 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 rd_addr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 wr_addr : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 error : OUT STD_LOGIC;
		 usage : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mem_write_control_v4
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 use_loss : IN STD_LOGIC;
		 ADC_slot : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 spill : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		 data_wr_ena : OUT STD_LOGIC;
		 es_wr_ena : OUT STD_LOGIC;
		 L1A_wr_ena : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data_wr_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 err : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 es_out : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
		 es_wr_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 L1A : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		 L1A_wr_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mem_read_control_v3
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 start_read_pulse : IN STD_LOGIC;
		 event_size : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		 FIFO_in_dly : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 ram_upper_limit : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 es_rd_req : OUT STD_LOGIC;
		 data_rd_req_a : OUT STD_LOGIC;
		 data_rd_req_b : OUT STD_LOGIC;
		 error : OUT STD_LOGIC;
		 data_rd_addr_a : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
		 data_rd_addr_b : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
		 es_rd_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 limit_a : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		 limit_b : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff_15
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff16
	PORT(clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	data_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_to_men :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_wr_addr :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	data_wr_addr_a :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	data_wr_addr_b :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	data_wr_ena :  STD_LOGIC;
SIGNAL	data_wr_ena_a :  STD_LOGIC;
SIGNAL	data_wr_ena_b :  STD_LOGIC;
SIGNAL	err_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	es_out :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	es_wr_addr :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	es_wr_ena :  STD_LOGIC;
SIGNAL	event_size :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	L1A :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	L1A_wr_addr :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	L1A_wr_ena :  STD_LOGIC;
SIGNAL	mem_usage_a :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	mem_usage_b :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rd_addr_a :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	rd_addr_b :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	rd_ena_a :  STD_LOGIC;
SIGNAL	rd_ena_b :  STD_LOGIC;
SIGNAL	rd_rounds_a :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	rd_rounds_b :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	wr_rounds_a :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	wr_rounds_b :  STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 



b2v_inst : pulse_generator_falledge
PORT MAP(clock => The_clock,
		 signal => SYNTHESIZED_WIRE_0,
		 pulse => data_wr_ena_falledge);


b2v_inst1 : true_ram_sclk
PORT MAP(wr_ena => data_wr_ena_a,
		 clk => The_clock,
		 rd_ena => rd_ena_a,
		 data => data_to_men,
		 rd_addr => rd_addr_a,
		 wr_addr => data_wr_addr_a,
		 dval => SYNTHESIZED_WIRE_10,
		 q => SYNTHESIZED_WIRE_8);


b2v_inst10 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_1,
		 clock => The_clock,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst11 : data_split_v2
PORT MAP(clock => The_clock,
		 reset => reset,
		 wr_ena => data_wr_ena,
		 data_in => data_out,
		 mem_upper_lim => mem_upper_limit,
		 wr_ena_a => data_wr_ena_a,
		 wr_ena_b => data_wr_ena_b,
		 data_out => data_to_men,
		 limit_a => wr_rounds_a,
		 limit_b => wr_rounds_b,
		 wr_addr_a => data_wr_addr_a,
		 wr_addr_b => data_wr_addr_b);


b2v_inst110 : ram_l1a
PORT MAP(wren => L1A_wr_ena,
		 rden => L1A_rd_req,
		 clock => The_clock,
		 data => L1A,
		 rdaddress => L1A_rd_addr,
		 wraddress => L1A_wr_addr,
		 q => L1A_out);


b2v_inst114 : ram_es
PORT MAP(wren => es_wr_ena,
		 rden => SYNTHESIZED_WIRE_2,
		 clock => The_clock,
		 data => es_out,
		 rdaddress => SYNTHESIZED_WIRE_3,
		 wraddress => es_wr_addr,
		 q => event_size);


b2v_inst12 : memory_monitor
PORT MAP(clk => The_clock,
		 reset => reset,
		 limit => mem_upper_limit,
		 n1 => wr_rounds_a,
		 n2 => rd_rounds_a,
		 rd_addr => rd_addr_a,
		 wr_addr => data_wr_addr_a,
		 error => SYNTHESIZED_WIRE_5,
		 usage => SYNTHESIZED_WIRE_4);


b2v_inst132 : mem_write_control_v4
PORT MAP(clk => The_clock,
		 reset => reset,
		 use_loss => use_loss,
		 ADC_slot => ADC_slot,
		 din => adc_data_in,
		 spill => spill_id,
		 data_wr_ena => data_wr_ena,
		 es_wr_ena => es_wr_ena,
		 L1A_wr_ena => L1A_wr_ena,
		 data_out => data_out,
		 err => err_ALTERA_SYNTHESIZED(5 DOWNTO 0),
		 es_out => es_out,
		 es_wr_addr => es_wr_addr,
		 L1A => L1A,
		 L1A_wr_addr => L1A_wr_addr);


b2v_inst14 : mem_read_control_v3
PORT MAP(clock => The_clock,
		 reset => reset,
		 start_read_pulse => start_read_pulse,
		 event_size => event_size,
		 FIFO_in_dly => FIFO_in_dly,
		 ram_upper_limit => mem_upper_limit,
		 es_rd_req => SYNTHESIZED_WIRE_2,
		 data_rd_req_a => rd_ena_a,
		 data_rd_req_b => rd_ena_b,
		 error => err_ALTERA_SYNTHESIZED(6),
		 data_rd_addr_a => rd_addr_a,
		 data_rd_addr_b => rd_addr_b,
		 es_rd_addr => SYNTHESIZED_WIRE_3,
		 limit_a => rd_rounds_a,
		 limit_b => rd_rounds_b);


b2v_inst15 : memory_monitor
PORT MAP(clk => The_clock,
		 reset => reset,
		 limit => mem_upper_limit,
		 n1 => wr_rounds_b,
		 n2 => rd_rounds_b,
		 rd_addr => rd_addr_b,
		 wr_addr => data_wr_addr_b,
		 error => SYNTHESIZED_WIRE_7,
		 usage => SYNTHESIZED_WIRE_6);


b2v_inst16 : dff_15
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_4,
		 q => mem_usage_a(14 DOWNTO 0));


b2v_inst17 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_5,
		 clock => The_clock,
		 q => mem_usage_a(15));


b2v_inst19 : dff_15
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_6,
		 q => mem_usage_b(14 DOWNTO 0));


b2v_inst2 : pulse_generator_falledge
PORT MAP(clock => The_clock,
		 signal => rd_ena_a,
		 pulse => finish_rd);


b2v_inst20 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_7,
		 clock => The_clock,
		 q => mem_usage_b(15));


b2v_inst3 : true_ram_sclk
PORT MAP(wr_ena => data_wr_ena_b,
		 clk => The_clock,
		 rd_ena => rd_ena_b,
		 data => data_to_men,
		 rd_addr => rd_addr_b,
		 wr_addr => data_wr_addr_b,
		 dval => SYNTHESIZED_WIRE_11,
		 q => SYNTHESIZED_WIRE_9);


b2v_inst4 : dff16
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_8,
		 q => q_a);


b2v_inst5 : dff16
PORT MAP(clock => The_clock,
		 data => SYNTHESIZED_WIRE_9,
		 q => q_b);


b2v_inst6 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_10,
		 clock => The_clock,
		 q => dval_a);


b2v_inst7 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_11,
		 clock => The_clock,
		 q => dval_b);


b2v_inst8 : dff_one
PORT MAP(data => data_wr_ena,
		 clock => The_clock,
		 q => SYNTHESIZED_WIRE_12);


b2v_inst9 : dff_one
PORT MAP(data => SYNTHESIZED_WIRE_12,
		 clock => The_clock,
		 q => SYNTHESIZED_WIRE_1);

err <= err_ALTERA_SYNTHESIZED;
usage_a <= mem_usage_a;
usage_b <= mem_usage_b;

END bdf_type;
