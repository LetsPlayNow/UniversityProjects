-- megafunction wizard: %LPM_COMPARE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_compare 

-- ============================================================
-- File Name: lpm_compare0.vhd
-- Megafunction Name(s):
-- 			lpm_compare
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 222 10/21/2009 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_compare0 IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		AeB		: OUT STD_LOGIC 
	);
END lpm_compare0;


ARCHITECTURE SYN OF lpm_compare0 IS

	SIGNAL sub_wire0	: STD_LOGIC ;



	COMPONENT lpm_compare
	GENERIC (
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			AeB	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	AeB    <= sub_wire0;

	lpm_compare_component : lpm_compare
	GENERIC MAP (
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_COMPARE",
		lpm_width => 8
	)
	PORT MAP (
		dataa => dataa,
		datab => datab,
		AeB => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: AeqB NUMERIC "1"
-- Retrieval info: PRIVATE: AgeB NUMERIC "0"
-- Retrieval info: PRIVATE: AgtB NUMERIC "0"
-- Retrieval info: PRIVATE: AleB NUMERIC "0"
-- Retrieval info: PRIVATE: AltB NUMERIC "0"
-- Retrieval info: PRIVATE: AneB NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: PortBValue NUMERIC "0"
-- Retrieval info: PRIVATE: Radix NUMERIC "10"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SignedCompare NUMERIC "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: isPortBConstant NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "8"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COMPARE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
-- Retrieval info: USED_PORT: AeB 0 0 0 0 OUTPUT NODEFVAL AeB
-- Retrieval info: USED_PORT: dataa 0 0 8 0 INPUT NODEFVAL dataa[7..0]
-- Retrieval info: USED_PORT: datab 0 0 8 0 INPUT NODEFVAL datab[7..0]
-- Retrieval info: CONNECT: AeB 0 0 0 0 @AeB 0 0 0 0
-- Retrieval info: CONNECT: @dataa 0 0 8 0 dataa 0 0 8 0
-- Retrieval info: CONNECT: @datab 0 0 8 0 datab 0 0 8 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_compare0_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: lpm
