--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FILTER_timesim.vhd
-- /___/   /\     Timestamp: Tue Feb 27 10:48:39 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf FILTER.pcf -rpw 100 -tpw 0 -ar Structure -tm FILTER -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim FILTER.ncd FILTER_timesim.vhd 
-- Device	: 3s200ft256-5 (PRODUCTION 1.39 2013-10-13)
-- Input file	: FILTER.ncd
-- Output file	: /tp/xph2sic/xph2sic015/tp-filtre-2a-sicom/filtre/fpga/par/FiltreNum/netgen/par/FILTER_timesim.vhd
-- # of Entities	: 1
-- Design Name	: FILTER
-- Xilinx	: /softl2/XILINX/ise_edk_147i/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity FILTER is
  port (
    CLRb : out STD_LOGIC; 
    LDACb : out STD_LOGIC; 
    ADC_Rdb : out STD_LOGIC; 
    RESET : in STD_LOGIC := 'X'; 
    ADC_Convstb : out STD_LOGIC; 
    DAC_csb : out STD_LOGIC; 
    DAC_WRb : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    ADC_csb : out STD_LOGIC; 
    ADC_Eocb : in STD_LOGIC := 'X'; 
    Filter_In : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Filter_Out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end FILTER;

architecture Structure of FILTER is
  signal CLK_int : STD_LOGIC; 
  signal RESET_int : STD_LOGIC; 
  signal nx47418z2 : STD_LOGIC; 
  signal nx48415z1 : STD_LOGIC; 
  signal Buff_OE : STD_LOGIC; 
  signal U6_current_state_2_Q : STD_LOGIC; 
  signal FSM_ADC_read_en : STD_LOGIC; 
  signal Delay_Line_sample_shift : STD_LOGIC; 
  signal nx59523z1_0 : STD_LOGIC; 
  signal U6_current_state_0_Q : STD_LOGIC; 
  signal ack_F2ADC : STD_LOGIC; 
  signal U4_nx24035z1_0 : STD_LOGIC; 
  signal nx16821z1 : STD_LOGIC; 
  signal nx21956z1 : STD_LOGIC; 
  signal nx36612z80_0 : STD_LOGIC; 
  signal nx36612z86_0 : STD_LOGIC; 
  signal nx12322z1 : STD_LOGIC; 
  signal nx36612z18 : STD_LOGIC; 
  signal nx14805z1 : STD_LOGIC; 
  signal nx19940z1 : STD_LOGIC; 
  signal nx17288z1 : STD_LOGIC; 
  signal nx22423z1 : STD_LOGIC; 
  signal nx52766z1 : STD_LOGIC; 
  signal nx7635z1 : STD_LOGIC; 
  signal nx27091z1 : STD_LOGIC; 
  signal nx36612z23_0 : STD_LOGIC; 
  signal nx36612z26_0 : STD_LOGIC; 
  signal nx36612z29_0 : STD_LOGIC; 
  signal nx36612z32 : STD_LOGIC; 
  signal nx36612z33_0 : STD_LOGIC; 
  signal nx36612z34_0 : STD_LOGIC; 
  signal nx36612z22_0 : STD_LOGIC; 
  signal nx47418z3 : STD_LOGIC; 
  signal nx36612z5 : STD_LOGIC; 
  signal nx36612z6 : STD_LOGIC; 
  signal nx27558z1 : STD_LOGIC; 
  signal nx32693z1 : STD_LOGIC; 
  signal nx36612z4_0 : STD_LOGIC; 
  signal nx36612z11_0 : STD_LOGIC; 
  signal nx36612z15 : STD_LOGIC; 
  signal nx36612z16 : STD_LOGIC; 
  signal nx36612z14_0 : STD_LOGIC; 
  signal nx36612z24_0 : STD_LOGIC; 
  signal nx4535z1 : STD_LOGIC; 
  signal nx9670z1 : STD_LOGIC; 
  signal nx57149z1 : STD_LOGIC; 
  signal nx36612z20_0 : STD_LOGIC; 
  signal nx36612z27_0 : STD_LOGIC; 
  signal nx36612z83_0 : STD_LOGIC; 
  signal nx36612z89_0 : STD_LOGIC; 
  signal nx62284z1 : STD_LOGIC; 
  signal nx37361z1 : STD_LOGIC; 
  signal nx42496z1 : STD_LOGIC; 
  signal nx36612z21_0 : STD_LOGIC; 
  signal nx36612z30_0 : STD_LOGIC; 
  signal nx36612z2_0 : STD_LOGIC; 
  signal nx36612z40 : STD_LOGIC; 
  signal nx36612z41_0 : STD_LOGIC; 
  signal nx36612z42_0 : STD_LOGIC; 
  signal nx36612z39_0 : STD_LOGIC; 
  signal nx36612z50 : STD_LOGIC; 
  signal nx36612z51_0 : STD_LOGIC; 
  signal nx36612z52_0 : STD_LOGIC; 
  signal nx36612z49_0 : STD_LOGIC; 
  signal nx7018z1 : STD_LOGIC; 
  signal nx12153z1 : STD_LOGIC; 
  signal nx36612z78 : STD_LOGIC; 
  signal nx36612z77_0 : STD_LOGIC; 
  signal nx36612z92_0 : STD_LOGIC; 
  signal nx36612z93 : STD_LOGIC; 
  signal nx36612z91_0 : STD_LOGIC; 
  signal nx32226z1 : STD_LOGIC; 
  signal nx36612z35 : STD_LOGIC; 
  signal nx36612z36_0 : STD_LOGIC; 
  signal nx36612z37_0 : STD_LOGIC; 
  signal nx36612z1_0 : STD_LOGIC; 
  signal nx36612z45 : STD_LOGIC; 
  signal nx36612z46_0 : STD_LOGIC; 
  signal nx36612z47_0 : STD_LOGIC; 
  signal nx36612z44_0 : STD_LOGIC; 
  signal nx36612z55 : STD_LOGIC; 
  signal nx36612z56_0 : STD_LOGIC; 
  signal nx36612z57_0 : STD_LOGIC; 
  signal nx36612z54_0 : STD_LOGIC; 
  signal nx36612z65 : STD_LOGIC; 
  signal nx36612z66_0 : STD_LOGIC; 
  signal nx36612z67_0 : STD_LOGIC; 
  signal nx36612z64_0 : STD_LOGIC; 
  signal nx36612z74_0 : STD_LOGIC; 
  signal nx36612z60 : STD_LOGIC; 
  signal nx36612z61_0 : STD_LOGIC; 
  signal nx36612z62_0 : STD_LOGIC; 
  signal nx36612z59_0 : STD_LOGIC; 
  signal nx36612z70 : STD_LOGIC; 
  signal nx36612z71_0 : STD_LOGIC; 
  signal nx36612z72_0 : STD_LOGIC; 
  signal nx36612z69_0 : STD_LOGIC; 
  signal nx36612z90 : STD_LOGIC; 
  signal nx36612z88_0 : STD_LOGIC; 
  signal nx1883z1 : STD_LOGIC; 
  signal nx36612z12 : STD_LOGIC; 
  signal nx37828z1 : STD_LOGIC; 
  signal nx64936z1 : STD_LOGIC; 
  signal nx36612z10_0 : STD_LOGIC; 
  signal nx36612z8 : STD_LOGIC; 
  signal nx36612z9 : STD_LOGIC; 
  signal nx36612z25 : STD_LOGIC; 
  signal nx36612z81 : STD_LOGIC; 
  signal nx36612z79_0 : STD_LOGIC; 
  signal nx36612z17 : STD_LOGIC; 
  signal nx36612z13_0 : STD_LOGIC; 
  signal nx36612z87 : STD_LOGIC; 
  signal nx36612z85_0 : STD_LOGIC; 
  signal nx36612z7 : STD_LOGIC; 
  signal nx36612z3_0 : STD_LOGIC; 
  signal nx36612z28 : STD_LOGIC; 
  signal nx36612z31 : STD_LOGIC; 
  signal nx47631z1 : STD_LOGIC; 
  signal nx36612z84 : STD_LOGIC; 
  signal nx36612z82_0 : STD_LOGIC; 
  signal nx36612z19 : STD_LOGIC; 
  signal nx36612z76 : STD_LOGIC; 
  signal nx36612z75_0 : STD_LOGIC; 
  signal nx29750z1_0 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_1_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_3_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_5_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_7_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_9_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_11_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_13_O : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_15_O : STD_LOGIC; 
  signal ADC_Eocb_int : STD_LOGIC; 
  signal Buff_OE_DXMUX_1351 : STD_LOGIC; 
  signal nx47418z1 : STD_LOGIC; 
  signal Buff_OE_DYMUX_1339 : STD_LOGIC; 
  signal Buff_OE_GYMUX_1338 : STD_LOGIC; 
  signal nx48415z1_pack_3 : STD_LOGIC; 
  signal Buff_OE_SRINV_1330 : STD_LOGIC; 
  signal Buff_OE_CLKINV_1329 : STD_LOGIC; 
  signal Rom_Address_3_DXMUX_1389 : STD_LOGIC; 
  signal nx56532z1 : STD_LOGIC; 
  signal Rom_Address_3_DYMUX_1377 : STD_LOGIC; 
  signal nx57529z1 : STD_LOGIC; 
  signal Rom_Address_3_SRINV_1368 : STD_LOGIC; 
  signal Rom_Address_3_CLKINV_1367 : STD_LOGIC; 
  signal U4_nx24035z1 : STD_LOGIC; 
  signal U4_Accu_out_11_DYMUX_1414 : STD_LOGIC; 
  signal U4_Accu_out_11_SRINV_1406 : STD_LOGIC; 
  signal U4_Accu_out_11_CLKINV_1405 : STD_LOGIC; 
  signal Accu_out_13_DXMUX_1460 : STD_LOGIC; 
  signal Accu_out_13_DYMUX_1448 : STD_LOGIC; 
  signal Accu_out_13_SRINV_1440 : STD_LOGIC; 
  signal Accu_out_13_CLKINV_1439 : STD_LOGIC; 
  signal Accu_out_15_DXMUX_1498 : STD_LOGIC; 
  signal Accu_out_15_DYMUX_1486 : STD_LOGIC; 
  signal Accu_out_15_SRINV_1478 : STD_LOGIC; 
  signal Accu_out_15_CLKINV_1477 : STD_LOGIC; 
  signal nx21956z1_DYMUX_1512 : STD_LOGIC; 
  signal nx21956z1_SRINV_1510 : STD_LOGIC; 
  signal nx21956z1_CLKINV_1509 : STD_LOGIC; 
  signal nx21956z1_CEINV_1508 : STD_LOGIC; 
  signal nx36612z80 : STD_LOGIC; 
  signal nx36612z86 : STD_LOGIC; 
  signal Filter_In_mem_5_DXMUX_1560 : STD_LOGIC; 
  signal Filter_In_mem_5_DYMUX_1553 : STD_LOGIC; 
  signal Filter_In_mem_5_SRINV_1551 : STD_LOGIC; 
  signal Filter_In_mem_5_CLKINV_1550 : STD_LOGIC; 
  signal Filter_In_mem_5_CEINV_1549 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_DXMUX_1584 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_DYMUX_1577 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_SRINV_1575 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_CLKINV_1574 : STD_LOGIC; 
  signal Filter_Out_dup_0_1_CEINV_1573 : STD_LOGIC; 
  signal nx36612z18_DYMUX_1599 : STD_LOGIC; 
  signal nx36612z18_SRINV_1597 : STD_LOGIC; 
  signal nx36612z18_CLKINV_1596 : STD_LOGIC; 
  signal nx36612z18_CEINV_1595 : STD_LOGIC; 
  signal nx19940z1_DYMUX_1614 : STD_LOGIC; 
  signal nx19940z1_SRINV_1612 : STD_LOGIC; 
  signal nx19940z1_CLKINV_1611 : STD_LOGIC; 
  signal nx19940z1_CEINV_1610 : STD_LOGIC; 
  signal nx22423z1_DYMUX_1629 : STD_LOGIC; 
  signal nx22423z1_SRINV_1627 : STD_LOGIC; 
  signal nx22423z1_CLKINV_1626 : STD_LOGIC; 
  signal nx22423z1_CEINV_1625 : STD_LOGIC; 
  signal Filter_In_mem_7_DXMUX_1653 : STD_LOGIC; 
  signal Filter_In_mem_7_DYMUX_1646 : STD_LOGIC; 
  signal Filter_In_mem_7_SRINV_1644 : STD_LOGIC; 
  signal Filter_In_mem_7_CLKINV_1643 : STD_LOGIC; 
  signal Filter_In_mem_7_CEINV_1642 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_DXMUX_1677 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_DYMUX_1670 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_SRINV_1668 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_CLKINV_1667 : STD_LOGIC; 
  signal Filter_Out_dup_0_3_CEINV_1666 : STD_LOGIC; 
  signal nx7635z1_DYMUX_1692 : STD_LOGIC; 
  signal nx7635z1_SRINV_1690 : STD_LOGIC; 
  signal nx7635z1_CLKINV_1689 : STD_LOGIC; 
  signal nx7635z1_CEINV_1688 : STD_LOGIC; 
  signal nx29023z1 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_DXMUX_1728 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_DYMUX_1721 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_SRINV_1719 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_CLKINV_1718 : STD_LOGIC; 
  signal Filter_Out_dup_0_5_CEINV_1717 : STD_LOGIC; 
  signal nx27091z1_DYMUX_1743 : STD_LOGIC; 
  signal nx27091z1_SRINV_1741 : STD_LOGIC; 
  signal nx27091z1_CLKINV_1740 : STD_LOGIC; 
  signal nx27091z1_CEINV_1739 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_DXMUX_1767 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_DYMUX_1760 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_SRINV_1758 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_CLKINV_1757 : STD_LOGIC; 
  signal Filter_Out_dup_0_7_CEINV_1756 : STD_LOGIC; 
  signal nx36612z22 : STD_LOGIC; 
  signal nx36612z32_pack_1 : STD_LOGIC; 
  signal Rom_Address_4_DXMUX_1825 : STD_LOGIC; 
  signal nx55535z1 : STD_LOGIC; 
  signal nx47418z3_pack_2 : STD_LOGIC; 
  signal Rom_Address_4_SRINV_1808 : STD_LOGIC; 
  signal Rom_Address_4_CLKINV_1807 : STD_LOGIC; 
  signal FSM_ADC_read_en_DYMUX_1837 : STD_LOGIC; 
  signal FSM_ADC_read_en_SRINV_1835 : STD_LOGIC; 
  signal FSM_ADC_read_en_CLKINV_1834 : STD_LOGIC; 
  signal nx36612z4 : STD_LOGIC; 
  signal nx36612z11 : STD_LOGIC; 
  signal nx36612z14 : STD_LOGIC; 
  signal nx36612z24 : STD_LOGIC; 
  signal nx36612z6_DXMUX_1908 : STD_LOGIC; 
  signal nx36612z6_DYMUX_1901 : STD_LOGIC; 
  signal nx36612z6_SRINV_1899 : STD_LOGIC; 
  signal nx36612z6_CLKINV_1898 : STD_LOGIC; 
  signal nx36612z6_CEINV_1897 : STD_LOGIC; 
  signal nx27558z1_DYMUX_1923 : STD_LOGIC; 
  signal nx27558z1_SRINV_1921 : STD_LOGIC; 
  signal nx27558z1_CLKINV_1920 : STD_LOGIC; 
  signal nx27558z1_CEINV_1919 : STD_LOGIC; 
  signal U6_current_state_2_DXMUX_1965 : STD_LOGIC; 
  signal nx46421z1 : STD_LOGIC; 
  signal U6_current_state_2_DYMUX_1951 : STD_LOGIC; 
  signal nx47418z2_pack_2 : STD_LOGIC; 
  signal U6_current_state_2_BYINV_1943 : STD_LOGIC; 
  signal U6_current_state_2_SRINV_1942 : STD_LOGIC; 
  signal U6_current_state_2_CLKINV_1941 : STD_LOGIC; 
  signal nx36612z20 : STD_LOGIC; 
  signal nx36612z27 : STD_LOGIC; 
  signal nx36612z83 : STD_LOGIC; 
  signal nx36612z89 : STD_LOGIC; 
  signal nx57149z1_DYMUX_2027 : STD_LOGIC; 
  signal nx57149z1_SRINV_2025 : STD_LOGIC; 
  signal nx57149z1_CLKINV_2024 : STD_LOGIC; 
  signal nx57149z1_CEINV_2023 : STD_LOGIC; 
  signal nx62284z1_DYMUX_2042 : STD_LOGIC; 
  signal nx62284z1_SRINV_2040 : STD_LOGIC; 
  signal nx62284z1_CLKINV_2039 : STD_LOGIC; 
  signal nx62284z1_CEINV_2038 : STD_LOGIC; 
  signal nx36612z21 : STD_LOGIC; 
  signal nx36612z30 : STD_LOGIC; 
  signal nx36612z39 : STD_LOGIC; 
  signal nx36612z40_pack_2 : STD_LOGIC; 
  signal nx36612z49 : STD_LOGIC; 
  signal nx36612z50_pack_2 : STD_LOGIC; 
  signal Rom_Address_0_DXMUX_2156 : STD_LOGIC; 
  signal nx36612z33 : STD_LOGIC; 
  signal Rom_Address_0_DYMUX_2143 : STD_LOGIC; 
  signal nx58526z1 : STD_LOGIC; 
  signal Rom_Address_0_SRINV_2133 : STD_LOGIC; 
  signal Rom_Address_0_CLKINV_2132 : STD_LOGIC; 
  signal nx36612z77 : STD_LOGIC; 
  signal nx36612z78_pack_1 : STD_LOGIC; 
  signal nx36612z91 : STD_LOGIC; 
  signal nx36612z93_pack_1 : STD_LOGIC; 
  signal nx32226z1_DYMUX_2218 : STD_LOGIC; 
  signal nx32226z1_SRINV_2216 : STD_LOGIC; 
  signal nx32226z1_CLKINV_2215 : STD_LOGIC; 
  signal nx32226z1_CEINV_2214 : STD_LOGIC; 
  signal nx36612z1 : STD_LOGIC; 
  signal nx36612z35_pack_2 : STD_LOGIC; 
  signal nx36612z44 : STD_LOGIC; 
  signal nx36612z45_pack_2 : STD_LOGIC; 
  signal nx36612z54 : STD_LOGIC; 
  signal nx36612z55_pack_2 : STD_LOGIC; 
  signal nx36612z64 : STD_LOGIC; 
  signal nx36612z65_pack_2 : STD_LOGIC; 
  signal nx36612z92 : STD_LOGIC; 
  signal nx36612z74 : STD_LOGIC; 
  signal nx36612z59 : STD_LOGIC; 
  signal nx36612z60_pack_2 : STD_LOGIC; 
  signal nx36612z69 : STD_LOGIC; 
  signal nx36612z70_pack_2 : STD_LOGIC; 
  signal nx32693z1_DYMUX_2401 : STD_LOGIC; 
  signal nx32693z1_SRINV_2399 : STD_LOGIC; 
  signal nx32693z1_CLKINV_2398 : STD_LOGIC; 
  signal nx32693z1_CEINV_2397 : STD_LOGIC; 
  signal nx36612z88 : STD_LOGIC; 
  signal nx36612z90_pack_1 : STD_LOGIC; 
  signal nx1883z1_DYMUX_2440 : STD_LOGIC; 
  signal nx1883z1_SRINV_2438 : STD_LOGIC; 
  signal nx1883z1_CLKINV_2437 : STD_LOGIC; 
  signal nx1883z1_CEINV_2436 : STD_LOGIC; 
  signal nx37361z1_DYMUX_2455 : STD_LOGIC; 
  signal nx37361z1_SRINV_2453 : STD_LOGIC; 
  signal nx37361z1_CLKINV_2452 : STD_LOGIC; 
  signal nx37361z1_CEINV_2451 : STD_LOGIC; 
  signal nx36612z10 : STD_LOGIC; 
  signal nx36612z12_pack_1 : STD_LOGIC; 
  signal nx36612z9_DXMUX_2503 : STD_LOGIC; 
  signal nx36612z9_DYMUX_2496 : STD_LOGIC; 
  signal nx36612z9_SRINV_2494 : STD_LOGIC; 
  signal nx36612z9_CLKINV_2493 : STD_LOGIC; 
  signal nx36612z9_CEINV_2492 : STD_LOGIC; 
  signal nx37828z1_DYMUX_2518 : STD_LOGIC; 
  signal nx37828z1_SRINV_2516 : STD_LOGIC; 
  signal nx37828z1_CLKINV_2515 : STD_LOGIC; 
  signal nx37828z1_CEINV_2514 : STD_LOGIC; 
  signal nx36612z23 : STD_LOGIC; 
  signal nx36612z25_pack_1 : STD_LOGIC; 
  signal nx36612z79 : STD_LOGIC; 
  signal nx36612z81_pack_1 : STD_LOGIC; 
  signal nx36612z13 : STD_LOGIC; 
  signal nx36612z17_pack_1 : STD_LOGIC; 
  signal nx36612z34 : STD_LOGIC; 
  signal nx36612z85 : STD_LOGIC; 
  signal nx36612z87_pack_1 : STD_LOGIC; 
  signal nx36612z3 : STD_LOGIC; 
  signal nx36612z7_pack_1 : STD_LOGIC; 
  signal nx36612z26 : STD_LOGIC; 
  signal nx36612z28_pack_1 : STD_LOGIC; 
  signal nx4535z1_DYMUX_2689 : STD_LOGIC; 
  signal nx4535z1_SRINV_2687 : STD_LOGIC; 
  signal nx4535z1_CLKINV_2686 : STD_LOGIC; 
  signal nx4535z1_CEINV_2685 : STD_LOGIC; 
  signal nx7018z1_DYMUX_2704 : STD_LOGIC; 
  signal nx7018z1_SRINV_2702 : STD_LOGIC; 
  signal nx7018z1_CLKINV_2701 : STD_LOGIC; 
  signal nx7018z1_CEINV_2700 : STD_LOGIC; 
  signal nx36612z29 : STD_LOGIC; 
  signal nx36612z31_pack_1 : STD_LOGIC; 
  signal nx42496z1_DYMUX_2743 : STD_LOGIC; 
  signal nx42496z1_SRINV_2741 : STD_LOGIC; 
  signal nx42496z1_CLKINV_2740 : STD_LOGIC; 
  signal nx42496z1_CEINV_2739 : STD_LOGIC; 
  signal nx36612z82 : STD_LOGIC; 
  signal nx36612z84_pack_1 : STD_LOGIC; 
  signal nx36612z2 : STD_LOGIC; 
  signal nx36612z19_pack_1 : STD_LOGIC; 
  signal nx64936z1_DYMUX_2806 : STD_LOGIC; 
  signal nx64936z1_SRINV_2804 : STD_LOGIC; 
  signal nx64936z1_CLKINV_2803 : STD_LOGIC; 
  signal nx64936z1_CEINV_2802 : STD_LOGIC; 
  signal nx9670z1_DYMUX_2821 : STD_LOGIC; 
  signal nx9670z1_SRINV_2819 : STD_LOGIC; 
  signal nx9670z1_CLKINV_2818 : STD_LOGIC; 
  signal nx9670z1_CEINV_2817 : STD_LOGIC; 
  signal nx12153z1_DYMUX_2836 : STD_LOGIC; 
  signal nx12153z1_SRINV_2834 : STD_LOGIC; 
  signal nx12153z1_CLKINV_2833 : STD_LOGIC; 
  signal nx12153z1_CEINV_2832 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_DXMUX_2870 : STD_LOGIC; 
  signal nx59523z1 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_SRINV_2854 : STD_LOGIC; 
  signal U4_Accu_out_dup_0_0_CLKINV_2853 : STD_LOGIC; 
  signal nx47631z1_DYMUX_2884 : STD_LOGIC; 
  signal nx47631z1_SRINV_2882 : STD_LOGIC; 
  signal nx47631z1_CLKINV_2881 : STD_LOGIC; 
  signal nx47631z1_CEINV_2880 : STD_LOGIC; 
  signal nx16821z1_DYMUX_2899 : STD_LOGIC; 
  signal nx16821z1_BYINV_2898 : STD_LOGIC; 
  signal nx16821z1_SRINV_2897 : STD_LOGIC; 
  signal nx16821z1_CLKINV_2896 : STD_LOGIC; 
  signal nx16821z1_CEINV_2895 : STD_LOGIC; 
  signal nx36612z16_DXMUX_2923 : STD_LOGIC; 
  signal nx36612z16_DYMUX_2916 : STD_LOGIC; 
  signal nx36612z16_SRINV_2914 : STD_LOGIC; 
  signal nx36612z16_CLKINV_2913 : STD_LOGIC; 
  signal nx36612z16_CEINV_2912 : STD_LOGIC; 
  signal nx36612z75 : STD_LOGIC; 
  signal nx36612z76_pack_1 : STD_LOGIC; 
  signal nx29750z1 : STD_LOGIC; 
  signal nx12322z1_DYMUX_2974 : STD_LOGIC; 
  signal nx12322z1_SRINV_2972 : STD_LOGIC; 
  signal nx12322z1_CLKINV_2971 : STD_LOGIC; 
  signal nx12322z1_CEINV_2970 : STD_LOGIC; 
  signal nx14805z1_DYMUX_2989 : STD_LOGIC; 
  signal nx14805z1_SRINV_2987 : STD_LOGIC; 
  signal nx14805z1_CLKINV_2986 : STD_LOGIC; 
  signal nx14805z1_CEINV_2985 : STD_LOGIC; 
  signal nx17288z1_DYMUX_3004 : STD_LOGIC; 
  signal nx17288z1_SRINV_3002 : STD_LOGIC; 
  signal nx17288z1_CLKINV_3001 : STD_LOGIC; 
  signal nx17288z1_CEINV_3000 : STD_LOGIC; 
  signal nx52766z1_DYMUX_3019 : STD_LOGIC; 
  signal nx52766z1_SRINV_3017 : STD_LOGIC; 
  signal nx52766z1_CLKINV_3016 : STD_LOGIC; 
  signal nx52766z1_CEINV_3015 : STD_LOGIC; 
  signal Filter_In_mem_1_DXMUX_3043 : STD_LOGIC; 
  signal Filter_In_mem_1_DYMUX_3036 : STD_LOGIC; 
  signal Filter_In_mem_1_SRINV_3034 : STD_LOGIC; 
  signal Filter_In_mem_1_CLKINV_3033 : STD_LOGIC; 
  signal Filter_In_mem_1_CEINV_3032 : STD_LOGIC; 
  signal Filter_In_mem_3_DXMUX_3067 : STD_LOGIC; 
  signal Filter_In_mem_3_DYMUX_3060 : STD_LOGIC; 
  signal Filter_In_mem_3_SRINV_3058 : STD_LOGIC; 
  signal Filter_In_mem_3_CLKINV_3057 : STD_LOGIC; 
  signal Filter_In_mem_3_CEINV_3056 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_XORF_3107 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYINIT_3106 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CY0F_3105 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYSELF_3097 : STD_LOGIC; 
  signal U4_nx30768z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_BXINV_3095 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_XORG_3093 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYMUXG_3092 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_0_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CY0G_3090 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_0_CYSELG_3082 : STD_LOGIC; 
  signal U4_nx30769z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_XORF_3146 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYINIT_3145 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CY0F_3144 : STD_LOGIC; 
  signal U4_nx30770z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_XORG_3134 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_2_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYSELF_3132 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXFAST_3131 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYAND_3130 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_FASTCARRY_3129 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXG2_3128 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYMUXF2_3127 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CY0G_3126 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_2_CYSELG_3118 : STD_LOGIC; 
  signal U4_nx30771z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_XORF_3185 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYINIT_3184 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CY0F_3183 : STD_LOGIC; 
  signal U4_nx30772z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_XORG_3173 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_4_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYSELF_3171 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXFAST_3170 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYAND_3169 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_FASTCARRY_3168 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXG2_3167 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYMUXF2_3166 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CY0G_3165 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_4_CYSELG_3157 : STD_LOGIC; 
  signal U4_nx30773z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_XORF_3224 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYINIT_3223 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CY0F_3222 : STD_LOGIC; 
  signal U4_nx30774z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_XORG_3212 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_6_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYSELF_3210 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXFAST_3209 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYAND_3208 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_FASTCARRY_3207 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXG2_3206 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYMUXF2_3205 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CY0G_3204 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_6_CYSELG_3196 : STD_LOGIC; 
  signal U4_nx30775z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_XORF_3263 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYINIT_3262 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CY0F_3261 : STD_LOGIC; 
  signal U4_nx30776z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_XORG_3251 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_8_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYSELF_3249 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXFAST_3248 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYAND_3247 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_FASTCARRY_3246 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXG2_3245 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYMUXF2_3244 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CY0G_3243 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_8_CYSELG_3235 : STD_LOGIC; 
  signal U4_nx30777z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_XORF_3302 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYINIT_3301 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CY0F_3300 : STD_LOGIC; 
  signal U4_nx5893z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_XORG_3290 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_10_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYSELF_3288 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXFAST_3287 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYAND_3286 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_FASTCARRY_3285 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXG2_3284 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYMUXF2_3283 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CY0G_3282 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_10_CYSELG_3274 : STD_LOGIC; 
  signal U4_nx5894z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_XORF_3341 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYINIT_3340 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CY0F_3339 : STD_LOGIC; 
  signal U4_nx5895z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_XORG_3329 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_12_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYSELF_3327 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXFAST_3326 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYAND_3325 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_FASTCARRY_3324 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXG2_3323 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYMUXF2_3322 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CY0G_3321 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_12_CYSELG_3313 : STD_LOGIC; 
  signal U4_nx5896z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_XORF_3380 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYINIT_3379 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CY0F_3378 : STD_LOGIC; 
  signal U4_nx5897z1 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_XORG_3368 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_14_O : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYSELF_3366 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXFAST_3365 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYAND_3364 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_FASTCARRY_3363 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXG2_3362 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYMUXF2_3361 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CY0G_3360 : STD_LOGIC; 
  signal U4_ACCU_1n1s1_14_CYSELG_3352 : STD_LOGIC; 
  signal U4_nx5898z1 : STD_LOGIC; 
  signal Accu_out_16_DXMUX_3429 : STD_LOGIC; 
  signal Accu_out_16_XORF_3427 : STD_LOGIC; 
  signal Accu_out_16_CYINIT_3426 : STD_LOGIC; 
  signal Accu_out_16_F : STD_LOGIC; 
  signal Accu_out_16_DYMUX_3412 : STD_LOGIC; 
  signal Accu_out_16_XORG_3410 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_16_O : STD_LOGIC; 
  signal Accu_out_16_CYSELF_3408 : STD_LOGIC; 
  signal Accu_out_16_CYMUXFAST_3407 : STD_LOGIC; 
  signal Accu_out_16_CYAND_3406 : STD_LOGIC; 
  signal Accu_out_16_FASTCARRY_3405 : STD_LOGIC; 
  signal Accu_out_16_CYMUXG2_3404 : STD_LOGIC; 
  signal Accu_out_16_CYMUXF2_3403 : STD_LOGIC; 
  signal Accu_out_16_LOGIC_ZERO_3402 : STD_LOGIC; 
  signal Accu_out_16_CYSELG_3393 : STD_LOGIC; 
  signal Accu_out_16_G : STD_LOGIC; 
  signal Accu_out_16_SRINV_3391 : STD_LOGIC; 
  signal Accu_out_16_CLKINV_3390 : STD_LOGIC; 
  signal Accu_out_18_DXMUX_3474 : STD_LOGIC; 
  signal Accu_out_18_XORF_3472 : STD_LOGIC; 
  signal Accu_out_18_LOGIC_ZERO_3471 : STD_LOGIC; 
  signal Accu_out_18_CYINIT_3470 : STD_LOGIC; 
  signal Accu_out_18_CYSELF_3461 : STD_LOGIC; 
  signal Accu_out_18_F : STD_LOGIC; 
  signal Accu_out_18_DYMUX_3455 : STD_LOGIC; 
  signal Accu_out_18_XORG_3453 : STD_LOGIC; 
  signal U4_ACCU_add21_1i1_muxcy_18_O : STD_LOGIC; 
  signal Accu_out_19_rt_3450 : STD_LOGIC; 
  signal Accu_out_18_SRINV_3442 : STD_LOGIC; 
  signal Accu_out_18_CLKINV_3441 : STD_LOGIC; 
  signal nx36612z62 : STD_LOGIC; 
  signal nx36612z62_DIF_MUX_3513 : STD_LOGIC; 
  signal nx36612z61 : STD_LOGIC; 
  signal nx36612z62_GMC15 : STD_LOGIC; 
  signal nx36612z62_DIG_MUX_3500 : STD_LOGIC; 
  signal nx36612z62_CLKINV_3498 : STD_LOGIC; 
  signal nx36612z62_SRINV_3492 : STD_LOGIC; 
  signal nx36612z52 : STD_LOGIC; 
  signal nx36612z52_DIF_MUX_3558 : STD_LOGIC; 
  signal nx36612z51 : STD_LOGIC; 
  signal nx36612z52_GMC15 : STD_LOGIC; 
  signal nx36612z52_DIG_MUX_3545 : STD_LOGIC; 
  signal nx36612z52_CLKINV_3543 : STD_LOGIC; 
  signal nx36612z52_SRINV_3537 : STD_LOGIC; 
  signal nx36612z42 : STD_LOGIC; 
  signal nx36612z42_DIF_MUX_3603 : STD_LOGIC; 
  signal nx36612z41 : STD_LOGIC; 
  signal nx36612z42_GMC15 : STD_LOGIC; 
  signal nx36612z42_DIG_MUX_3590 : STD_LOGIC; 
  signal nx36612z42_CLKINV_3588 : STD_LOGIC; 
  signal nx36612z42_SRINV_3582 : STD_LOGIC; 
  signal nx36612z72 : STD_LOGIC; 
  signal nx36612z72_DIF_MUX_3648 : STD_LOGIC; 
  signal nx36612z71 : STD_LOGIC; 
  signal nx36612z72_GMC15 : STD_LOGIC; 
  signal nx36612z72_DIG_MUX_3635 : STD_LOGIC; 
  signal nx36612z72_CLKINV_3633 : STD_LOGIC; 
  signal nx36612z72_SRINV_3627 : STD_LOGIC; 
  signal nx36612z67 : STD_LOGIC; 
  signal nx36612z67_DIF_MUX_3693 : STD_LOGIC; 
  signal nx36612z66 : STD_LOGIC; 
  signal nx36612z67_GMC15 : STD_LOGIC; 
  signal nx36612z67_DIG_MUX_3680 : STD_LOGIC; 
  signal nx36612z67_CLKINV_3678 : STD_LOGIC; 
  signal nx36612z67_SRINV_3672 : STD_LOGIC; 
  signal nx36612z57 : STD_LOGIC; 
  signal nx36612z57_DIF_MUX_3738 : STD_LOGIC; 
  signal nx36612z56 : STD_LOGIC; 
  signal nx36612z57_GMC15 : STD_LOGIC; 
  signal nx36612z57_DIG_MUX_3725 : STD_LOGIC; 
  signal nx36612z57_CLKINV_3723 : STD_LOGIC; 
  signal nx36612z57_SRINV_3717 : STD_LOGIC; 
  signal nx36612z47 : STD_LOGIC; 
  signal nx36612z47_DIF_MUX_3783 : STD_LOGIC; 
  signal nx36612z46 : STD_LOGIC; 
  signal nx36612z47_GMC15 : STD_LOGIC; 
  signal nx36612z47_DIG_MUX_3770 : STD_LOGIC; 
  signal nx36612z47_CLKINV_3768 : STD_LOGIC; 
  signal nx36612z47_SRINV_3762 : STD_LOGIC; 
  signal nx36612z37 : STD_LOGIC; 
  signal nx36612z37_DIF_MUX_3828 : STD_LOGIC; 
  signal nx36612z36 : STD_LOGIC; 
  signal nx36612z37_GMC15 : STD_LOGIC; 
  signal nx36612z37_DIG_MUX_3815 : STD_LOGIC; 
  signal nx36612z37_CLKINV_3813 : STD_LOGIC; 
  signal nx36612z37_SRINV_3807 : STD_LOGIC; 
  signal Filter_In_0_INBUF : STD_LOGIC; 
  signal ADC_csb_O : STD_LOGIC; 
  signal Filter_In_1_INBUF : STD_LOGIC; 
  signal Filter_In_2_INBUF : STD_LOGIC; 
  signal ADC_Rdb_O : STD_LOGIC; 
  signal Filter_In_3_INBUF : STD_LOGIC; 
  signal Filter_In_4_INBUF : STD_LOGIC; 
  signal Filter_In_5_INBUF : STD_LOGIC; 
  signal Filter_In_6_INBUF : STD_LOGIC; 
  signal ADC_Convstb_O : STD_LOGIC; 
  signal Filter_In_7_INBUF : STD_LOGIC; 
  signal LDACb_O : STD_LOGIC; 
  signal Filter_Out_0_O : STD_LOGIC; 
  signal Filter_Out_1_O : STD_LOGIC; 
  signal Filter_Out_2_O : STD_LOGIC; 
  signal Filter_Out_3_O : STD_LOGIC; 
  signal Filter_Out_4_O : STD_LOGIC; 
  signal Filter_Out_5_O : STD_LOGIC; 
  signal Filter_Out_6_O : STD_LOGIC; 
  signal Filter_Out_7_O : STD_LOGIC; 
  signal ADC_Eocb_INBUF : STD_LOGIC; 
  signal DAC_WRb_O : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal CLRb_O : STD_LOGIC; 
  signal RESET_INBUF : STD_LOGIC; 
  signal DAC_csb_O : STD_LOGIC; 
  signal CLK_ibuf_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_ibuf_BUFG_I0_INV : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD16 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD17 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD18 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD19 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD20 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD21 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD22 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD23 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD24 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD25 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD26 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD27 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD28 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD29 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD30 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD31 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD32 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD33 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD34 : STD_LOGIC; 
  signal U3_Mult_out_multu16_0_ix2247z10733_PROD35 : STD_LOGIC; 
  signal U7_current_state_1_DXMUX_4135 : STD_LOGIC; 
  signal nx9275z1 : STD_LOGIC; 
  signal U7_current_state_1_DYMUX_4121 : STD_LOGIC; 
  signal nx10272z1 : STD_LOGIC; 
  signal U7_current_state_1_SRINV_4112 : STD_LOGIC; 
  signal U7_current_state_1_CLKINV_4111 : STD_LOGIC; 
  signal U4_Accu_out_2_DXMUX_4173 : STD_LOGIC; 
  signal U4_Accu_out_2_DYMUX_4161 : STD_LOGIC; 
  signal U4_Accu_out_2_SRINV_4153 : STD_LOGIC; 
  signal U4_Accu_out_2_CLKINV_4152 : STD_LOGIC; 
  signal U7_current_state_3_DXMUX_4211 : STD_LOGIC; 
  signal nx7281z1 : STD_LOGIC; 
  signal U7_current_state_3_DYMUX_4197 : STD_LOGIC; 
  signal nx8278z1 : STD_LOGIC; 
  signal U7_current_state_3_SRINV_4188 : STD_LOGIC; 
  signal U7_current_state_3_CLKINV_4187 : STD_LOGIC; 
  signal U4_Accu_out_4_DXMUX_4249 : STD_LOGIC; 
  signal U4_Accu_out_4_DYMUX_4237 : STD_LOGIC; 
  signal U4_Accu_out_4_SRINV_4229 : STD_LOGIC; 
  signal U4_Accu_out_4_CLKINV_4228 : STD_LOGIC; 
  signal U4_Accu_out_6_DXMUX_4287 : STD_LOGIC; 
  signal U4_Accu_out_6_DYMUX_4275 : STD_LOGIC; 
  signal U4_Accu_out_6_SRINV_4267 : STD_LOGIC; 
  signal U4_Accu_out_6_CLKINV_4266 : STD_LOGIC; 
  signal U4_Accu_out_8_DXMUX_4325 : STD_LOGIC; 
  signal U4_Accu_out_8_DYMUX_4313 : STD_LOGIC; 
  signal U4_Accu_out_8_SRINV_4305 : STD_LOGIC; 
  signal U4_Accu_out_8_CLKINV_4304 : STD_LOGIC; 
  signal ack_F2ADC_DYMUX_4346 : STD_LOGIC; 
  signal nx45424z1 : STD_LOGIC; 
  signal ack_F2ADC_SRINV_4336 : STD_LOGIC; 
  signal ack_F2ADC_CLKINV_4335 : STD_LOGIC; 
  signal U4_Accu_out_10_DXMUX_4384 : STD_LOGIC; 
  signal U4_Accu_out_10_DYMUX_4372 : STD_LOGIC; 
  signal U4_Accu_out_10_SRINV_4364 : STD_LOGIC; 
  signal U4_Accu_out_10_CLKINV_4363 : STD_LOGIC; 
  signal LDACb_OUTPUT_OFF_O1INV_3918 : STD_LOGIC; 
  signal DAC_WRb_OUTPUT_OFF_O1INV_3996 : STD_LOGIC; 
  signal CLRb_OUTPUT_OFF_O1INV_4010 : STD_LOGIC; 
  signal DAC_csb_OUTPUT_OFF_O1INV_4024 : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_7_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_4_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_0_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_ix36612z15042_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15070_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15066_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15058_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15050_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15062_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15054_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_ix36612z15046_Q15_UNCONNECTED : STD_LOGIC; 
  signal U7_current_state : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Rom_Address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U4_ACCU_1n1s1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Mult_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U4_Accu_out : STD_LOGIC_VECTOR ( 11 downto 1 ); 
  signal Accu_out : STD_LOGIC_VECTOR ( 19 downto 12 ); 
  signal Filter_In_mem : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Filter_Out_dup_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_Accu_out_dup_0 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U4_ACCU_1n1ss1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  Buff_OE_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx47418z1,
      O => Buff_OE_DXMUX_1351
    );
  Buff_OE_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE_GYMUX_1338,
      O => Buff_OE_DYMUX_1339
    );
  Buff_OE_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE_GYMUX_1338,
      O => nx48415z1
    );
  Buff_OE_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx48415z1_pack_3,
      O => Buff_OE_GYMUX_1338
    );
  Buff_OE_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Buff_OE_SRINV_1330
    );
  Buff_OE_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Buff_OE_CLKINV_1329
    );
  ix48415z1482 : X_LUT4
    generic map(
      INIT => X"CCC0",
      LOC => "SLICE_X12Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Buff_OE,
      ADR2 => FSM_ADC_read_en,
      ADR3 => U7_current_state(0),
      O => nx48415z1_pack_3
    );
  Rom_Address_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx56532z1,
      O => Rom_Address_3_DXMUX_1389
    );
  Rom_Address_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57529z1,
      O => Rom_Address_3_DYMUX_1377
    );
  Rom_Address_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59523z1_0,
      O => Rom_Address_3_SRINV_1368
    );
  Rom_Address_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_3_CLKINV_1367
    );
  ix57529z1483 : X_LUT4
    generic map(
      INIT => X"FA05",
      LOC => "SLICE_X12Y16"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => VCC,
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(2),
      O => nx57529z1
    );
  U4_Accu_out_11_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1,
      O => U4_nx24035z1_0
    );
  U4_Accu_out_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(11),
      O => U4_Accu_out_11_DYMUX_1414
    );
  U4_Accu_out_11_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_11_SRINV_1406
    );
  U4_Accu_out_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_11_CLKINV_1405
    );
  U4_ix29020z53740 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X15Y17"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U4_ACCU_1n1s1(11),
      ADR2 => U6_current_state_0_Q,
      ADR3 => Mult_out(11),
      O => U4_ACCU_1n1ss1(11)
    );
  Accu_out_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(13),
      O => Accu_out_13_DXMUX_1460
    );
  Accu_out_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(12),
      O => Accu_out_13_DYMUX_1448
    );
  Accu_out_13_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Accu_out_13_SRINV_1440
    );
  Accu_out_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_13_CLKINV_1439
    );
  U6_reg_current_state_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      I => Buff_OE_DYMUX_1339,
      CE => VCC,
      CLK => Buff_OE_CLKINV_1329,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Buff_OE_SRINV_1330,
      O => Delay_Line_sample_shift
    );
  U4_ix28023z53740 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X15Y19"
    )
    port map (
      ADR0 => Mult_out(12),
      ADR1 => ack_F2ADC,
      ADR2 => U6_current_state_0_Q,
      ADR3 => U4_ACCU_1n1s1(12),
      O => U4_ACCU_1n1ss1(12)
    );
  Accu_out_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(15),
      O => Accu_out_15_DXMUX_1498
    );
  Accu_out_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(14),
      O => Accu_out_15_DYMUX_1486
    );
  Accu_out_15_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Accu_out_15_SRINV_1478
    );
  Accu_out_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_15_CLKINV_1477
    );
  U4_ix26029z53740 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X15Y18"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => U4_ACCU_1n1s1(14),
      ADR3 => Mult_out(14),
      O => U4_ACCU_1n1ss1(14)
    );
  nx21956z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx16821z1,
      O => nx21956z1_DYMUX_1512
    );
  nx21956z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx21956z1_SRINV_1510
    );
  nx21956z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx21956z1_CLKINV_1509
    );
  nx21956z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx21956z1_CEINV_1508
    );
  nx36612z80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z80,
      O => nx36612z80_0
    );
  nx36612z80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z86,
      O => nx36612z86_0
    );
  ix36612z9662 : X_LUT4
    generic map(
      INIT => X"0594",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(3),
      O => nx36612z86
    );
  Filter_In_mem_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y37",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_5_INBUF,
      O => Filter_In_mem_5_DXMUX_1560
    );
  Filter_In_mem_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y37",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_4_INBUF,
      O => Filter_In_mem_5_DYMUX_1553
    );
  Filter_In_mem_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y37",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_In_mem_5_SRINV_1551
    );
  Filter_In_mem_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y37",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_In_mem_5_CLKINV_1550
    );
  Filter_In_mem_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y37",
      PATHPULSE => 526 ps
    )
    port map (
      I => FSM_ADC_read_en,
      O => Filter_In_mem_5_CEINV_1549
    );
  Filter_Out_dup_0_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(13),
      O => Filter_Out_dup_0_1_DXMUX_1584
    );
  Filter_Out_dup_0_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(12),
      O => Filter_Out_dup_0_1_DYMUX_1577
    );
  Filter_Out_dup_0_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_Out_dup_0_1_SRINV_1575
    );
  Filter_Out_dup_0_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_1_CLKINV_1574
    );
  Filter_Out_dup_0_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE,
      O => Filter_Out_dup_0_1_CEINV_1573
    );
  nx36612z18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx12322z1,
      O => nx36612z18_DYMUX_1599
    );
  nx36612z18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx36612z18_SRINV_1597
    );
  nx36612z18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z18_CLKINV_1596
    );
  nx36612z18_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z18_CEINV_1595
    );
  nx19940z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx14805z1,
      O => nx19940z1_DYMUX_1614
    );
  nx19940z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx19940z1_SRINV_1612
    );
  nx19940z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx19940z1_CLKINV_1611
    );
  nx19940z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx19940z1_CEINV_1610
    );
  nx22423z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx17288z1,
      O => nx22423z1_DYMUX_1629
    );
  nx22423z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx22423z1_SRINV_1627
    );
  nx22423z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx22423z1_CLKINV_1626
    );
  nx22423z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx22423z1_CEINV_1625
    );
  Filter_In_mem_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y36",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_7_INBUF,
      O => Filter_In_mem_7_DXMUX_1653
    );
  Filter_In_mem_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y36",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_6_INBUF,
      O => Filter_In_mem_7_DYMUX_1646
    );
  Filter_In_mem_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y36",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_In_mem_7_SRINV_1644
    );
  Filter_In_mem_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y36",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_In_mem_7_CLKINV_1643
    );
  Filter_In_mem_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y36",
      PATHPULSE => 526 ps
    )
    port map (
      I => FSM_ADC_read_en,
      O => Filter_In_mem_7_CEINV_1642
    );
  Filter_Out_dup_0_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(15),
      O => Filter_Out_dup_0_3_DXMUX_1677
    );
  Filter_Out_dup_0_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(14),
      O => Filter_Out_dup_0_3_DYMUX_1670
    );
  Filter_Out_dup_0_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_Out_dup_0_3_SRINV_1668
    );
  Filter_Out_dup_0_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_3_CLKINV_1667
    );
  Filter_Out_dup_0_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE,
      O => Filter_Out_dup_0_3_CEINV_1666
    );
  nx7635z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx52766z1,
      O => nx7635z1_DYMUX_1692
    );
  nx7635z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx7635z1_SRINV_1690
    );
  nx7635z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx7635z1_CLKINV_1689
    );
  nx7635z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx7635z1_CEINV_1688
    );
  ix29023z1328 : X_LUT4
    generic map(
      INIT => X"EEEE",
      LOC => "SLICE_X13Y42"
    )
    port map (
      ADR0 => U7_current_state(2),
      ADR1 => U7_current_state(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => nx29023z1
    );
  Filter_Out_dup_0_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(17),
      O => Filter_Out_dup_0_5_DXMUX_1728
    );
  Filter_Out_dup_0_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(16),
      O => Filter_Out_dup_0_5_DYMUX_1721
    );
  Filter_Out_dup_0_5_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_Out_dup_0_5_SRINV_1719
    );
  Filter_Out_dup_0_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_5_CLKINV_1718
    );
  Filter_Out_dup_0_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE,
      O => Filter_Out_dup_0_5_CEINV_1717
    );
  nx27091z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx21956z1,
      O => nx27091z1_DYMUX_1743
    );
  nx27091z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx27091z1_SRINV_1741
    );
  nx27091z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx27091z1_CLKINV_1740
    );
  nx27091z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx27091z1_CEINV_1739
    );
  Filter_Out_dup_0_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(19),
      O => Filter_Out_dup_0_7_DXMUX_1767
    );
  Filter_Out_dup_0_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(18),
      O => Filter_Out_dup_0_7_DYMUX_1760
    );
  Filter_Out_dup_0_7_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_Out_dup_0_7_SRINV_1758
    );
  Filter_Out_dup_0_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_Out_dup_0_7_CLKINV_1757
    );
  Filter_Out_dup_0_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y9",
      PATHPULSE => 526 ps
    )
    port map (
      I => Buff_OE,
      O => Filter_Out_dup_0_7_CEINV_1756
    );
  nx36612z22_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z22,
      O => nx36612z22_0
    );
  nx36612z22_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z32_pack_1,
      O => nx36612z32
    );
  ix36612z58682 : X_LUT4
    generic map(
      INIT => X"8880",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => Rom_Address(2),
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z34_0,
      ADR3 => nx36612z33_0,
      O => nx36612z32_pack_1
    );
  Rom_Address_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx55535z1,
      O => Rom_Address_4_DXMUX_1825
    );
  Rom_Address_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx47418z3_pack_2,
      O => nx47418z3
    );
  Rom_Address_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59523z1_0,
      O => Rom_Address_4_SRINV_1808
    );
  Rom_Address_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_4_CLKINV_1807
    );
  ix47418z1317 : X_LUT4
    generic map(
      INIT => X"0011",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(1),
      ADR2 => VCC,
      ADR3 => Rom_Address(0),
      O => nx47418z3_pack_2
    );
  FSM_ADC_read_en_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y43",
      PATHPULSE => 526 ps
    )
    port map (
      I => U7_current_state(3),
      O => FSM_ADC_read_en_DYMUX_1837
    );
  FSM_ADC_read_en_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y43",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => FSM_ADC_read_en_SRINV_1835
    );
  FSM_ADC_read_en_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y43",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => FSM_ADC_read_en_CLKINV_1834
    );
  nx36612z4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z4,
      O => nx36612z4_0
    );
  nx36612z4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X23Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z11,
      O => nx36612z11_0
    );
  ix36612z22840 : X_LUT4
    generic map(
      INIT => X"00CA",
      LOC => "SLICE_X23Y17"
    )
    port map (
      ADR0 => nx27558z1,
      ADR1 => nx32693z1,
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(1),
      O => nx36612z11
    );
  nx36612z14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z14,
      O => nx36612z14_0
    );
  nx36612z14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z24,
      O => nx36612z24_0
    );
  ix36612z22850 : X_LUT4
    generic map(
      INIT => X"5404",
      LOC => "SLICE_X21Y18"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx16821z1,
      ADR2 => Rom_Address(0),
      ADR3 => nx21956z1,
      O => nx36612z24
    );
  nx36612z6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z5,
      O => nx36612z6_DXMUX_1908
    );
  nx36612z6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx19940z1,
      O => nx36612z6_DYMUX_1901
    );
  nx36612z6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx36612z6_SRINV_1899
    );
  nx36612z6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z6_CLKINV_1898
    );
  nx36612z6_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z6_CEINV_1897
    );
  nx27558z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx22423z1,
      O => nx27558z1_DYMUX_1923
    );
  nx27558z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx27558z1_SRINV_1921
    );
  nx27558z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx27558z1_CLKINV_1920
    );
  nx27558z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx27558z1_CEINV_1919
    );
  U6_current_state_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx46421z1,
      O => U6_current_state_2_DXMUX_1965
    );
  U6_current_state_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U6_current_state_2_BYINV_1943,
      O => U6_current_state_2_DYMUX_1951
    );
  U6_current_state_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx47418z2_pack_2,
      O => nx47418z2
    );
  U6_current_state_2_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => U6_current_state_2_BYINV_1943
    );
  U6_current_state_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U6_current_state_2_SRINV_1942
    );
  U6_current_state_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U6_current_state_2_CLKINV_1941
    );
  ix47418z547 : X_LUT4
    generic map(
      INIT => X"AA8A",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => U6_current_state_2_Q,
      ADR1 => Rom_Address(2),
      ADR2 => nx47418z3,
      ADR3 => Rom_Address(4),
      O => nx47418z2_pack_2
    );
  nx36612z20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z20,
      O => nx36612z20_0
    );
  nx36612z20_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z27,
      O => nx36612z27_0
    );
  ix36612z22853 : X_LUT4
    generic map(
      INIT => X"0C0A",
      LOC => "SLICE_X20Y15"
    )
    port map (
      ADR0 => nx7635z1,
      ADR1 => nx57149z1,
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(0),
      O => nx36612z27
    );
  nx36612z83_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z83,
      O => nx36612z83_0
    );
  nx36612z83_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z89,
      O => nx36612z89_0
    );
  ix36612z42310 : X_LUT4
    generic map(
      INIT => X"B7BC",
      LOC => "SLICE_X11Y15"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(0),
      O => nx36612z89
    );
  nx57149z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx7635z1,
      O => nx57149z1_DYMUX_2027
    );
  nx57149z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx57149z1_SRINV_2025
    );
  nx57149z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx57149z1_CLKINV_2024
    );
  nx57149z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx57149z1_CEINV_2023
    );
  nx62284z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx57149z1,
      O => nx62284z1_DYMUX_2042
    );
  nx62284z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx62284z1_SRINV_2040
    );
  nx62284z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx62284z1_CLKINV_2039
    );
  nx62284z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx62284z1_CEINV_2038
    );
  nx36612z21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z21,
      O => nx36612z21_0
    );
  nx36612z21_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z30,
      O => nx36612z30_0
    );
  ix36612z22856 : X_LUT4
    generic map(
      INIT => X"5140",
      LOC => "SLICE_X19Y16"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => Rom_Address(0),
      ADR2 => nx42496z1,
      ADR3 => nx37361z1,
      O => nx36612z30
    );
  nx36612z39_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z39,
      O => nx36612z39_0
    );
  nx36612z39_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z40_pack_2,
      O => nx36612z40
    );
  ix36612z1372 : X_LUT4
    generic map(
      INIT => X"303F",
      LOC => "SLICE_X7Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z42_0,
      ADR2 => Rom_Address(4),
      ADR3 => nx36612z41_0,
      O => nx36612z40_pack_2
    );
  nx36612z49_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z49,
      O => nx36612z49_0
    );
  nx36612z49_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z50_pack_2,
      O => nx36612z50
    );
  ix36612z1380 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X6Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z51_0,
      ADR2 => Rom_Address(4),
      ADR3 => nx36612z52_0,
      O => nx36612z50_pack_2
    );
  Rom_Address_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Rom_Address(0),
      O => Rom_Address_0_DXMUX_2156
    );
  Rom_Address_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z33,
      O => nx36612z33_0
    );
  Rom_Address_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx58526z1,
      O => Rom_Address_0_DYMUX_2143
    );
  Rom_Address_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59523z1_0,
      O => Rom_Address_0_SRINV_2133
    );
  Rom_Address_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Rom_Address_0_CLKINV_2132
    );
  ix58526z1323 : X_LUT4
    generic map(
      INIT => X"CC33",
      LOC => "SLICE_X21Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(0),
      ADR2 => VCC,
      ADR3 => Rom_Address(1),
      O => nx58526z1
    );
  nx36612z77_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z77,
      O => nx36612z77_0
    );
  nx36612z77_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z78_pack_1,
      O => nx36612z78
    );
  ix36612z1382 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X8Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(3),
      ADR2 => VCC,
      ADR3 => Rom_Address(0),
      O => nx36612z78_pack_1
    );
  nx36612z91_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z91,
      O => nx36612z91_0
    );
  nx36612z91_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z93_pack_1,
      O => nx36612z93
    );
  ix36612z1606 : X_LUT4
    generic map(
      INIT => X"0D06",
      LOC => "SLICE_X12Y17"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(3),
      O => nx36612z93_pack_1
    );
  nx32226z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx27091z1,
      O => nx32226z1_DYMUX_2218
    );
  nx32226z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx32226z1_SRINV_2216
    );
  nx32226z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx32226z1_CLKINV_2215
    );
  nx32226z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx32226z1_CEINV_2214
    );
  nx36612z1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z1,
      O => nx36612z1_0
    );
  nx36612z1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z35_pack_2,
      O => nx36612z35
    );
  ix36612z1368 : X_LUT4
    generic map(
      INIT => X"4747",
      LOC => "SLICE_X17Y18"
    )
    port map (
      ADR0 => nx36612z37_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z36_0,
      ADR3 => VCC,
      O => nx36612z35_pack_2
    );
  nx36612z44_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z44,
      O => nx36612z44_0
    );
  nx36612z44_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z45_pack_2,
      O => nx36612z45
    );
  ix36612z1376 : X_LUT4
    generic map(
      INIT => X"03CF",
      LOC => "SLICE_X6Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z46_0,
      ADR3 => nx36612z47_0,
      O => nx36612z45_pack_2
    );
  nx36612z54_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z54,
      O => nx36612z54_0
    );
  nx36612z54_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X6Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z55_pack_2,
      O => nx36612z55
    );
  ix36612z1384 : X_LUT4
    generic map(
      INIT => X"03F3",
      LOC => "SLICE_X6Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => nx36612z56_0,
      ADR2 => Rom_Address(4),
      ADR3 => nx36612z57_0,
      O => nx36612z55_pack_2
    );
  nx36612z64_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z64,
      O => nx36612z64_0
    );
  nx36612z64_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z65_pack_2,
      O => nx36612z65
    );
  ix36612z1392 : X_LUT4
    generic map(
      INIT => X"4477",
      LOC => "SLICE_X17Y17"
    )
    port map (
      ADR0 => nx36612z67_0,
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => nx36612z66_0,
      O => nx36612z65_pack_2
    );
  nx36612z92_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z92,
      O => nx36612z92_0
    );
  nx36612z92_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z74,
      O => nx36612z74_0
    );
  ix36612z1378 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X13Y17"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Rom_Address(4),
      O => nx36612z74
    );
  nx36612z59_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z59,
      O => nx36612z59_0
    );
  nx36612z59_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z60_pack_2,
      O => nx36612z60
    );
  ix36612z1388 : X_LUT4
    generic map(
      INIT => X"0C3F",
      LOC => "SLICE_X16Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z62_0,
      ADR3 => nx36612z61_0,
      O => nx36612z60_pack_2
    );
  nx36612z69_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z69,
      O => nx36612z69_0
    );
  nx36612z69_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z70_pack_2,
      O => nx36612z70
    );
  ix36612z1396 : X_LUT4
    generic map(
      INIT => X"11DD",
      LOC => "SLICE_X17Y16"
    )
    port map (
      ADR0 => nx36612z71_0,
      ADR1 => Rom_Address(4),
      ADR2 => VCC,
      ADR3 => nx36612z72_0,
      O => nx36612z70_pack_2
    );
  nx32693z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx27558z1,
      O => nx32693z1_DYMUX_2401
    );
  nx32693z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx32693z1_SRINV_2399
    );
  nx32693z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx32693z1_CLKINV_2398
    );
  nx32693z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx32693z1_CEINV_2397
    );
  nx36612z88_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z88,
      O => nx36612z88_0
    );
  nx36612z88_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X11Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z90_pack_1,
      O => nx36612z90
    );
  ix36612z24934 : X_LUT4
    generic map(
      INIT => X"3DED",
      LOC => "SLICE_X11Y14"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(0),
      O => nx36612z90_pack_1
    );
  nx1883z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx62284z1,
      O => nx1883z1_DYMUX_2440
    );
  nx1883z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx1883z1_SRINV_2438
    );
  nx1883z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx1883z1_CLKINV_2437
    );
  nx1883z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx1883z1_CEINV_2436
    );
  nx37361z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx32226z1,
      O => nx37361z1_DYMUX_2455
    );
  nx37361z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx37361z1_SRINV_2453
    );
  nx37361z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx37361z1_CLKINV_2452
    );
  nx37361z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx37361z1_CEINV_2451
    );
  nx36612z10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z10,
      O => nx36612z10_0
    );
  nx36612z10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z12_pack_1,
      O => nx36612z12
    );
  ix36612z44361 : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X22Y16"
    )
    port map (
      ADR0 => nx64936z1,
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(1),
      ADR3 => nx37828z1,
      O => nx36612z12_pack_1
    );
  nx36612z9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z8,
      O => nx36612z9_DXMUX_2503
    );
  nx36612z9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z6,
      O => nx36612z9_DYMUX_2496
    );
  nx36612z9_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx36612z9_SRINV_2494
    );
  nx36612z9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z9_CLKINV_2493
    );
  nx36612z9_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z9_CEINV_2492
    );
  nx37828z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx32693z1,
      O => nx37828z1_DYMUX_2518
    );
  nx37828z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx37828z1_SRINV_2516
    );
  nx37828z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx37828z1_CLKINV_2515
    );
  nx37828z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx37828z1_CEINV_2514
    );
  nx36612z23_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z23,
      O => nx36612z23_0
    );
  nx36612z23_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z25_pack_1,
      O => nx36612z25
    );
  ix36612z44371 : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X18Y17"
    )
    port map (
      ADR0 => nx32226z1,
      ADR1 => nx27091z1,
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(1),
      O => nx36612z25_pack_1
    );
  nx36612z79_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z79,
      O => nx36612z79_0
    );
  nx36612z79_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z81_pack_1,
      O => nx36612z81
    );
  ix36612z43707 : X_LUT4
    generic map(
      INIT => X"9694",
      LOC => "SLICE_X10Y19"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(3),
      O => nx36612z81_pack_1
    );
  nx36612z13_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z13,
      O => nx36612z13_0
    );
  nx36612z13_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z17_pack_1,
      O => nx36612z17
    );
  ix36612z42924 : X_LUT4
    generic map(
      INIT => X"AC00",
      LOC => "SLICE_X20Y20"
    )
    port map (
      ADR0 => nx36612z18,
      ADR1 => nx12322z1,
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(1),
      O => nx36612z17_pack_1
    );
  nx36612z34_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z34,
      O => nx36612z34_0
    );
  ix36612z44380 : X_LUT4
    generic map(
      INIT => X"C808",
      LOC => "SLICE_X21Y15"
    )
    port map (
      ADR0 => nx17288z1,
      ADR1 => Rom_Address(1),
      ADR2 => Rom_Address(0),
      ADR3 => nx22423z1,
      O => nx36612z34
    );
  nx36612z85_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z85,
      O => nx36612z85_0
    );
  nx36612z85_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z87_pack_1,
      O => nx36612z87
    );
  ix36612z28525 : X_LUT4
    generic map(
      INIT => X"4C82",
      LOC => "SLICE_X13Y16"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(4),
      O => nx36612z87_pack_1
    );
  nx36612z3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z3,
      O => nx36612z3_0
    );
  nx36612z3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z7_pack_1,
      O => nx36612z7
    );
  ix36612z44358 : X_LUT4
    generic map(
      INIT => X"A808",
      LOC => "SLICE_X20Y16"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx36612z8,
      ADR2 => Rom_Address(0),
      ADR3 => nx36612z9,
      O => nx36612z7_pack_1
    );
  nx36612z26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z26,
      O => nx36612z26_0
    );
  nx36612z26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z28_pack_1,
      O => nx36612z28
    );
  ix36612z44374 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => nx1883z1,
      ADR1 => Rom_Address(1),
      ADR2 => nx62284z1,
      ADR3 => Rom_Address(0),
      O => nx36612z28_pack_1
    );
  nx4535z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx64936z1,
      O => nx4535z1_DYMUX_2689
    );
  nx4535z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx4535z1_SRINV_2687
    );
  nx4535z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx4535z1_CLKINV_2686
    );
  nx4535z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx4535z1_CEINV_2685
    );
  nx7018z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx1883z1,
      O => nx7018z1_DYMUX_2704
    );
  nx7018z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx7018z1_SRINV_2702
    );
  nx7018z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx7018z1_CLKINV_2701
    );
  nx7018z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx7018z1_CEINV_2700
    );
  nx36612z29_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z29,
      O => nx36612z29_0
    );
  nx36612z29_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X18Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z31_pack_1,
      O => nx36612z31
    );
  ix36612z44377 : X_LUT4
    generic map(
      INIT => X"D080",
      LOC => "SLICE_X18Y15"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => nx52766z1,
      ADR2 => Rom_Address(1),
      ADR3 => nx47631z1,
      O => nx36612z31_pack_1
    );
  nx42496z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx37361z1,
      O => nx42496z1_DYMUX_2743
    );
  nx42496z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx42496z1_SRINV_2741
    );
  nx42496z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx42496z1_CLKINV_2740
    );
  nx42496z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx42496z1_CEINV_2739
    );
  nx36612z82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z82,
      O => nx36612z82_0
    );
  nx36612z82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z84_pack_1,
      O => nx36612z84
    );
  ix36612z7164 : X_LUT4
    generic map(
      INIT => X"433C",
      LOC => "SLICE_X10Y15"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(3),
      O => nx36612z84_pack_1
    );
  nx36612z2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z2,
      O => nx36612z2_0
    );
  nx36612z2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X21Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z19_pack_1,
      O => nx36612z19
    );
  ix36612z4909 : X_LUT4
    generic map(
      INIT => X"4440",
      LOC => "SLICE_X21Y16"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => nx36612z21_0,
      ADR3 => nx36612z20_0,
      O => nx36612z19_pack_1
    );
  nx64936z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X25Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx37828z1,
      O => nx64936z1_DYMUX_2806
    );
  nx64936z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx64936z1_SRINV_2804
    );
  nx64936z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx64936z1_CLKINV_2803
    );
  nx64936z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx64936z1_CEINV_2802
    );
  nx9670z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx4535z1,
      O => nx9670z1_DYMUX_2821
    );
  nx9670z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx9670z1_SRINV_2819
    );
  nx9670z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx9670z1_CLKINV_2818
    );
  nx9670z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx9670z1_CEINV_2817
    );
  nx12153z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx7018z1,
      O => nx12153z1_DYMUX_2836
    );
  nx12153z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx12153z1_SRINV_2834
    );
  nx12153z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx12153z1_CLKINV_2833
    );
  nx12153z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X23Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx12153z1_CEINV_2832
    );
  U4_Accu_out_dup_0_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(0),
      O => U4_Accu_out_dup_0_0_DXMUX_2870
    );
  U4_Accu_out_dup_0_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx59523z1,
      O => nx59523z1_0
    );
  U4_Accu_out_dup_0_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_dup_0_0_SRINV_2854
    );
  U4_Accu_out_dup_0_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_dup_0_0_CLKINV_2853
    );
  ix59523z1555 : X_LUT4
    generic map(
      INIT => X"FF03",
      LOC => "SLICE_X13Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U6_current_state_2_Q,
      ADR2 => ack_F2ADC,
      ADR3 => RESET_int,
      O => nx59523z1
    );
  nx47631z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx42496z1,
      O => nx47631z1_DYMUX_2884
    );
  nx47631z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx47631z1_SRINV_2882
    );
  nx47631z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx47631z1_CLKINV_2881
    );
  nx47631z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx47631z1_CEINV_2880
    );
  nx16821z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx16821z1_BYINV_2898,
      O => nx16821z1_DYMUX_2899
    );
  nx16821z1_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => nx16821z1_BYINV_2898
    );
  nx16821z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx16821z1_SRINV_2897
    );
  nx16821z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx16821z1_CLKINV_2896
    );
  nx16821z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx16821z1_CEINV_2895
    );
  nx36612z16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z15,
      O => nx36612z16_DXMUX_2923
    );
  nx36612z16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X21Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z9,
      O => nx36612z16_DYMUX_2916
    );
  nx36612z16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx36612z16_SRINV_2914
    );
  nx36612z16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z16_CLKINV_2913
    );
  nx36612z16_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z16_CEINV_2912
    );
  nx36612z75_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z75,
      O => nx36612z75_0
    );
  nx36612z75_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z76_pack_1,
      O => nx36612z76
    );
  ix36612z61990 : X_LUT4
    generic map(
      INIT => X"FE80",
      LOC => "SLICE_X8Y19"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(2),
      O => nx36612z76_pack_1
    );
  nx29750z1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y43",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx29750z1,
      O => nx29750z1_0
    );
  ix29750z1315 : X_LUT4
    generic map(
      INIT => X"0033",
      LOC => "SLICE_X13Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => FSM_ADC_read_en,
      ADR2 => VCC,
      ADR3 => U7_current_state(3),
      O => nx29750z1
    );
  nx12322z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z16,
      O => nx12322z1_DYMUX_2974
    );
  nx12322z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx12322z1_SRINV_2972
    );
  nx12322z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx12322z1_CLKINV_2971
    );
  nx12322z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx12322z1_CEINV_2970
    );
  nx14805z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx9670z1,
      O => nx14805z1_DYMUX_2989
    );
  nx14805z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx14805z1_SRINV_2987
    );
  nx14805z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx14805z1_CLKINV_2986
    );
  nx14805z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx14805z1_CEINV_2985
    );
  nx17288z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X22Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx12153z1,
      O => nx17288z1_DYMUX_3004
    );
  nx17288z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx17288z1_SRINV_3002
    );
  nx17288z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx17288z1_CLKINV_3001
    );
  nx17288z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X22Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx17288z1_CEINV_3000
    );
  nx52766z1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx47631z1,
      O => nx52766z1_DYMUX_3019
    );
  nx52766z1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => nx52766z1_SRINV_3017
    );
  nx52766z1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx52766z1_CLKINV_3016
    );
  nx52766z1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X17Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx52766z1_CEINV_3015
    );
  Filter_In_mem_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_1_INBUF,
      O => Filter_In_mem_1_DXMUX_3043
    );
  Filter_In_mem_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_0_INBUF,
      O => Filter_In_mem_1_DYMUX_3036
    );
  Filter_In_mem_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_In_mem_1_SRINV_3034
    );
  Filter_In_mem_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_In_mem_1_CLKINV_3033
    );
  Filter_In_mem_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => FSM_ADC_read_en,
      O => Filter_In_mem_1_CEINV_3032
    );
  Filter_In_mem_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_3_INBUF,
      O => Filter_In_mem_3_DXMUX_3067
    );
  Filter_In_mem_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_2_INBUF,
      O => Filter_In_mem_3_DYMUX_3060
    );
  Filter_In_mem_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => Filter_In_mem_3_SRINV_3058
    );
  Filter_In_mem_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Filter_In_mem_3_CLKINV_3057
    );
  Filter_In_mem_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => FSM_ADC_read_en,
      O => Filter_In_mem_3_CEINV_3056
    );
  U4_ACCU_1n1s1_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_XORF_3107,
      O => U4_ACCU_1n1s1(0)
    );
  U4_ACCU_1n1s1_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      I0 => U4_ACCU_1n1s1_0_CYINIT_3106,
      I1 => U4_nx30768z1,
      O => U4_ACCU_1n1s1_0_XORF_3107
    );
  U4_ACCU_1n1s1_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      IA => U4_ACCU_1n1s1_0_CY0F_3105,
      IB => U4_ACCU_1n1s1_0_CYINIT_3106,
      SEL => U4_ACCU_1n1s1_0_CYSELF_3097,
      O => U4_ACCU_add21_1i1_muxcy_0_O
    );
  U4_ACCU_1n1s1_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_BXINV_3095,
      O => U4_ACCU_1n1s1_0_CYINIT_3106
    );
  U4_ACCU_1n1s1_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out_dup_0(0),
      O => U4_ACCU_1n1s1_0_CY0F_3105
    );
  U4_ACCU_1n1s1_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30768z1,
      O => U4_ACCU_1n1s1_0_CYSELF_3097
    );
  U4_ACCU_1n1s1_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => U4_ACCU_1n1s1_0_BXINV_3095
    );
  U4_ACCU_1n1s1_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_XORG_3093,
      O => U4_ACCU_1n1s1(1)
    );
  U4_ACCU_1n1s1_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_0_O,
      I1 => U4_nx30769z1,
      O => U4_ACCU_1n1s1_0_XORG_3093
    );
  U4_ACCU_1n1s1_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_0_CYMUXG_3092,
      O => U4_ACCU_add21_1i1_muxcy_1_O
    );
  U4_ACCU_1n1s1_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      IA => U4_ACCU_1n1s1_0_CY0G_3090,
      IB => U4_ACCU_add21_1i1_muxcy_0_O,
      SEL => U4_ACCU_1n1s1_0_CYSELG_3082,
      O => U4_ACCU_1n1s1_0_CYMUXG_3092
    );
  U4_ACCU_1n1s1_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(1),
      O => U4_ACCU_1n1s1_0_CY0G_3090
    );
  U4_ACCU_1n1s1_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30769z1,
      O => U4_ACCU_1n1s1_0_CYSELG_3082
    );
  U4_ix30769z1320 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(1),
      ADR2 => Mult_out(1),
      ADR3 => VCC,
      O => U4_nx30769z1
    );
  U4_ACCU_1n1s1_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_XORF_3146,
      O => U4_ACCU_1n1s1(2)
    );
  U4_ACCU_1n1s1_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      I0 => U4_ACCU_1n1s1_2_CYINIT_3145,
      I1 => U4_nx30770z1,
      O => U4_ACCU_1n1s1_2_XORF_3146
    );
  U4_ACCU_1n1s1_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0F_3144,
      IB => U4_ACCU_1n1s1_2_CYINIT_3145,
      SEL => U4_ACCU_1n1s1_2_CYSELF_3132,
      O => U4_ACCU_add21_1i1_muxcy_2_O
    );
  U4_ACCU_1n1s1_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0F_3144,
      IB => U4_ACCU_1n1s1_2_CY0F_3144,
      SEL => U4_ACCU_1n1s1_2_CYSELF_3132,
      O => U4_ACCU_1n1s1_2_CYMUXF2_3127
    );
  U4_ACCU_1n1s1_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_1_O,
      O => U4_ACCU_1n1s1_2_CYINIT_3145
    );
  U4_ACCU_1n1s1_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(2),
      O => U4_ACCU_1n1s1_2_CY0F_3144
    );
  U4_ACCU_1n1s1_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30770z1,
      O => U4_ACCU_1n1s1_2_CYSELF_3132
    );
  U4_ACCU_1n1s1_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_XORG_3134,
      O => U4_ACCU_1n1s1(3)
    );
  U4_ACCU_1n1s1_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_2_O,
      I1 => U4_nx30771z1,
      O => U4_ACCU_1n1s1_2_XORG_3134
    );
  U4_ACCU_1n1s1_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_2_CYMUXFAST_3131,
      O => U4_ACCU_add21_1i1_muxcy_3_O
    );
  U4_ACCU_1n1s1_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_1_O,
      O => U4_ACCU_1n1s1_2_FASTCARRY_3129
    );
  U4_ACCU_1n1s1_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      I0 => U4_ACCU_1n1s1_2_CYSELG_3118,
      I1 => U4_ACCU_1n1s1_2_CYSELF_3132,
      O => U4_ACCU_1n1s1_2_CYAND_3130
    );
  U4_ACCU_1n1s1_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CYMUXG2_3128,
      IB => U4_ACCU_1n1s1_2_FASTCARRY_3129,
      SEL => U4_ACCU_1n1s1_2_CYAND_3130,
      O => U4_ACCU_1n1s1_2_CYMUXFAST_3131
    );
  U4_ACCU_1n1s1_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      IA => U4_ACCU_1n1s1_2_CY0G_3126,
      IB => U4_ACCU_1n1s1_2_CYMUXF2_3127,
      SEL => U4_ACCU_1n1s1_2_CYSELG_3118,
      O => U4_ACCU_1n1s1_2_CYMUXG2_3128
    );
  U4_ACCU_1n1s1_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(3),
      O => U4_ACCU_1n1s1_2_CY0G_3126
    );
  U4_ACCU_1n1s1_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30771z1,
      O => U4_ACCU_1n1s1_2_CYSELG_3118
    );
  U4_ix30771z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y13"
    )
    port map (
      ADR0 => U4_Accu_out(3),
      ADR1 => Mult_out(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx30771z1
    );
  U4_ACCU_1n1s1_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_XORF_3185,
      O => U4_ACCU_1n1s1(4)
    );
  U4_ACCU_1n1s1_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      I0 => U4_ACCU_1n1s1_4_CYINIT_3184,
      I1 => U4_nx30772z1,
      O => U4_ACCU_1n1s1_4_XORF_3185
    );
  U4_ACCU_1n1s1_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0F_3183,
      IB => U4_ACCU_1n1s1_4_CYINIT_3184,
      SEL => U4_ACCU_1n1s1_4_CYSELF_3171,
      O => U4_ACCU_add21_1i1_muxcy_4_O
    );
  U4_ACCU_1n1s1_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0F_3183,
      IB => U4_ACCU_1n1s1_4_CY0F_3183,
      SEL => U4_ACCU_1n1s1_4_CYSELF_3171,
      O => U4_ACCU_1n1s1_4_CYMUXF2_3166
    );
  U4_ACCU_1n1s1_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_3_O,
      O => U4_ACCU_1n1s1_4_CYINIT_3184
    );
  U4_ACCU_1n1s1_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(4),
      O => U4_ACCU_1n1s1_4_CY0F_3183
    );
  U4_ACCU_1n1s1_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30772z1,
      O => U4_ACCU_1n1s1_4_CYSELF_3171
    );
  U4_ACCU_1n1s1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_XORG_3173,
      O => U4_ACCU_1n1s1(5)
    );
  U4_ACCU_1n1s1_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_4_O,
      I1 => U4_nx30773z1,
      O => U4_ACCU_1n1s1_4_XORG_3173
    );
  U4_ACCU_1n1s1_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_4_CYMUXFAST_3170,
      O => U4_ACCU_add21_1i1_muxcy_5_O
    );
  U4_ACCU_1n1s1_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_3_O,
      O => U4_ACCU_1n1s1_4_FASTCARRY_3168
    );
  U4_ACCU_1n1s1_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      I0 => U4_ACCU_1n1s1_4_CYSELG_3157,
      I1 => U4_ACCU_1n1s1_4_CYSELF_3171,
      O => U4_ACCU_1n1s1_4_CYAND_3169
    );
  U4_ACCU_1n1s1_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CYMUXG2_3167,
      IB => U4_ACCU_1n1s1_4_FASTCARRY_3168,
      SEL => U4_ACCU_1n1s1_4_CYAND_3169,
      O => U4_ACCU_1n1s1_4_CYMUXFAST_3170
    );
  U4_ACCU_1n1s1_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      IA => U4_ACCU_1n1s1_4_CY0G_3165,
      IB => U4_ACCU_1n1s1_4_CYMUXF2_3166,
      SEL => U4_ACCU_1n1s1_4_CYSELG_3157,
      O => U4_ACCU_1n1s1_4_CYMUXG2_3167
    );
  U4_ACCU_1n1s1_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(5),
      O => U4_ACCU_1n1s1_4_CY0G_3165
    );
  U4_ACCU_1n1s1_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30773z1,
      O => U4_ACCU_1n1s1_4_CYSELG_3157
    );
  U4_ix30773z1320 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X14Y14"
    )
    port map (
      ADR0 => U4_Accu_out(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mult_out(5),
      O => U4_nx30773z1
    );
  U4_ACCU_1n1s1_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_XORF_3224,
      O => U4_ACCU_1n1s1(6)
    );
  U4_ACCU_1n1s1_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      I0 => U4_ACCU_1n1s1_6_CYINIT_3223,
      I1 => U4_nx30774z1,
      O => U4_ACCU_1n1s1_6_XORF_3224
    );
  U4_ACCU_1n1s1_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0F_3222,
      IB => U4_ACCU_1n1s1_6_CYINIT_3223,
      SEL => U4_ACCU_1n1s1_6_CYSELF_3210,
      O => U4_ACCU_add21_1i1_muxcy_6_O
    );
  U4_ACCU_1n1s1_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0F_3222,
      IB => U4_ACCU_1n1s1_6_CY0F_3222,
      SEL => U4_ACCU_1n1s1_6_CYSELF_3210,
      O => U4_ACCU_1n1s1_6_CYMUXF2_3205
    );
  U4_ACCU_1n1s1_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_5_O,
      O => U4_ACCU_1n1s1_6_CYINIT_3223
    );
  U4_ACCU_1n1s1_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(6),
      O => U4_ACCU_1n1s1_6_CY0F_3222
    );
  U4_ACCU_1n1s1_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30774z1,
      O => U4_ACCU_1n1s1_6_CYSELF_3210
    );
  U4_ACCU_1n1s1_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_XORG_3212,
      O => U4_ACCU_1n1s1(7)
    );
  U4_ACCU_1n1s1_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_6_O,
      I1 => U4_nx30775z1,
      O => U4_ACCU_1n1s1_6_XORG_3212
    );
  U4_ACCU_1n1s1_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_6_CYMUXFAST_3209,
      O => U4_ACCU_add21_1i1_muxcy_7_O
    );
  U4_ACCU_1n1s1_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_5_O,
      O => U4_ACCU_1n1s1_6_FASTCARRY_3207
    );
  U4_ACCU_1n1s1_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      I0 => U4_ACCU_1n1s1_6_CYSELG_3196,
      I1 => U4_ACCU_1n1s1_6_CYSELF_3210,
      O => U4_ACCU_1n1s1_6_CYAND_3208
    );
  U4_ACCU_1n1s1_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CYMUXG2_3206,
      IB => U4_ACCU_1n1s1_6_FASTCARRY_3207,
      SEL => U4_ACCU_1n1s1_6_CYAND_3208,
      O => U4_ACCU_1n1s1_6_CYMUXFAST_3209
    );
  U4_ACCU_1n1s1_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => U4_ACCU_1n1s1_6_CY0G_3204,
      IB => U4_ACCU_1n1s1_6_CYMUXF2_3205,
      SEL => U4_ACCU_1n1s1_6_CYSELG_3196,
      O => U4_ACCU_1n1s1_6_CYMUXG2_3206
    );
  U4_ACCU_1n1s1_6_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(7),
      O => U4_ACCU_1n1s1_6_CY0G_3204
    );
  U4_ACCU_1n1s1_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30775z1,
      O => U4_ACCU_1n1s1_6_CYSELG_3196
    );
  U4_ix30775z1320 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X14Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(7),
      ADR2 => Mult_out(7),
      ADR3 => VCC,
      O => U4_nx30775z1
    );
  U4_ACCU_1n1s1_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_XORF_3263,
      O => U4_ACCU_1n1s1(8)
    );
  U4_ACCU_1n1s1_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      I0 => U4_ACCU_1n1s1_8_CYINIT_3262,
      I1 => U4_nx30776z1,
      O => U4_ACCU_1n1s1_8_XORF_3263
    );
  U4_ACCU_1n1s1_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0F_3261,
      IB => U4_ACCU_1n1s1_8_CYINIT_3262,
      SEL => U4_ACCU_1n1s1_8_CYSELF_3249,
      O => U4_ACCU_add21_1i1_muxcy_8_O
    );
  U4_ACCU_1n1s1_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0F_3261,
      IB => U4_ACCU_1n1s1_8_CY0F_3261,
      SEL => U4_ACCU_1n1s1_8_CYSELF_3249,
      O => U4_ACCU_1n1s1_8_CYMUXF2_3244
    );
  U4_ACCU_1n1s1_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_7_O,
      O => U4_ACCU_1n1s1_8_CYINIT_3262
    );
  U4_ACCU_1n1s1_8_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(8),
      O => U4_ACCU_1n1s1_8_CY0F_3261
    );
  U4_ACCU_1n1s1_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30776z1,
      O => U4_ACCU_1n1s1_8_CYSELF_3249
    );
  U4_ACCU_1n1s1_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_XORG_3251,
      O => U4_ACCU_1n1s1(9)
    );
  U4_ACCU_1n1s1_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_8_O,
      I1 => U4_nx30777z1,
      O => U4_ACCU_1n1s1_8_XORG_3251
    );
  U4_ACCU_1n1s1_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_8_CYMUXFAST_3248,
      O => U4_ACCU_add21_1i1_muxcy_9_O
    );
  U4_ACCU_1n1s1_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_7_O,
      O => U4_ACCU_1n1s1_8_FASTCARRY_3246
    );
  U4_ACCU_1n1s1_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      I0 => U4_ACCU_1n1s1_8_CYSELG_3235,
      I1 => U4_ACCU_1n1s1_8_CYSELF_3249,
      O => U4_ACCU_1n1s1_8_CYAND_3247
    );
  U4_ACCU_1n1s1_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CYMUXG2_3245,
      IB => U4_ACCU_1n1s1_8_FASTCARRY_3246,
      SEL => U4_ACCU_1n1s1_8_CYAND_3247,
      O => U4_ACCU_1n1s1_8_CYMUXFAST_3248
    );
  U4_ACCU_1n1s1_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => U4_ACCU_1n1s1_8_CY0G_3243,
      IB => U4_ACCU_1n1s1_8_CYMUXF2_3244,
      SEL => U4_ACCU_1n1s1_8_CYSELG_3235,
      O => U4_ACCU_1n1s1_8_CYMUXG2_3245
    );
  U4_ACCU_1n1s1_8_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(9),
      O => U4_ACCU_1n1s1_8_CY0G_3243
    );
  U4_ACCU_1n1s1_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx30777z1,
      O => U4_ACCU_1n1s1_8_CYSELG_3235
    );
  U4_ix30777z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(9),
      ADR2 => VCC,
      ADR3 => Mult_out(9),
      O => U4_nx30777z1
    );
  U4_ACCU_1n1s1_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_XORF_3302,
      O => U4_ACCU_1n1s1(10)
    );
  U4_ACCU_1n1s1_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      I0 => U4_ACCU_1n1s1_10_CYINIT_3301,
      I1 => U4_nx5893z1,
      O => U4_ACCU_1n1s1_10_XORF_3302
    );
  U4_ACCU_1n1s1_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0F_3300,
      IB => U4_ACCU_1n1s1_10_CYINIT_3301,
      SEL => U4_ACCU_1n1s1_10_CYSELF_3288,
      O => U4_ACCU_add21_1i1_muxcy_10_O
    );
  U4_ACCU_1n1s1_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0F_3300,
      IB => U4_ACCU_1n1s1_10_CY0F_3300,
      SEL => U4_ACCU_1n1s1_10_CYSELF_3288,
      O => U4_ACCU_1n1s1_10_CYMUXF2_3283
    );
  U4_ACCU_1n1s1_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_9_O,
      O => U4_ACCU_1n1s1_10_CYINIT_3301
    );
  U4_ACCU_1n1s1_10_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(10),
      O => U4_ACCU_1n1s1_10_CY0F_3300
    );
  U4_ACCU_1n1s1_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5893z1,
      O => U4_ACCU_1n1s1_10_CYSELF_3288
    );
  U4_ACCU_1n1s1_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_XORG_3290,
      O => U4_ACCU_1n1s1(11)
    );
  U4_ACCU_1n1s1_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_10_O,
      I1 => U4_nx5894z1,
      O => U4_ACCU_1n1s1_10_XORG_3290
    );
  U4_ACCU_1n1s1_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_10_CYMUXFAST_3287,
      O => U4_ACCU_add21_1i1_muxcy_11_O
    );
  U4_ACCU_1n1s1_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_9_O,
      O => U4_ACCU_1n1s1_10_FASTCARRY_3285
    );
  U4_ACCU_1n1s1_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      I0 => U4_ACCU_1n1s1_10_CYSELG_3274,
      I1 => U4_ACCU_1n1s1_10_CYSELF_3288,
      O => U4_ACCU_1n1s1_10_CYAND_3286
    );
  U4_ACCU_1n1s1_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CYMUXG2_3284,
      IB => U4_ACCU_1n1s1_10_FASTCARRY_3285,
      SEL => U4_ACCU_1n1s1_10_CYAND_3286,
      O => U4_ACCU_1n1s1_10_CYMUXFAST_3287
    );
  U4_ACCU_1n1s1_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => U4_ACCU_1n1s1_10_CY0G_3282,
      IB => U4_ACCU_1n1s1_10_CYMUXF2_3283,
      SEL => U4_ACCU_1n1s1_10_CYSELG_3274,
      O => U4_ACCU_1n1s1_10_CYMUXG2_3284
    );
  U4_ACCU_1n1s1_10_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_Accu_out(11),
      O => U4_ACCU_1n1s1_10_CY0G_3282
    );
  U4_ACCU_1n1s1_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5894z1,
      O => U4_ACCU_1n1s1_10_CYSELG_3274
    );
  U4_ix5894z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => Mult_out(11),
      ADR1 => U4_Accu_out(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx5894z1
    );
  U4_ACCU_1n1s1_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_XORF_3341,
      O => U4_ACCU_1n1s1(12)
    );
  U4_ACCU_1n1s1_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      I0 => U4_ACCU_1n1s1_12_CYINIT_3340,
      I1 => U4_nx5895z1,
      O => U4_ACCU_1n1s1_12_XORF_3341
    );
  U4_ACCU_1n1s1_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0F_3339,
      IB => U4_ACCU_1n1s1_12_CYINIT_3340,
      SEL => U4_ACCU_1n1s1_12_CYSELF_3327,
      O => U4_ACCU_add21_1i1_muxcy_12_O
    );
  U4_ACCU_1n1s1_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0F_3339,
      IB => U4_ACCU_1n1s1_12_CY0F_3339,
      SEL => U4_ACCU_1n1s1_12_CYSELF_3327,
      O => U4_ACCU_1n1s1_12_CYMUXF2_3322
    );
  U4_ACCU_1n1s1_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_11_O,
      O => U4_ACCU_1n1s1_12_CYINIT_3340
    );
  U4_ACCU_1n1s1_12_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(12),
      O => U4_ACCU_1n1s1_12_CY0F_3339
    );
  U4_ACCU_1n1s1_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5895z1,
      O => U4_ACCU_1n1s1_12_CYSELF_3327
    );
  U4_ACCU_1n1s1_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_XORG_3329,
      O => U4_ACCU_1n1s1(13)
    );
  U4_ACCU_1n1s1_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_12_O,
      I1 => U4_nx5896z1,
      O => U4_ACCU_1n1s1_12_XORG_3329
    );
  U4_ACCU_1n1s1_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_12_CYMUXFAST_3326,
      O => U4_ACCU_add21_1i1_muxcy_13_O
    );
  U4_ACCU_1n1s1_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_11_O,
      O => U4_ACCU_1n1s1_12_FASTCARRY_3324
    );
  U4_ACCU_1n1s1_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      I0 => U4_ACCU_1n1s1_12_CYSELG_3313,
      I1 => U4_ACCU_1n1s1_12_CYSELF_3327,
      O => U4_ACCU_1n1s1_12_CYAND_3325
    );
  U4_ACCU_1n1s1_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CYMUXG2_3323,
      IB => U4_ACCU_1n1s1_12_FASTCARRY_3324,
      SEL => U4_ACCU_1n1s1_12_CYAND_3325,
      O => U4_ACCU_1n1s1_12_CYMUXFAST_3326
    );
  U4_ACCU_1n1s1_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => U4_ACCU_1n1s1_12_CY0G_3321,
      IB => U4_ACCU_1n1s1_12_CYMUXF2_3322,
      SEL => U4_ACCU_1n1s1_12_CYSELG_3313,
      O => U4_ACCU_1n1s1_12_CYMUXG2_3323
    );
  U4_ACCU_1n1s1_12_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(13),
      O => U4_ACCU_1n1s1_12_CY0G_3321
    );
  U4_ACCU_1n1s1_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5896z1,
      O => U4_ACCU_1n1s1_12_CYSELG_3313
    );
  U4_ix5896z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X14Y18"
    )
    port map (
      ADR0 => Accu_out(13),
      ADR1 => VCC,
      ADR2 => Mult_out(13),
      ADR3 => VCC,
      O => U4_nx5896z1
    );
  U4_ACCU_1n1s1_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_XORF_3380,
      O => U4_ACCU_1n1s1(14)
    );
  U4_ACCU_1n1s1_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      I0 => U4_ACCU_1n1s1_14_CYINIT_3379,
      I1 => U4_nx5897z1,
      O => U4_ACCU_1n1s1_14_XORF_3380
    );
  U4_ACCU_1n1s1_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0F_3378,
      IB => U4_ACCU_1n1s1_14_CYINIT_3379,
      SEL => U4_ACCU_1n1s1_14_CYSELF_3366,
      O => U4_ACCU_add21_1i1_muxcy_14_O
    );
  U4_ACCU_1n1s1_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0F_3378,
      IB => U4_ACCU_1n1s1_14_CY0F_3378,
      SEL => U4_ACCU_1n1s1_14_CYSELF_3366,
      O => U4_ACCU_1n1s1_14_CYMUXF2_3361
    );
  U4_ACCU_1n1s1_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_13_O,
      O => U4_ACCU_1n1s1_14_CYINIT_3379
    );
  U4_ACCU_1n1s1_14_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(14),
      O => U4_ACCU_1n1s1_14_CY0F_3378
    );
  U4_ACCU_1n1s1_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5897z1,
      O => U4_ACCU_1n1s1_14_CYSELF_3366
    );
  U4_ACCU_1n1s1_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_XORG_3368,
      O => U4_ACCU_1n1s1(15)
    );
  U4_ACCU_1n1s1_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_14_O,
      I1 => U4_nx5898z1,
      O => U4_ACCU_1n1s1_14_XORG_3368
    );
  U4_ACCU_1n1s1_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1s1_14_CYMUXFAST_3365,
      O => U4_ACCU_add21_1i1_muxcy_15_O
    );
  U4_ACCU_1n1s1_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_13_O,
      O => U4_ACCU_1n1s1_14_FASTCARRY_3363
    );
  U4_ACCU_1n1s1_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      I0 => U4_ACCU_1n1s1_14_CYSELG_3352,
      I1 => U4_ACCU_1n1s1_14_CYSELF_3366,
      O => U4_ACCU_1n1s1_14_CYAND_3364
    );
  U4_ACCU_1n1s1_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CYMUXG2_3362,
      IB => U4_ACCU_1n1s1_14_FASTCARRY_3363,
      SEL => U4_ACCU_1n1s1_14_CYAND_3364,
      O => U4_ACCU_1n1s1_14_CYMUXFAST_3365
    );
  U4_ACCU_1n1s1_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => U4_ACCU_1n1s1_14_CY0G_3360,
      IB => U4_ACCU_1n1s1_14_CYMUXF2_3361,
      SEL => U4_ACCU_1n1s1_14_CYSELG_3352,
      O => U4_ACCU_1n1s1_14_CYMUXG2_3362
    );
  U4_ACCU_1n1s1_14_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out(15),
      O => U4_ACCU_1n1s1_14_CY0G_3360
    );
  U4_ACCU_1n1s1_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y19",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx5898z1,
      O => U4_ACCU_1n1s1_14_CYSELG_3352
    );
  U4_ix5898z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => Accu_out(15),
      ADR1 => Mult_out(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx5898z1
    );
  Accu_out_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      O => Accu_out_16_LOGIC_ZERO_3402
    );
  Accu_out_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_XORF_3427,
      O => Accu_out_16_DXMUX_3429
    );
  Accu_out_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      I0 => Accu_out_16_CYINIT_3426,
      I1 => Accu_out_16_F,
      O => Accu_out_16_XORF_3427
    );
  Accu_out_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_3402,
      IB => Accu_out_16_CYINIT_3426,
      SEL => Accu_out_16_CYSELF_3408,
      O => U4_ACCU_add21_1i1_muxcy_16_O
    );
  Accu_out_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_3402,
      IB => Accu_out_16_LOGIC_ZERO_3402,
      SEL => Accu_out_16_CYSELF_3408,
      O => Accu_out_16_CYMUXF2_3403
    );
  Accu_out_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_15_O,
      O => Accu_out_16_CYINIT_3426
    );
  Accu_out_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_F,
      O => Accu_out_16_CYSELF_3408
    );
  Accu_out_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_XORG_3410,
      O => Accu_out_16_DYMUX_3412
    );
  Accu_out_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_16_O,
      I1 => Accu_out_16_G,
      O => Accu_out_16_XORG_3410
    );
  Accu_out_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_add21_1i1_muxcy_15_O,
      O => Accu_out_16_FASTCARRY_3405
    );
  Accu_out_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      I0 => Accu_out_16_CYSELG_3393,
      I1 => Accu_out_16_CYSELF_3408,
      O => Accu_out_16_CYAND_3406
    );
  Accu_out_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => Accu_out_16_CYMUXG2_3404,
      IB => Accu_out_16_FASTCARRY_3405,
      SEL => Accu_out_16_CYAND_3406,
      O => Accu_out_16_CYMUXFAST_3407
    );
  Accu_out_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => Accu_out_16_LOGIC_ZERO_3402,
      IB => Accu_out_16_CYMUXF2_3403,
      SEL => Accu_out_16_CYSELG_3393,
      O => Accu_out_16_CYMUXG2_3404
    );
  Accu_out_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_G,
      O => Accu_out_16_CYSELG_3393
    );
  Accu_out_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1_0,
      O => Accu_out_16_SRINV_3391
    );
  Accu_out_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_16_CLKINV_3390
    );
  Accu_out_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      O => Accu_out_18_LOGIC_ZERO_3471
    );
  Accu_out_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_XORF_3472,
      O => Accu_out_18_DXMUX_3474
    );
  Accu_out_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      I0 => Accu_out_18_CYINIT_3470,
      I1 => Accu_out_18_F,
      O => Accu_out_18_XORF_3472
    );
  Accu_out_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      IA => Accu_out_18_LOGIC_ZERO_3471,
      IB => Accu_out_18_CYINIT_3470,
      SEL => Accu_out_18_CYSELF_3461,
      O => U4_ACCU_add21_1i1_muxcy_18_O
    );
  Accu_out_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_16_CYMUXFAST_3407,
      O => Accu_out_18_CYINIT_3470
    );
  Accu_out_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_F,
      O => Accu_out_18_CYSELF_3461
    );
  Accu_out_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => Accu_out_18_XORG_3453,
      O => Accu_out_18_DYMUX_3455
    );
  Accu_out_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      I0 => U4_ACCU_add21_1i1_muxcy_18_O,
      I1 => Accu_out_19_rt_3450,
      O => Accu_out_18_XORG_3453
    );
  Accu_out_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_nx24035z1_0,
      O => Accu_out_18_SRINV_3442
    );
  Accu_out_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => Accu_out_18_CLKINV_3441
    );
  U4_reg_ACCU_19_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => Accu_out_18_DYMUX_3455,
      CE => VCC,
      CLK => Accu_out_18_CLKINV_3441,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_18_SRINV_3442,
      O => Accu_out(19)
    );
  Accu_out_19_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => Accu_out(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Accu_out_19_rt_3450
    );
  nx36612z62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z62,
      O => nx36612z62_0
    );
  nx36612z62_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z62_GMC15,
      O => nx36612z62_DIF_MUX_3513
    );
  nx36612z62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z61,
      O => nx36612z61_0
    );
  nx36612z62_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(2),
      O => nx36612z62_DIG_MUX_3500
    );
  nx36612z62_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z62_SRINV_3492
    );
  nx36612z62_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z62_CLKINV_3498
    );
  nx36612z52_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z52,
      O => nx36612z52_0
    );
  nx36612z52_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z52_GMC15,
      O => nx36612z52_DIF_MUX_3558
    );
  nx36612z52_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z51,
      O => nx36612z51_0
    );
  nx36612z52_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(4),
      O => nx36612z52_DIG_MUX_3545
    );
  nx36612z52_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z52_SRINV_3537
    );
  nx36612z52_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z52_CLKINV_3543
    );
  nx36612z42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z42,
      O => nx36612z42_0
    );
  nx36612z42_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z42_GMC15,
      O => nx36612z42_DIF_MUX_3603
    );
  nx36612z42_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z41,
      O => nx36612z41_0
    );
  nx36612z42_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(6),
      O => nx36612z42_DIG_MUX_3590
    );
  nx36612z42_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z42_SRINV_3582
    );
  nx36612z42_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y17",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z42_CLKINV_3588
    );
  nx36612z72_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z72,
      O => nx36612z72_0
    );
  nx36612z72_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z72_GMC15,
      O => nx36612z72_DIF_MUX_3648
    );
  nx36612z72_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z71,
      O => nx36612z71_0
    );
  nx36612z72_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(0),
      O => nx36612z72_DIG_MUX_3635
    );
  nx36612z72_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z72_SRINV_3627
    );
  nx36612z72_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z72_CLKINV_3633
    );
  nx36612z67_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z67,
      O => nx36612z67_0
    );
  nx36612z67_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z67_GMC15,
      O => nx36612z67_DIF_MUX_3693
    );
  nx36612z67_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z66,
      O => nx36612z66_0
    );
  nx36612z67_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(1),
      O => nx36612z67_DIG_MUX_3680
    );
  nx36612z67_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z67_SRINV_3672
    );
  nx36612z67_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y18",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z67_CLKINV_3678
    );
  nx36612z57_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z57,
      O => nx36612z57_0
    );
  nx36612z57_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z57_GMC15,
      O => nx36612z57_DIF_MUX_3738
    );
  nx36612z57_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z56,
      O => nx36612z56_0
    );
  nx36612z57_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(3),
      O => nx36612z57_DIG_MUX_3725
    );
  nx36612z57_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z57_SRINV_3717
    );
  nx36612z57_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X8Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z57_CLKINV_3723
    );
  nx36612z47_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z47,
      O => nx36612z47_0
    );
  nx36612z47_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z47_GMC15,
      O => nx36612z47_DIF_MUX_3783
    );
  nx36612z47_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z46,
      O => nx36612z46_0
    );
  nx36612z47_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(5),
      O => nx36612z47_DIG_MUX_3770
    );
  nx36612z47_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z47_SRINV_3762
    );
  nx36612z47_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X10Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z47_CLKINV_3768
    );
  nx36612z37_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z37,
      O => nx36612z37_0
    );
  nx36612z37_DIF_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z37_GMC15,
      O => nx36612z37_DIF_MUX_3828
    );
  nx36612z37_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z36,
      O => nx36612z36_0
    );
  nx36612z37_DIG_MUX : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In_mem(7),
      O => nx36612z37_DIG_MUX_3815
    );
  nx36612z37_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => Delay_Line_sample_shift,
      O => nx36612z37_SRINV_3807
    );
  nx36612z37_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X16Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => nx36612z37_CLKINV_3813
    );
  Filter_In_ibuf_0_Q : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(0),
      O => Filter_In_0_INBUF
    );
  ADC_csb_obuf : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => ADC_csb_O,
      O => ADC_csb
    );
  Filter_In_ibuf_1_Q : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(1),
      O => Filter_In_1_INBUF
    );
  Filter_In_ibuf_2_Q : X_BUF
    generic map(
      LOC => "PAD126",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(2),
      O => Filter_In_2_INBUF
    );
  ADC_Rdb_obuf : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => ADC_Rdb_O,
      O => ADC_Rdb
    );
  Filter_In_ibuf_3_Q : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(3),
      O => Filter_In_3_INBUF
    );
  Filter_In_ibuf_4_Q : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(4),
      O => Filter_In_4_INBUF
    );
  Filter_In_ibuf_5_Q : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(5),
      O => Filter_In_5_INBUF
    );
  Filter_In_ibuf_6_Q : X_BUF
    generic map(
      LOC => "PAD1",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(6),
      O => Filter_In_6_INBUF
    );
  ADC_Convstb_obuf : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => ADC_Convstb_O,
      O => ADC_Convstb
    );
  Filter_In_ibuf_7_Q : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_In(7),
      O => Filter_In_7_INBUF
    );
  LDACb_obuf : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => LDACb_O,
      O => LDACb
    );
  Filter_Out_obuf_0_Q : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => Filter_Out_0_O,
      O => Filter_Out(0)
    );
  Filter_Out_obuf_1_Q : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => Filter_Out_1_O,
      O => Filter_Out(1)
    );
  Filter_Out_obuf_2_Q : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => Filter_Out_2_O,
      O => Filter_Out(2)
    );
  Filter_Out_obuf_3_Q : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => Filter_Out_3_O,
      O => Filter_Out(3)
    );
  Filter_Out_obuf_4_Q : X_OBUF
    generic map(
      LOC => "PAD156"
    )
    port map (
      I => Filter_Out_4_O,
      O => Filter_Out(4)
    );
  Filter_Out_obuf_5_Q : X_OBUF
    generic map(
      LOC => "PAD132"
    )
    port map (
      I => Filter_Out_5_O,
      O => Filter_Out(5)
    );
  Filter_Out_obuf_6_Q : X_OBUF
    generic map(
      LOC => "PAD155"
    )
    port map (
      I => Filter_Out_6_O,
      O => Filter_Out(6)
    );
  Filter_Out_obuf_7_Q : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => Filter_Out_7_O,
      O => Filter_Out(7)
    );
  ADC_Eocb_ibuf : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => ADC_Eocb,
      O => ADC_Eocb_INBUF
    );
  ADC_Eocb_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 526 ps
    )
    port map (
      I => ADC_Eocb_INBUF,
      O => ADC_Eocb_int
    );
  DAC_WRb_obuf : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => DAC_WRb_O,
      O => DAC_WRb
    );
  CLK_ibuf_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  CLRb_obuf : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => CLRb_O,
      O => CLRb
    );
  RESET_ibuf : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET,
      O => RESET_INBUF
    );
  RESET_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD86",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_INBUF,
      O => RESET_int
    );
  DAC_csb_obuf : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => DAC_csb_O,
      O => DAC_csb
    );
  CLK_ibuf_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => CLK_ibuf_BUFG_I0_INV,
      I1 => GND,
      S => CLK_ibuf_BUFG_S_INVNOT,
      O => CLK_int
    );
  CLK_ibuf_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => CLK_ibuf_BUFG_S_INVNOT
    );
  CLK_ibuf_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_ibuf_BUFG_I0_INV
    );
  U3_Mult_out_multu16_0_ix2247z10733 : X_MULT18X18
    generic map(
      LOC => "MULT18X18_X0Y2"
    )
    port map (
      A(17) => '0',
      A(16) => '0',
      A(15) => '0',
      A(14) => '0',
      A(13) => '0',
      A(12) => '0',
      A(11) => '0',
      A(10) => '0',
      A(9) => '0',
      A(8) => '0',
      A(7) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_7_Q,
      A(6) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_6_Q,
      A(5) => nx36612z44_0,
      A(4) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_4_Q,
      A(3) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_3_Q,
      A(2) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_2_Q,
      A(1) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_1_Q,
      A(0) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_0_Q,
      B(17) => '0',
      B(16) => '0',
      B(15) => '0',
      B(14) => '0',
      B(13) => '0',
      B(12) => '0',
      B(11) => '0',
      B(10) => '0',
      B(9) => '0',
      B(8) => '0',
      B(7) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(7),
      B(6) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(6),
      B(5) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(5),
      B(4) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(4),
      B(3) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(3),
      B(2) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(2),
      B(1) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(1),
      B(0) => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(0),
      P(35) => U3_Mult_out_multu16_0_ix2247z10733_PROD35,
      P(34) => U3_Mult_out_multu16_0_ix2247z10733_PROD34,
      P(33) => U3_Mult_out_multu16_0_ix2247z10733_PROD33,
      P(32) => U3_Mult_out_multu16_0_ix2247z10733_PROD32,
      P(31) => U3_Mult_out_multu16_0_ix2247z10733_PROD31,
      P(30) => U3_Mult_out_multu16_0_ix2247z10733_PROD30,
      P(29) => U3_Mult_out_multu16_0_ix2247z10733_PROD29,
      P(28) => U3_Mult_out_multu16_0_ix2247z10733_PROD28,
      P(27) => U3_Mult_out_multu16_0_ix2247z10733_PROD27,
      P(26) => U3_Mult_out_multu16_0_ix2247z10733_PROD26,
      P(25) => U3_Mult_out_multu16_0_ix2247z10733_PROD25,
      P(24) => U3_Mult_out_multu16_0_ix2247z10733_PROD24,
      P(23) => U3_Mult_out_multu16_0_ix2247z10733_PROD23,
      P(22) => U3_Mult_out_multu16_0_ix2247z10733_PROD22,
      P(21) => U3_Mult_out_multu16_0_ix2247z10733_PROD21,
      P(20) => U3_Mult_out_multu16_0_ix2247z10733_PROD20,
      P(19) => U3_Mult_out_multu16_0_ix2247z10733_PROD19,
      P(18) => U3_Mult_out_multu16_0_ix2247z10733_PROD18,
      P(17) => U3_Mult_out_multu16_0_ix2247z10733_PROD17,
      P(16) => U3_Mult_out_multu16_0_ix2247z10733_PROD16,
      P(15) => Mult_out(15),
      P(14) => Mult_out(14),
      P(13) => Mult_out(13),
      P(12) => Mult_out(12),
      P(11) => Mult_out(11),
      P(10) => Mult_out(10),
      P(9) => Mult_out(9),
      P(8) => Mult_out(8),
      P(7) => Mult_out(7),
      P(6) => Mult_out(6),
      P(5) => Mult_out(5),
      P(4) => Mult_out(4),
      P(3) => Mult_out(3),
      P(2) => Mult_out(2),
      P(1) => Mult_out(1),
      P(0) => Mult_out(0)
    );
  U7_current_state_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y41",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx9275z1,
      O => U7_current_state_1_DXMUX_4135
    );
  U7_current_state_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y41",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx10272z1,
      O => U7_current_state_1_DYMUX_4121
    );
  U7_current_state_1_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y41",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U7_current_state_1_SRINV_4112
    );
  U7_current_state_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y41",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U7_current_state_1_CLKINV_4111
    );
  ix10272z1534 : X_LUT4
    generic map(
      INIT => X"F0FC",
      LOC => "SLICE_X12Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U7_current_state(0),
      ADR2 => FSM_ADC_read_en,
      ADR3 => ack_F2ADC,
      O => nx10272z1
    );
  U4_Accu_out_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(2),
      O => U4_Accu_out_2_DXMUX_4173
    );
  U4_Accu_out_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(1),
      O => U4_Accu_out_2_DYMUX_4161
    );
  U4_Accu_out_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_2_SRINV_4153
    );
  U4_Accu_out_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y13",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_2_CLKINV_4152
    );
  U4_ix7465z53740 : X_LUT4
    generic map(
      INIT => X"CDC8",
      LOC => "SLICE_X15Y13"
    )
    port map (
      ADR0 => U6_current_state_0_Q,
      ADR1 => Mult_out(1),
      ADR2 => ack_F2ADC,
      ADR3 => U4_ACCU_1n1s1(1),
      O => U4_ACCU_1n1ss1(1)
    );
  U7_current_state_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y42",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx7281z1,
      O => U7_current_state_3_DXMUX_4211
    );
  U7_current_state_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y42",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx8278z1,
      O => U7_current_state_3_DYMUX_4197
    );
  U7_current_state_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y42",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U7_current_state_3_SRINV_4188
    );
  U7_current_state_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y42",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U7_current_state_3_CLKINV_4187
    );
  ix8278z1550 : X_LUT4
    generic map(
      INIT => X"FAAA",
      LOC => "SLICE_X12Y42"
    )
    port map (
      ADR0 => U7_current_state(1),
      ADR1 => VCC,
      ADR2 => ADC_Eocb_int,
      ADR3 => U7_current_state(2),
      O => nx8278z1
    );
  U4_Accu_out_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(4),
      O => U4_Accu_out_4_DXMUX_4249
    );
  U4_Accu_out_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(3),
      O => U4_Accu_out_4_DYMUX_4237
    );
  U4_Accu_out_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_4_SRINV_4229
    );
  U4_Accu_out_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y12",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_4_CLKINV_4228
    );
  U4_ix5471z53740 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => Mult_out(3),
      ADR3 => U4_ACCU_1n1s1(3),
      O => U4_ACCU_1n1ss1(3)
    );
  U4_Accu_out_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(6),
      O => U4_Accu_out_6_DXMUX_4287
    );
  U4_Accu_out_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(5),
      O => U4_Accu_out_6_DYMUX_4275
    );
  U4_Accu_out_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_6_SRINV_4267
    );
  U4_Accu_out_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y15",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_6_CLKINV_4266
    );
  U4_ix3477z53740 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(5),
      ADR1 => Mult_out(5),
      ADR2 => U6_current_state_0_Q,
      ADR3 => ack_F2ADC,
      O => U4_ACCU_1n1ss1(5)
    );
  U4_Accu_out_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(8),
      O => U4_Accu_out_8_DXMUX_4325
    );
  U4_Accu_out_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(7),
      O => U4_Accu_out_8_DYMUX_4313
    );
  U4_Accu_out_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_8_SRINV_4305
    );
  U4_Accu_out_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y14",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_8_CLKINV_4304
    );
  U4_ix1483z53740 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U4_ACCU_1n1s1(7),
      ADR2 => U6_current_state_0_Q,
      ADR3 => Mult_out(7),
      O => U4_ACCU_1n1ss1(7)
    );
  ack_F2ADC_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx45424z1,
      O => ack_F2ADC_DYMUX_4346
    );
  ack_F2ADC_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => ack_F2ADC_SRINV_4336
    );
  ack_F2ADC_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => ack_F2ADC_CLKINV_4335
    );
  U4_Accu_out_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(10),
      O => U4_Accu_out_10_DXMUX_4384
    );
  U4_Accu_out_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => U4_ACCU_1n1ss1(9),
      O => U4_Accu_out_10_DYMUX_4372
    );
  U4_Accu_out_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => RESET_int,
      O => U4_Accu_out_10_SRINV_4364
    );
  U4_Accu_out_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y16",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLK_int,
      O => U4_Accu_out_10_CLKINV_4363
    );
  ix47418z5682 : X_LUT4
    generic map(
      INIT => X"0302",
      LOC => "SLICE_X12Y18"
    )
    port map (
      ADR0 => Buff_OE,
      ADR1 => nx48415z1,
      ADR2 => nx47418z2,
      ADR3 => U6_current_state_2_Q,
      O => nx47418z1
    );
  U4_ix65025z53740 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(9),
      ADR1 => U6_current_state_0_Q,
      ADR2 => ack_F2ADC,
      ADR3 => Mult_out(9),
      O => U4_ACCU_1n1ss1(9)
    );
  U6_reg_current_state_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => '0'
    )
    port map (
      I => Buff_OE_DXMUX_1351,
      CE => VCC,
      CLK => Buff_OE_CLKINV_1329,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Buff_OE_SRINV_1330,
      O => Buff_OE
    );
  reg_Rom_Address_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '1'
    )
    port map (
      I => Rom_Address_3_DYMUX_1377,
      CE => VCC,
      CLK => Rom_Address_3_CLKINV_1367,
      SET => GND,
      RST => GND,
      SSET => Rom_Address_3_SRINV_1368,
      SRST => GND,
      O => Rom_Address(2)
    );
  ix56532z45003 : X_LUT4
    generic map(
      INIT => X"FE01",
      LOC => "SLICE_X12Y16"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(1),
      ADR3 => Rom_Address(3),
      O => nx56532z1
    );
  reg_Rom_Address_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '1'
    )
    port map (
      I => Rom_Address_3_DXMUX_1389,
      CE => VCC,
      CLK => Rom_Address_3_CLKINV_1367,
      SET => GND,
      RST => GND,
      SSET => Rom_Address_3_SRINV_1368,
      SRST => GND,
      O => Rom_Address(3)
    );
  U4_reg_ACCU_11_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_11_DYMUX_1414,
      CE => VCC,
      CLK => U4_Accu_out_11_CLKINV_1405,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_11_SRINV_1406,
      O => U4_Accu_out(11)
    );
  U4_ix24035z1568 : X_LUT4
    generic map(
      INIT => X"FFFA",
      LOC => "SLICE_X15Y17"
    )
    port map (
      ADR0 => RESET_int,
      ADR1 => VCC,
      ADR2 => ack_F2ADC,
      ADR3 => U6_current_state_0_Q,
      O => U4_nx24035z1
    );
  U4_reg_ACCU_12_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y19",
      INIT => '0'
    )
    port map (
      I => Accu_out_13_DYMUX_1448,
      CE => VCC,
      CLK => Accu_out_13_CLKINV_1439,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_13_SRINV_1440,
      O => Accu_out(12)
    );
  U4_ix27026z53740 : X_LUT4
    generic map(
      INIT => X"CCCA",
      LOC => "SLICE_X15Y19"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(13),
      ADR1 => Mult_out(13),
      ADR2 => U6_current_state_0_Q,
      ADR3 => ack_F2ADC,
      O => U4_ACCU_1n1ss1(13)
    );
  U4_reg_ACCU_13_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y19",
      INIT => '0'
    )
    port map (
      I => Accu_out_13_DXMUX_1460,
      CE => VCC,
      CLK => Accu_out_13_CLKINV_1439,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_13_SRINV_1440,
      O => Accu_out(13)
    );
  U4_reg_ACCU_14_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      I => Accu_out_15_DYMUX_1486,
      CE => VCC,
      CLK => Accu_out_15_CLKINV_1477,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_15_SRINV_1478,
      O => Accu_out(14)
    );
  U4_ix25032z53740 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X15Y18"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U4_ACCU_1n1s1(15),
      ADR2 => U6_current_state_0_Q,
      ADR3 => Mult_out(15),
      O => U4_ACCU_1n1ss1(15)
    );
  U4_reg_ACCU_15_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      I => Accu_out_15_DXMUX_1498,
      CE => VCC,
      CLK => Accu_out_15_CLKINV_1477,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_15_SRINV_1478,
      O => Accu_out(15)
    );
  ix48_reg_x_1_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      I => nx21956z1_DYMUX_1512,
      CE => nx21956z1_CEINV_1508,
      CLK => nx21956z1_CLKINV_1509,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx21956z1_SRINV_1510,
      O => nx21956z1
    );
  ix48_reg_x_2_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => '0'
    )
    port map (
      I => nx27091z1_DYMUX_1743,
      CE => nx27091z1_CEINV_1739,
      CLK => nx27091z1_CLKINV_1740,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx27091z1_SRINV_1741,
      O => nx27091z1
    );
  U5_reg_Buff_out_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_7_DYMUX_1760,
      CE => Filter_Out_dup_0_7_CEINV_1756,
      CLK => Filter_Out_dup_0_7_CLKINV_1757,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_7_SRINV_1758,
      O => Filter_Out_dup_0(6)
    );
  U5_reg_Buff_out_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y9",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_7_DXMUX_1767,
      CE => Filter_Out_dup_0_7_CEINV_1756,
      CLK => Filter_Out_dup_0_7_CLKINV_1757,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_7_SRINV_1758,
      O => Filter_Out_dup_0(7)
    );
  ix36612z1329 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X19Y15"
    )
    port map (
      ADR0 => nx36612z23_0,
      ADR1 => nx36612z26_0,
      ADR2 => nx36612z29_0,
      ADR3 => nx36612z32,
      O => nx36612z22
    );
  ix55535z1512 : X_LUT4
    generic map(
      INIT => X"CF30",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(2),
      ADR2 => nx47418z3,
      ADR3 => Rom_Address(4),
      O => nx55535z1
    );
  reg_Rom_Address_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '1'
    )
    port map (
      I => Rom_Address_4_DXMUX_1825,
      CE => VCC,
      CLK => Rom_Address_4_CLKINV_1807,
      SET => GND,
      RST => GND,
      SSET => Rom_Address_4_SRINV_1808,
      SRST => GND,
      O => Rom_Address(4)
    );
  U7_reg_current_state_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => '0'
    )
    port map (
      I => FSM_ADC_read_en_DYMUX_1837,
      CE => VCC,
      CLK => FSM_ADC_read_en_CLKINV_1834,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => FSM_ADC_read_en_SRINV_1835,
      O => FSM_ADC_read_en
    );
  ix36612z22837 : X_LUT4
    generic map(
      INIT => X"00AC",
      LOC => "SLICE_X23Y17"
    )
    port map (
      ADR0 => nx36612z6,
      ADR1 => nx36612z5,
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(1),
      O => nx36612z4
    );
  ix36612z60092 : X_LUT4
    generic map(
      INIT => X"9E96",
      LOC => "SLICE_X12Y19"
    )
    port map (
      ADR0 => Rom_Address(0),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(3),
      O => nx36612z80
    );
  U9_reg_reg_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_5_DYMUX_1553,
      CE => Filter_In_mem_5_CEINV_1549,
      CLK => Filter_In_mem_5_CLKINV_1550,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_5_SRINV_1551,
      O => Filter_In_mem(4)
    );
  U9_reg_reg_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y37",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_5_DXMUX_1560,
      CE => Filter_In_mem_5_CEINV_1549,
      CLK => Filter_In_mem_5_CLKINV_1550,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_5_SRINV_1551,
      O => Filter_In_mem(5)
    );
  U5_reg_Buff_out_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y18",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_1_DYMUX_1577,
      CE => Filter_Out_dup_0_1_CEINV_1573,
      CLK => Filter_Out_dup_0_1_CLKINV_1574,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_1_SRINV_1575,
      O => Filter_Out_dup_0(0)
    );
  U5_reg_Buff_out_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y18",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_1_DXMUX_1584,
      CE => Filter_Out_dup_0_1_CEINV_1573,
      CLK => Filter_Out_dup_0_1_CLKINV_1574,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_1_SRINV_1575,
      O => Filter_Out_dup_0(1)
    );
  ix48_reg_x_31_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      I => nx36612z18_DYMUX_1599,
      CE => nx36612z18_CEINV_1595,
      CLK => nx36612z18_CLKINV_1596,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z18_SRINV_1597,
      O => nx36612z18
    );
  ix48_reg_x_23_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X23Y16",
      INIT => '0'
    )
    port map (
      I => nx19940z1_DYMUX_1614,
      CE => nx19940z1_CEINV_1610,
      CLK => nx19940z1_CLKINV_1611,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx19940z1_SRINV_1612,
      O => nx19940z1
    );
  ix48_reg_x_15_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X25Y14",
      INIT => '0'
    )
    port map (
      I => nx22423z1_DYMUX_1629,
      CE => nx22423z1_CEINV_1625,
      CLK => nx22423z1_CLKINV_1626,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx22423z1_SRINV_1627,
      O => nx22423z1
    );
  U9_reg_reg_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_7_DYMUX_1646,
      CE => Filter_In_mem_7_CEINV_1642,
      CLK => Filter_In_mem_7_CLKINV_1643,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_7_SRINV_1644,
      O => Filter_In_mem(6)
    );
  U9_reg_reg_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_7_DXMUX_1653,
      CE => Filter_In_mem_7_CEINV_1642,
      CLK => Filter_In_mem_7_CLKINV_1643,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_7_SRINV_1644,
      O => Filter_In_mem(7)
    );
  U5_reg_Buff_out_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_3_DYMUX_1670,
      CE => Filter_Out_dup_0_3_CEINV_1666,
      CLK => Filter_Out_dup_0_3_CLKINV_1667,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_3_SRINV_1668,
      O => Filter_Out_dup_0(2)
    );
  U5_reg_Buff_out_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_3_DXMUX_1677,
      CE => Filter_Out_dup_0_3_CEINV_1666,
      CLK => Filter_Out_dup_0_3_CLKINV_1667,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_3_SRINV_1668,
      O => Filter_Out_dup_0(3)
    );
  ix48_reg_x_8_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => '0'
    )
    port map (
      I => nx7635z1_DYMUX_1692,
      CE => nx7635z1_CEINV_1688,
      CLK => nx7635z1_CLKINV_1689,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx7635z1_SRINV_1690,
      O => nx7635z1
    );
  U5_reg_Buff_out_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_5_DYMUX_1721,
      CE => Filter_Out_dup_0_5_CEINV_1717,
      CLK => Filter_Out_dup_0_5_CLKINV_1718,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_5_SRINV_1719,
      O => Filter_Out_dup_0(4)
    );
  U5_reg_Buff_out_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y9",
      INIT => '0'
    )
    port map (
      I => Filter_Out_dup_0_5_DXMUX_1728,
      CE => Filter_Out_dup_0_5_CEINV_1717,
      CLK => Filter_Out_dup_0_5_CLKINV_1718,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_Out_dup_0_5_SRINV_1719,
      O => Filter_Out_dup_0(5)
    );
  ix36612z28365 : X_LUT4
    generic map(
      INIT => X"6968",
      LOC => "SLICE_X11Y15"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(4),
      ADR3 => Rom_Address(0),
      O => nx36612z83
    );
  ix48_reg_x_9_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      I => nx57149z1_DYMUX_2027,
      CE => nx57149z1_CEINV_2023,
      CLK => nx57149z1_CLKINV_2024,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx57149z1_SRINV_2025,
      O => nx57149z1
    );
  ix48_reg_x_10_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y14",
      INIT => '0'
    )
    port map (
      I => nx62284z1_DYMUX_2042,
      CE => nx62284z1_CEINV_2038,
      CLK => nx62284z1_CLKINV_2039,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx62284z1_SRINV_2040,
      O => nx62284z1
    );
  ix36612z44367 : X_LUT4
    generic map(
      INIT => X"A088",
      LOC => "SLICE_X19Y16"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => nx14805z1,
      ADR2 => nx19940z1,
      ADR3 => Rom_Address(0),
      O => nx36612z21
    );
  ix36612z2627 : X_LUT4
    generic map(
      INIT => X"001B",
      LOC => "SLICE_X7Y18"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z22_0,
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z40,
      O => nx36612z39
    );
  ix36612z2635 : X_LUT4
    generic map(
      INIT => X"010B",
      LOC => "SLICE_X6Y18"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z22_0,
      ADR2 => nx36612z50,
      ADR3 => nx36612z2_0,
      O => nx36612z49
    );
  reg_Rom_Address_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '1'
    )
    port map (
      I => Rom_Address_0_DYMUX_2143,
      CE => VCC,
      CLK => Rom_Address_0_CLKINV_2132,
      SET => GND,
      RST => GND,
      SSET => Rom_Address_0_SRINV_2133,
      SRST => GND,
      O => Rom_Address(1)
    );
  ix36612z22843 : X_LUT4
    generic map(
      INIT => X"00AC",
      LOC => "SLICE_X21Y18"
    )
    port map (
      ADR0 => nx36612z16,
      ADR1 => nx36612z15,
      ADR2 => Rom_Address(0),
      ADR3 => Rom_Address(1),
      O => nx36612z14
    );
  ix48_reg_x_24_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      I => nx36612z6_DYMUX_1901,
      CE => nx36612z6_CEINV_1897,
      CLK => nx36612z6_CLKINV_1898,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z6_SRINV_1899,
      O => nx36612z5
    );
  ix48_reg_x_25_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      I => nx36612z6_DXMUX_1908,
      CE => nx36612z6_CEINV_1897,
      CLK => nx36612z6_CLKINV_1898,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z6_SRINV_1899,
      O => nx36612z6
    );
  ix48_reg_x_16_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X24Y16",
      INIT => '0'
    )
    port map (
      I => nx27558z1_DYMUX_1923,
      CE => nx27558z1_CEINV_1919,
      CLK => nx27558z1_CLKINV_1920,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx27558z1_SRINV_1921,
      O => nx27558z1
    );
  U6_reg_current_state_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '1'
    )
    port map (
      I => U6_current_state_2_DYMUX_1951,
      CE => VCC,
      CLK => U6_current_state_2_CLKINV_1941,
      SET => GND,
      RST => GND,
      SSET => U6_current_state_2_SRINV_1942,
      SRST => GND,
      O => U6_current_state_0_Q
    );
  ix46421z1328 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => ack_F2ADC,
      ADR2 => VCC,
      ADR3 => nx47418z2,
      O => nx46421z1
    );
  U6_reg_current_state_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      I => U6_current_state_2_DXMUX_1965,
      CE => VCC,
      CLK => U6_current_state_2_CLKINV_1941,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U6_current_state_2_SRINV_1942,
      O => U6_current_state_2_Q
    );
  ix36612z22846 : X_LUT4
    generic map(
      INIT => X"0B08",
      LOC => "SLICE_X20Y15"
    )
    port map (
      ADR0 => nx9670z1,
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(1),
      ADR3 => nx4535z1,
      O => nx36612z20
    );
  ix36612z22859 : X_LUT4
    generic map(
      INIT => X"00B8",
      LOC => "SLICE_X21Y17"
    )
    port map (
      ADR0 => nx12153z1,
      ADR1 => Rom_Address(0),
      ADR2 => nx7018z1,
      ADR3 => Rom_Address(1),
      O => nx36612z33
    );
  reg_Rom_Address_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '1'
    )
    port map (
      I => Rom_Address_0_DXMUX_2156,
      CE => VCC,
      CLK => Rom_Address_0_CLKINV_2132,
      SET => GND,
      RST => GND,
      SSET => Rom_Address_0_SRINV_2133,
      SRST => GND,
      O => Rom_Address(0)
    );
  ix36612z15355 : X_LUT4
    generic map(
      INIT => X"663C",
      LOC => "SLICE_X8Y18"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => Rom_Address(4),
      ADR2 => Rom_Address(2),
      ADR3 => nx36612z78,
      O => nx36612z77
    );
  ix36612z1473 : X_LUT4
    generic map(
      INIT => X"05F5",
      LOC => "SLICE_X12Y17"
    )
    port map (
      ADR0 => nx36612z93,
      ADR1 => VCC,
      ADR2 => Rom_Address(1),
      ADR3 => nx36612z92_0,
      O => nx36612z91
    );
  ix48_reg_x_3_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => '0'
    )
    port map (
      I => nx32226z1_DYMUX_2218,
      CE => nx32226z1_CEINV_2214,
      CLK => nx32226z1_CLKINV_2215,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx32226z1_SRINV_2216,
      O => nx32226z1
    );
  ix36612z2597 : X_LUT4
    generic map(
      INIT => X"010D",
      LOC => "SLICE_X17Y18"
    )
    port map (
      ADR0 => nx36612z22_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z35,
      ADR3 => nx36612z2_0,
      O => nx36612z1
    );
  ix36612z2631 : X_LUT4
    generic map(
      INIT => X"0145",
      LOC => "SLICE_X6Y19"
    )
    port map (
      ADR0 => nx36612z45,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z22_0,
      ADR3 => nx36612z2_0,
      O => nx36612z44
    );
  ix36612z2639 : X_LUT4
    generic map(
      INIT => X"001B",
      LOC => "SLICE_X6Y16"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z22_0,
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z55,
      O => nx36612z54
    );
  ix36612z1469 : X_LUT4
    generic map(
      INIT => X"0AFA",
      LOC => "SLICE_X10Y19"
    )
    port map (
      ADR0 => nx36612z81,
      ADR1 => VCC,
      ADR2 => Rom_Address(1),
      ADR3 => nx36612z80_0,
      O => nx36612z79
    );
  ix36612z58666 : X_LUT4
    generic map(
      INIT => X"C080",
      LOC => "SLICE_X20Y20"
    )
    port map (
      ADR0 => nx36612z14_0,
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(2),
      ADR3 => nx36612z17,
      O => nx36612z13
    );
  ix36612z1466 : X_LUT4
    generic map(
      INIT => X"4747",
      LOC => "SLICE_X13Y16"
    )
    port map (
      ADR0 => nx36612z86_0,
      ADR1 => Rom_Address(1),
      ADR2 => nx36612z87,
      ADR3 => VCC,
      O => nx36612z85
    );
  ix36612z1540 : X_LUT4
    generic map(
      INIT => X"3020",
      LOC => "SLICE_X20Y16"
    )
    port map (
      ADR0 => nx36612z4_0,
      ADR1 => Rom_Address(2),
      ADR2 => Rom_Address(3),
      ADR3 => nx36612z7,
      O => nx36612z3
    );
  ix36612z1556 : X_LUT4
    generic map(
      INIT => X"00C8",
      LOC => "SLICE_X19Y14"
    )
    port map (
      ADR0 => nx36612z27_0,
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z28,
      ADR3 => Rom_Address(2),
      O => nx36612z26
    );
  ix48_reg_x_20_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X25Y15",
      INIT => '0'
    )
    port map (
      I => nx4535z1_DYMUX_2689,
      CE => nx4535z1_CEINV_2685,
      CLK => nx4535z1_CLKINV_2686,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx4535z1_SRINV_2687,
      O => nx4535z1
    );
  ix48_reg_x_11_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X19Y17",
      INIT => '0'
    )
    port map (
      I => nx1883z1_DYMUX_2440,
      CE => nx1883z1_CEINV_2436,
      CLK => nx1883z1_CLKINV_2437,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx1883z1_SRINV_2438,
      O => nx1883z1
    );
  ix48_reg_x_4_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => '0'
    )
    port map (
      I => nx37361z1_DYMUX_2455,
      CE => nx37361z1_CEINV_2451,
      CLK => nx37361z1_CLKINV_2452,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx37361z1_SRINV_2453,
      O => nx37361z1
    );
  ix36612z1333 : X_LUT4
    generic map(
      INIT => X"0302",
      LOC => "SLICE_X22Y16"
    )
    port map (
      ADR0 => nx36612z11_0,
      ADR1 => Rom_Address(3),
      ADR2 => Rom_Address(2),
      ADR3 => nx36612z12,
      O => nx36612z10
    );
  ix48_reg_x_26_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      I => nx36612z9_DYMUX_2496,
      CE => nx36612z9_CEINV_2492,
      CLK => nx36612z9_CLKINV_2493,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z9_SRINV_2494,
      O => nx36612z8
    );
  ix48_reg_x_27_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => '0'
    )
    port map (
      I => nx36612z9_DXMUX_2503,
      CE => nx36612z9_CEINV_2492,
      CLK => nx36612z9_CLKINV_2493,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z9_SRINV_2494,
      O => nx36612z9
    );
  ix48_reg_x_18_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X24Y17",
      INIT => '0'
    )
    port map (
      I => nx37828z1_DYMUX_2518,
      CE => nx37828z1_CEINV_2514,
      CLK => nx37828z1_CLKINV_2515,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx37828z1_SRINV_2516,
      O => nx37828z1
    );
  ix36612z1343 : X_LUT4
    generic map(
      INIT => X"0032",
      LOC => "SLICE_X18Y17"
    )
    port map (
      ADR0 => nx36612z24_0,
      ADR1 => Rom_Address(2),
      ADR2 => nx36612z25,
      ADR3 => Rom_Address(3),
      O => nx36612z23
    );
  ix36612z2647 : X_LUT4
    generic map(
      INIT => X"001D",
      LOC => "SLICE_X17Y17"
    )
    port map (
      ADR0 => nx36612z22_0,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z65,
      O => nx36612z64
    );
  ix36612z28783 : X_LUT4
    generic map(
      INIT => X"4C84",
      LOC => "SLICE_X13Y17"
    )
    port map (
      ADR0 => Rom_Address(3),
      ADR1 => Rom_Address(0),
      ADR2 => Rom_Address(2),
      ADR3 => Rom_Address(4),
      O => nx36612z92
    );
  ix36612z2643 : X_LUT4
    generic map(
      INIT => X"0213",
      LOC => "SLICE_X16Y17"
    )
    port map (
      ADR0 => Rom_Address(4),
      ADR1 => nx36612z60,
      ADR2 => nx36612z2_0,
      ADR3 => nx36612z22_0,
      O => nx36612z59
    );
  ix36612z2651 : X_LUT4
    generic map(
      INIT => X"0035",
      LOC => "SLICE_X17Y16"
    )
    port map (
      ADR0 => nx36612z22_0,
      ADR1 => nx36612z2_0,
      ADR2 => Rom_Address(4),
      ADR3 => nx36612z70,
      O => nx36612z69
    );
  ix48_reg_x_17_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X25Y17",
      INIT => '0'
    )
    port map (
      I => nx32693z1_DYMUX_2401,
      CE => nx32693z1_CEINV_2397,
      CLK => nx32693z1_CLKINV_2398,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx32693z1_SRINV_2399,
      O => nx32693z1
    );
  ix36612z1544 : X_LUT4
    generic map(
      INIT => X"03CF",
      LOC => "SLICE_X11Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(1),
      ADR2 => nx36612z90,
      ADR3 => nx36612z89_0,
      O => nx36612z88
    );
  ix48_reg_x_12_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => '0'
    )
    port map (
      I => nx7018z1_DYMUX_2704,
      CE => nx7018z1_CEINV_2700,
      CLK => nx7018z1_CLKINV_2701,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx7018z1_SRINV_2702,
      O => nx7018z1
    );
  ix36612z4919 : X_LUT4
    generic map(
      INIT => X"3200",
      LOC => "SLICE_X18Y15"
    )
    port map (
      ADR0 => nx36612z30_0,
      ADR1 => Rom_Address(3),
      ADR2 => nx36612z31,
      ADR3 => Rom_Address(2),
      O => nx36612z29
    );
  ix48_reg_x_5_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X18Y16",
      INIT => '0'
    )
    port map (
      I => nx42496z1_DYMUX_2743,
      CE => nx42496z1_CEINV_2739,
      CLK => nx42496z1_CLKINV_2740,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx42496z1_SRINV_2741,
      O => nx42496z1
    );
  ix36612z1433 : X_LUT4
    generic map(
      INIT => X"0A5F",
      LOC => "SLICE_X10Y15"
    )
    port map (
      ADR0 => Rom_Address(1),
      ADR1 => VCC,
      ADR2 => nx36612z84,
      ADR3 => nx36612z83_0,
      O => nx36612z82
    );
  ix36612z1316 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y16"
    )
    port map (
      ADR0 => nx36612z10_0,
      ADR1 => nx36612z13_0,
      ADR2 => nx36612z19,
      ADR3 => nx36612z3_0,
      O => nx36612z2
    );
  ix48_reg_x_19_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X25Y16",
      INIT => '0'
    )
    port map (
      I => nx64936z1_DYMUX_2806,
      CE => nx64936z1_CEINV_2802,
      CLK => nx64936z1_CLKINV_2803,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx64936z1_SRINV_2804,
      O => nx64936z1
    );
  ix48_reg_x_21_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => '0'
    )
    port map (
      I => nx9670z1_DYMUX_2821,
      CE => nx9670z1_CEINV_2817,
      CLK => nx9670z1_CLKINV_2818,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx9670z1_SRINV_2819,
      O => nx9670z1
    );
  ix48_reg_x_13_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      I => nx12153z1_DYMUX_2836,
      CE => nx12153z1_CEINV_2832,
      CLK => nx12153z1_CLKINV_2833,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx12153z1_SRINV_2834,
      O => nx12153z1
    );
  U4_ix8462z53740 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X13Y14"
    )
    port map (
      ADR0 => U4_ACCU_1n1s1(0),
      ADR1 => U6_current_state_0_Q,
      ADR2 => ack_F2ADC,
      ADR3 => Mult_out(0),
      O => U4_ACCU_1n1ss1(0)
    );
  U4_reg_ACCU_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_dup_0_0_DXMUX_2870,
      CE => VCC,
      CLK => U4_Accu_out_dup_0_0_CLKINV_2853,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_dup_0_0_SRINV_2854,
      O => U4_Accu_out_dup_0(0)
    );
  ix48_reg_x_6_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      I => nx47631z1_DYMUX_2884,
      CE => nx47631z1_CEINV_2880,
      CLK => nx47631z1_CLKINV_2881,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx47631z1_SRINV_2882,
      O => nx47631z1
    );
  ix48_reg_x_0_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      I => nx16821z1_DYMUX_2899,
      CE => nx16821z1_CEINV_2895,
      CLK => nx16821z1_CLKINV_2896,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx16821z1_SRINV_2897,
      O => nx16821z1
    );
  ix48_reg_x_28_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      I => nx36612z16_DYMUX_2916,
      CE => nx36612z16_CEINV_2912,
      CLK => nx36612z16_CLKINV_2913,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z16_SRINV_2914,
      O => nx36612z15
    );
  ix48_reg_x_29_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      I => nx36612z16_DXMUX_2923,
      CE => nx36612z16_CEINV_2912,
      CLK => nx36612z16_CLKINV_2913,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx36612z16_SRINV_2914,
      O => nx36612z16
    );
  ix36612z1379 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X8Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Rom_Address(4),
      ADR2 => nx36612z76,
      ADR3 => VCC,
      O => nx36612z75
    );
  ix48_reg_x_30_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => '0'
    )
    port map (
      I => nx12322z1_DYMUX_2974,
      CE => nx12322z1_CEINV_2970,
      CLK => nx12322z1_CLKINV_2971,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx12322z1_SRINV_2972,
      O => nx12322z1
    );
  ix48_reg_x_22_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      I => nx14805z1_DYMUX_2989,
      CE => nx14805z1_CEINV_2985,
      CLK => nx14805z1_CLKINV_2986,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx14805z1_SRINV_2987,
      O => nx14805z1
    );
  ix48_reg_x_14_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X22Y15",
      INIT => '0'
    )
    port map (
      I => nx17288z1_DYMUX_3004,
      CE => nx17288z1_CEINV_3000,
      CLK => nx17288z1_CLKINV_3001,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx17288z1_SRINV_3002,
      O => nx17288z1
    );
  ix48_reg_x_7_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y14",
      INIT => '0'
    )
    port map (
      I => nx52766z1_DYMUX_3019,
      CE => nx52766z1_CEINV_3015,
      CLK => nx52766z1_CLKINV_3016,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => nx52766z1_SRINV_3017,
      O => nx52766z1
    );
  U9_reg_reg_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_1_DYMUX_3036,
      CE => Filter_In_mem_1_CEINV_3032,
      CLK => Filter_In_mem_1_CLKINV_3033,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_1_SRINV_3034,
      O => Filter_In_mem(0)
    );
  U9_reg_reg_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_1_DXMUX_3043,
      CE => Filter_In_mem_1_CEINV_3032,
      CLK => Filter_In_mem_1_CLKINV_3033,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_1_SRINV_3034,
      O => Filter_In_mem(1)
    );
  U9_reg_reg_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_3_DYMUX_3060,
      CE => Filter_In_mem_3_CEINV_3056,
      CLK => Filter_In_mem_3_CLKINV_3057,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_3_SRINV_3058,
      O => Filter_In_mem(2)
    );
  U4_ix5893z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y17"
    )
    port map (
      ADR0 => U4_Accu_out(10),
      ADR1 => Mult_out(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx5893z1
    );
  U4_ix5895z1320 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X14Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Accu_out(12),
      ADR2 => VCC,
      ADR3 => Mult_out(12),
      O => U4_nx5895z1
    );
  U9_reg_reg_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      I => Filter_In_mem_3_DXMUX_3067,
      CE => Filter_In_mem_3_CEINV_3056,
      CLK => Filter_In_mem_3_CLKINV_3057,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Filter_In_mem_3_SRINV_3058,
      O => Filter_In_mem(3)
    );
  U4_ix30768z1320 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X14Y12"
    )
    port map (
      ADR0 => U4_Accu_out_dup_0(0),
      ADR1 => VCC,
      ADR2 => Mult_out(0),
      ADR3 => VCC,
      O => U4_nx30768z1
    );
  U4_ix30770z1320 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X14Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U4_Accu_out(2),
      ADR2 => Mult_out(2),
      ADR3 => VCC,
      O => U4_nx30770z1
    );
  U4_ix5897z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y19"
    )
    port map (
      ADR0 => Mult_out(14),
      ADR1 => Accu_out(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx5897z1
    );
  U4_reg_ACCU_17_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => Accu_out_16_DYMUX_3412,
      CE => VCC,
      CLK => Accu_out_16_CLKINV_3390,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_16_SRINV_3391,
      O => Accu_out(17)
    );
  U4_reg_ACCU_16_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => Accu_out_16_DXMUX_3429,
      CE => VCC,
      CLK => Accu_out_16_CLKINV_3390,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_16_SRINV_3391,
      O => Accu_out(16)
    );
  U4_reg_ACCU_18_Q : X_SFF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => Accu_out_18_DXMUX_3474,
      CE => VCC,
      CLK => Accu_out_18_CLKINV_3441,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => Accu_out_18_SRINV_3442,
      O => Accu_out(18)
    );
  U4_ix30772z1320 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X14Y14"
    )
    port map (
      ADR0 => U4_Accu_out(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Mult_out(4),
      O => U4_nx30772z1
    );
  U4_ix30774z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y15"
    )
    port map (
      ADR0 => Mult_out(6),
      ADR1 => U4_Accu_out(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx30774z1
    );
  U4_ix30776z1320 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X14Y16"
    )
    port map (
      ADR0 => U4_Accu_out(8),
      ADR1 => Mult_out(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U4_nx30776z1
    );
  U7_reg_current_state_0_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => '1'
    )
    port map (
      I => U7_current_state_1_DYMUX_4121,
      CE => VCC,
      CLK => U7_current_state_1_CLKINV_4111,
      SET => GND,
      RST => GND,
      SSET => U7_current_state_1_SRINV_4112,
      SRST => GND,
      O => U7_current_state(0)
    );
  ix9275z1322 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X12Y41"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U7_current_state(0),
      ADR2 => VCC,
      ADR3 => ack_F2ADC,
      O => nx9275z1
    );
  U7_reg_current_state_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => '0'
    )
    port map (
      I => U7_current_state_1_DXMUX_4135,
      CE => VCC,
      CLK => U7_current_state_1_CLKINV_4111,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U7_current_state_1_SRINV_4112,
      O => U7_current_state(1)
    );
  ix36612z15041 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y20"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z37_DIG_MUX_3815,
      CE => nx36612z37_SRINV_3807,
      CLK => nx36612z37_CLKINV_3813,
      Q => nx36612z36,
      Q15 => nx36612z37_GMC15
    );
  ix36612z15042 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y20"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z37_DIF_MUX_3828,
      CE => nx36612z37_SRINV_3807,
      CLK => nx36612z37_CLKINV_3813,
      Q => nx36612z37,
      Q15 => NLW_ix36612z15042_Q15_UNCONNECTED
    );
  ix36612z15070 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z72_DIF_MUX_3648,
      CE => nx36612z72_SRINV_3627,
      CLK => nx36612z72_CLKINV_3633,
      Q => nx36612z72,
      Q15 => NLW_ix36612z15070_Q15_UNCONNECTED
    );
  ix36612z15065 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y18"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z67_DIG_MUX_3680,
      CE => nx36612z67_SRINV_3672,
      CLK => nx36612z67_CLKINV_3678,
      Q => nx36612z66,
      Q15 => nx36612z67_GMC15
    );
  ix36612z15066 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y18"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z67_DIF_MUX_3693,
      CE => nx36612z67_SRINV_3672,
      CLK => nx36612z67_CLKINV_3678,
      Q => nx36612z67,
      Q15 => NLW_ix36612z15066_Q15_UNCONNECTED
    );
  ix36612z15057 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y15"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z57_DIG_MUX_3725,
      CE => nx36612z57_SRINV_3717,
      CLK => nx36612z57_CLKINV_3723,
      Q => nx36612z56,
      Q15 => nx36612z57_GMC15
    );
  ix36612z15058 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y15"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z57_DIF_MUX_3738,
      CE => nx36612z57_SRINV_3717,
      CLK => nx36612z57_CLKINV_3723,
      Q => nx36612z57,
      Q15 => NLW_ix36612z15058_Q15_UNCONNECTED
    );
  ix36612z15049 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z47_DIG_MUX_3770,
      CE => nx36612z47_SRINV_3762,
      CLK => nx36612z47_CLKINV_3768,
      Q => nx36612z46,
      Q15 => nx36612z47_GMC15
    );
  ix36612z15050 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z47_DIF_MUX_3783,
      CE => nx36612z47_SRINV_3762,
      CLK => nx36612z47_CLKINV_3768,
      Q => nx36612z47,
      Q15 => NLW_ix36612z15050_Q15_UNCONNECTED
    );
  ix36612z15061 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y14"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z62_DIG_MUX_3500,
      CE => nx36612z62_SRINV_3492,
      CLK => nx36612z62_CLKINV_3498,
      Q => nx36612z61,
      Q15 => nx36612z62_GMC15
    );
  ix36612z15062 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y14"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z62_DIF_MUX_3513,
      CE => nx36612z62_SRINV_3492,
      CLK => nx36612z62_CLKINV_3498,
      Q => nx36612z62,
      Q15 => NLW_ix36612z15062_Q15_UNCONNECTED
    );
  ix36612z15053 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z52_DIG_MUX_3545,
      CE => nx36612z52_SRINV_3537,
      CLK => nx36612z52_CLKINV_3543,
      Q => nx36612z51,
      Q15 => nx36612z52_GMC15
    );
  ix36612z15054 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X8Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z52_DIF_MUX_3558,
      CE => nx36612z52_SRINV_3537,
      CLK => nx36612z52_CLKINV_3543,
      Q => nx36612z52,
      Q15 => NLW_ix36612z15054_Q15_UNCONNECTED
    );
  ix36612z15045 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y17"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z42_DIG_MUX_3590,
      CE => nx36612z42_SRINV_3582,
      CLK => nx36612z42_CLKINV_3588,
      Q => nx36612z41,
      Q15 => nx36612z42_GMC15
    );
  ix36612z15046 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X10Y17"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z42_DIF_MUX_3603,
      CE => nx36612z42_SRINV_3582,
      CLK => nx36612z42_CLKINV_3588,
      Q => nx36612z42,
      Q15 => NLW_ix36612z15046_Q15_UNCONNECTED
    );
  ix36612z15069 : X_SRLC16E
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X16Y16"
    )
    port map (
      A0 => Rom_Address(0),
      A1 => Rom_Address(1),
      A2 => Rom_Address(2),
      A3 => Rom_Address(3),
      D => nx36612z72_DIG_MUX_3635,
      CE => nx36612z72_SRINV_3627,
      CLK => nx36612z72_CLKINV_3633,
      Q => nx36612z71,
      Q15 => nx36612z72_GMC15
    );
  U4_reg_ACCU_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_2_DYMUX_4161,
      CE => VCC,
      CLK => U4_Accu_out_2_CLKINV_4152,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_2_SRINV_4153,
      O => U4_Accu_out(1)
    );
  U4_ix6468z53740 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X15Y13"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => U4_ACCU_1n1s1(2),
      ADR3 => Mult_out(2),
      O => U4_ACCU_1n1ss1(2)
    );
  U4_reg_ACCU_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y13",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_2_DXMUX_4173,
      CE => VCC,
      CLK => U4_Accu_out_2_CLKINV_4152,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_2_SRINV_4153,
      O => U4_Accu_out(2)
    );
  U7_reg_current_state_2_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => '0'
    )
    port map (
      I => U7_current_state_3_DYMUX_4197,
      CE => VCC,
      CLK => U7_current_state_3_CLKINV_4187,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U7_current_state_3_SRINV_4188,
      O => U7_current_state(2)
    );
  ix7281z1316 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X12Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => ADC_Eocb_int,
      ADR3 => U7_current_state(2),
      O => nx7281z1
    );
  U7_reg_current_state_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => '0'
    )
    port map (
      I => U7_current_state_3_DXMUX_4211,
      CE => VCC,
      CLK => U7_current_state_3_CLKINV_4187,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U7_current_state_3_SRINV_4188,
      O => U7_current_state(3)
    );
  U4_reg_ACCU_3_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_4_DYMUX_4237,
      CE => VCC,
      CLK => U4_Accu_out_4_CLKINV_4228,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_4_SRINV_4229,
      O => U4_Accu_out(3)
    );
  U4_ix4474z53740 : X_LUT4
    generic map(
      INIT => X"FE04",
      LOC => "SLICE_X15Y12"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U4_ACCU_1n1s1(4),
      ADR2 => U6_current_state_0_Q,
      ADR3 => Mult_out(4),
      O => U4_ACCU_1n1ss1(4)
    );
  U4_reg_ACCU_4_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y12",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_4_DXMUX_4249,
      CE => VCC,
      CLK => U4_Accu_out_4_CLKINV_4228,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_4_SRINV_4229,
      O => U4_Accu_out(4)
    );
  U4_reg_ACCU_5_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_6_DYMUX_4275,
      CE => VCC,
      CLK => U4_Accu_out_6_CLKINV_4266,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_6_SRINV_4267,
      O => U4_Accu_out(5)
    );
  U4_ix2480z53740 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X15Y15"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => U4_ACCU_1n1s1(6),
      ADR3 => Mult_out(6),
      O => U4_ACCU_1n1ss1(6)
    );
  U4_reg_ACCU_6_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_6_DXMUX_4287,
      CE => VCC,
      CLK => U4_Accu_out_6_CLKINV_4266,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_6_SRINV_4267,
      O => U4_Accu_out(6)
    );
  U4_reg_ACCU_7_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_8_DYMUX_4313,
      CE => VCC,
      CLK => U4_Accu_out_8_CLKINV_4304,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_8_SRINV_4305,
      O => U4_Accu_out(7)
    );
  U4_ix486z53740 : X_LUT4
    generic map(
      INIT => X"F1E0",
      LOC => "SLICE_X15Y14"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => Mult_out(8),
      ADR3 => U4_ACCU_1n1s1(8),
      O => U4_ACCU_1n1ss1(8)
    );
  U4_reg_ACCU_8_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_8_DXMUX_4325,
      CE => VCC,
      CLK => U4_Accu_out_8_CLKINV_4304,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_8_SRINV_4305,
      O => U4_Accu_out(8)
    );
  ix45424z1328 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => Delay_Line_sample_shift,
      ADR3 => VCC,
      O => nx45424z1
    );
  U6_reg_current_state_1_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      I => ack_F2ADC_DYMUX_4346,
      CE => VCC,
      CLK => ack_F2ADC_CLKINV_4335,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => ack_F2ADC_SRINV_4336,
      O => ack_F2ADC
    );
  U4_reg_ACCU_9_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_10_DYMUX_4372,
      CE => VCC,
      CLK => U4_Accu_out_10_CLKINV_4363,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_10_SRINV_4364,
      O => U4_Accu_out(9)
    );
  U4_ix30017z53740 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X15Y16"
    )
    port map (
      ADR0 => ack_F2ADC,
      ADR1 => U6_current_state_0_Q,
      ADR2 => U4_ACCU_1n1s1(10),
      ADR3 => Mult_out(10),
      O => U4_ACCU_1n1ss1(10)
    );
  U4_reg_ACCU_10_Q : X_SFF
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => '0'
    )
    port map (
      I => U4_Accu_out_10_DXMUX_4384,
      CE => VCC,
      CLK => U4_Accu_out_10_CLKINV_4363,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U4_Accu_out_10_SRINV_4364,
      O => U4_Accu_out(10)
    );
  Accu_out_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Accu_out(16),
      ADR3 => VCC,
      O => Accu_out_16_F
    );
  Accu_out_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => Accu_out(17),
      ADR3 => VCC,
      O => Accu_out_16_G
    );
  Accu_out_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => Accu_out(18),
      O => Accu_out_18_F
    );
  ADC_csb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx29750z1_0,
      O => ADC_csb_O
    );
  ADC_Rdb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx29750z1_0,
      O => ADC_Rdb_O
    );
  ADC_Convstb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 526 ps
    )
    port map (
      I => nx29023z1,
      O => ADC_Convstb_O
    );
  LDACb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 526 ps
    )
    port map (
      I => LDACb_OUTPUT_OFF_O1INV_3918,
      O => LDACb_O
    );
  LDACb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 526 ps
    )
    port map (
      I => '0',
      O => LDACb_OUTPUT_OFF_O1INV_3918
    );
  Filter_Out_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD193",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(0),
      O => Filter_Out_0_O
    );
  Filter_Out_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(1),
      O => Filter_Out_1_O
    );
  Filter_Out_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(2),
      O => Filter_Out_2_O
    );
  Filter_Out_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(3),
      O => Filter_Out_3_O
    );
  Filter_Out_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(4),
      O => Filter_Out_4_O
    );
  Filter_Out_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(5),
      O => Filter_Out_5_O
    );
  Filter_Out_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(6),
      O => Filter_Out_6_O
    );
  Filter_Out_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 526 ps
    )
    port map (
      I => Filter_Out_dup_0(7),
      O => Filter_Out_7_O
    );
  DAC_WRb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => DAC_WRb_OUTPUT_OFF_O1INV_3996,
      O => DAC_WRb_O
    );
  DAC_WRb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => DAC_WRb_OUTPUT_OFF_O1INV_3996
    );
  CLRb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 526 ps
    )
    port map (
      I => CLRb_OUTPUT_OFF_O1INV_4010,
      O => CLRb_O
    );
  CLRb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD195",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => CLRb_OUTPUT_OFF_O1INV_4010
    );
  DAC_csb_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => DAC_csb_OUTPUT_OFF_O1INV_4024,
      O => DAC_csb_O
    );
  DAC_csb_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 526 ps
    )
    port map (
      I => '1',
      O => DAC_csb_OUTPUT_OFF_O1INV_4024
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z1_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_7_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z39_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_6_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z49_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_4_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z54_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_3_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z59_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_2_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z64_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_1_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_A_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z69_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_A_0_Q
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_7_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z74_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(7)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_6_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z75_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(6)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_5_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z77_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(5)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_4_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z79_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(4)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_3_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z82_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(3)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_2_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z85_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(2)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_1_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z88_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(1)
    );
  NlwBufferBlock_U3_Mult_out_multu16_0_ix2247z10733_B_0_Q : X_BUF
    generic map(
      PATHPULSE => 526 ps
    )
    port map (
      I => nx36612z91_0,
      O => NlwBufferSignal_U3_Mult_out_multu16_0_ix2247z10733_B(0)
    );
  NlwBlock_FILTER_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_FILTER_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

