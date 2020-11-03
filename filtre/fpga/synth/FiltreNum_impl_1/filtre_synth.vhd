
-- 
-- Definition of  FILTER
-- 
--      Tue Feb 27 10:47:56 2018
--      
--      Precision RTL Synthesis, 2014a.1_64-bit
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity ACCU is 
   port (
      Accu_in : IN std_logic_vector (15 DOWNTO 0) ;
      Accu_ctrl : IN std_logic ;
      CLK : IN std_logic ;
      Reset : IN std_logic ;
      Accu_out : OUT std_logic_vector (20 DOWNTO 0) ;
      p_ack_F2ADC : IN std_logic ;
      p_U6_current_state_0 : IN std_logic) ;
end ACCU ;

architecture A_unfold_494 of ACCU is 
   signal Accu_out_19_EXMPLR26, Accu_out_18_EXMPLR27, Accu_out_17_EXMPLR28, 
      Accu_out_16_EXMPLR29, Accu_out_15_EXMPLR30, Accu_out_14_EXMPLR31, 
      Accu_out_13_EXMPLR32, Accu_out_12_EXMPLR33, Accu_out_11_EXMPLR34, 
      Accu_out_10_EXMPLR35, Accu_out_9_EXMPLR36, Accu_out_8_EXMPLR37, 
      Accu_out_7_EXMPLR38, Accu_out_6_EXMPLR39, Accu_out_5_EXMPLR40, 
      Accu_out_4_EXMPLR41, Accu_out_3_EXMPLR42, Accu_out_2_EXMPLR43, 
      Accu_out_1_EXMPLR44, Accu_out_dup_0_0: std_logic ;
   
   signal ACCU_1n1s1: std_logic_vector (19 DOWNTO 0) ;
   
   signal nx40142z1, nx40141z1, nx40140z1, nx40139z1, nx40138z1, nx40137z1, 
      nx40136z1, nx40135z1, nx40134z1, nx20970z1, nx20971z1, nx20972z1, 
      nx20973z1, nx20974z1, nx20975z1, nx20976z1, nx20977z1, nx20978z1, 
      nx5902z1, Accu_out_0_EXMPLR45: std_logic ;
   
   signal ACCU_1n1ss1: std_logic_vector (15 DOWNTO 0) ;
   
   signal nx24035z1, nx30768z1, nx30769z1, nx30770z1, nx30771z1, nx30772z1, 
      nx30773z1, nx30774z1, nx30775z1, nx30776z1, nx30777z1, nx5893z1, 
      nx5894z1, nx5895z1, nx5896z1, nx5897z1, nx5898z1: std_logic ;

begin
   Accu_out(19) <= Accu_out_19_EXMPLR26 ;
   Accu_out(18) <= Accu_out_18_EXMPLR27 ;
   Accu_out(17) <= Accu_out_17_EXMPLR28 ;
   Accu_out(16) <= Accu_out_16_EXMPLR29 ;
   Accu_out(15) <= Accu_out_15_EXMPLR30 ;
   Accu_out(14) <= Accu_out_14_EXMPLR31 ;
   Accu_out(13) <= Accu_out_13_EXMPLR32 ;
   Accu_out(12) <= Accu_out_12_EXMPLR33 ;
   ACCU_add21_1i1_xorcy_0 : XORCY port map ( O=>ACCU_1n1s1(0), CI=>
      Accu_out_0_EXMPLR45, LI=>nx30768z1);
   ACCU_add21_1i1_muxcy_0 : MUXCY_L port map ( LO=>nx40142z1, CI=>
      Accu_out_0_EXMPLR45, DI=>Accu_out_dup_0_0, S=>nx30768z1);
   ACCU_add21_1i1_xorcy_1 : XORCY port map ( O=>ACCU_1n1s1(1), CI=>nx40142z1, 
      LI=>nx30769z1);
   ACCU_add21_1i1_muxcy_1 : MUXCY_L port map ( LO=>nx40141z1, CI=>nx40142z1, 
      DI=>Accu_out_1_EXMPLR44, S=>nx30769z1);
   ACCU_add21_1i1_xorcy_2 : XORCY port map ( O=>ACCU_1n1s1(2), CI=>nx40141z1, 
      LI=>nx30770z1);
   ACCU_add21_1i1_muxcy_2 : MUXCY_L port map ( LO=>nx40140z1, CI=>nx40141z1, 
      DI=>Accu_out_2_EXMPLR43, S=>nx30770z1);
   ACCU_add21_1i1_xorcy_3 : XORCY port map ( O=>ACCU_1n1s1(3), CI=>nx40140z1, 
      LI=>nx30771z1);
   ACCU_add21_1i1_muxcy_3 : MUXCY_L port map ( LO=>nx40139z1, CI=>nx40140z1, 
      DI=>Accu_out_3_EXMPLR42, S=>nx30771z1);
   ACCU_add21_1i1_xorcy_4 : XORCY port map ( O=>ACCU_1n1s1(4), CI=>nx40139z1, 
      LI=>nx30772z1);
   ACCU_add21_1i1_muxcy_4 : MUXCY_L port map ( LO=>nx40138z1, CI=>nx40139z1, 
      DI=>Accu_out_4_EXMPLR41, S=>nx30772z1);
   ACCU_add21_1i1_xorcy_5 : XORCY port map ( O=>ACCU_1n1s1(5), CI=>nx40138z1, 
      LI=>nx30773z1);
   ACCU_add21_1i1_muxcy_5 : MUXCY_L port map ( LO=>nx40137z1, CI=>nx40138z1, 
      DI=>Accu_out_5_EXMPLR40, S=>nx30773z1);
   ACCU_add21_1i1_xorcy_6 : XORCY port map ( O=>ACCU_1n1s1(6), CI=>nx40137z1, 
      LI=>nx30774z1);
   ACCU_add21_1i1_muxcy_6 : MUXCY_L port map ( LO=>nx40136z1, CI=>nx40137z1, 
      DI=>Accu_out_6_EXMPLR39, S=>nx30774z1);
   ACCU_add21_1i1_xorcy_7 : XORCY port map ( O=>ACCU_1n1s1(7), CI=>nx40136z1, 
      LI=>nx30775z1);
   ACCU_add21_1i1_muxcy_7 : MUXCY_L port map ( LO=>nx40135z1, CI=>nx40136z1, 
      DI=>Accu_out_7_EXMPLR38, S=>nx30775z1);
   ACCU_add21_1i1_xorcy_8 : XORCY port map ( O=>ACCU_1n1s1(8), CI=>nx40135z1, 
      LI=>nx30776z1);
   ACCU_add21_1i1_muxcy_8 : MUXCY_L port map ( LO=>nx40134z1, CI=>nx40135z1, 
      DI=>Accu_out_8_EXMPLR37, S=>nx30776z1);
   ACCU_add21_1i1_xorcy_9 : XORCY port map ( O=>ACCU_1n1s1(9), CI=>nx40134z1, 
      LI=>nx30777z1);
   ACCU_add21_1i1_muxcy_9 : MUXCY_L port map ( LO=>nx20970z1, CI=>nx40134z1, 
      DI=>Accu_out_9_EXMPLR36, S=>nx30777z1);
   ACCU_add21_1i1_xorcy_10 : XORCY port map ( O=>ACCU_1n1s1(10), CI=>
      nx20970z1, LI=>nx5893z1);
   ACCU_add21_1i1_muxcy_10 : MUXCY_L port map ( LO=>nx20971z1, CI=>nx20970z1, 
      DI=>Accu_out_10_EXMPLR35, S=>nx5893z1);
   ACCU_add21_1i1_xorcy_11 : XORCY port map ( O=>ACCU_1n1s1(11), CI=>
      nx20971z1, LI=>nx5894z1);
   ACCU_add21_1i1_muxcy_11 : MUXCY_L port map ( LO=>nx20972z1, CI=>nx20971z1, 
      DI=>Accu_out_11_EXMPLR34, S=>nx5894z1);
   ACCU_add21_1i1_xorcy_12 : XORCY port map ( O=>ACCU_1n1s1(12), CI=>
      nx20972z1, LI=>nx5895z1);
   ACCU_add21_1i1_muxcy_12 : MUXCY_L port map ( LO=>nx20973z1, CI=>nx20972z1, 
      DI=>Accu_out_12_EXMPLR33, S=>nx5895z1);
   ACCU_add21_1i1_xorcy_13 : XORCY port map ( O=>ACCU_1n1s1(13), CI=>
      nx20973z1, LI=>nx5896z1);
   ACCU_add21_1i1_muxcy_13 : MUXCY_L port map ( LO=>nx20974z1, CI=>nx20973z1, 
      DI=>Accu_out_13_EXMPLR32, S=>nx5896z1);
   ACCU_add21_1i1_xorcy_14 : XORCY port map ( O=>ACCU_1n1s1(14), CI=>
      nx20974z1, LI=>nx5897z1);
   ACCU_add21_1i1_muxcy_14 : MUXCY_L port map ( LO=>nx20975z1, CI=>nx20974z1, 
      DI=>Accu_out_14_EXMPLR31, S=>nx5897z1);
   ACCU_add21_1i1_xorcy_15 : XORCY port map ( O=>ACCU_1n1s1(15), CI=>
      nx20975z1, LI=>nx5898z1);
   ACCU_add21_1i1_muxcy_15 : MUXCY_L port map ( LO=>nx20976z1, CI=>nx20975z1, 
      DI=>Accu_out_15_EXMPLR30, S=>nx5898z1);
   ACCU_add21_1i1_xorcy_16 : XORCY port map ( O=>ACCU_1n1s1(16), CI=>
      nx20976z1, LI=>Accu_out_16_EXMPLR29);
   ACCU_add21_1i1_muxcy_16 : MUXCY_L port map ( LO=>nx20977z1, CI=>nx20976z1, 
      DI=>Accu_out_0_EXMPLR45, S=>Accu_out_16_EXMPLR29);
   ACCU_add21_1i1_xorcy_17 : XORCY port map ( O=>ACCU_1n1s1(17), CI=>
      nx20977z1, LI=>Accu_out_17_EXMPLR28);
   ACCU_add21_1i1_muxcy_17 : MUXCY_L port map ( LO=>nx20978z1, CI=>nx20977z1, 
      DI=>Accu_out_0_EXMPLR45, S=>Accu_out_17_EXMPLR28);
   ACCU_add21_1i1_xorcy_18 : XORCY port map ( O=>ACCU_1n1s1(18), CI=>
      nx20978z1, LI=>Accu_out_18_EXMPLR27);
   ACCU_add21_1i1_muxcy_18 : MUXCY_L port map ( LO=>nx5902z1, CI=>nx20978z1, 
      DI=>Accu_out_0_EXMPLR45, S=>Accu_out_18_EXMPLR27);
   ACCU_add21_1i1_xorcy_19 : XORCY port map ( O=>ACCU_1n1s1(19), CI=>
      nx5902z1, LI=>Accu_out_19_EXMPLR26);
   reg_ACCU_19 : FDR port map ( Q=>Accu_out_19_EXMPLR26, C=>CLK, D=>
      ACCU_1n1s1(19), R=>nx24035z1);
   reg_ACCU_18 : FDR port map ( Q=>Accu_out_18_EXMPLR27, C=>CLK, D=>
      ACCU_1n1s1(18), R=>nx24035z1);
   reg_ACCU_17 : FDR port map ( Q=>Accu_out_17_EXMPLR28, C=>CLK, D=>
      ACCU_1n1s1(17), R=>nx24035z1);
   reg_ACCU_16 : FDR port map ( Q=>Accu_out_16_EXMPLR29, C=>CLK, D=>
      ACCU_1n1s1(16), R=>nx24035z1);
   reg_ACCU_15 : FDR port map ( Q=>Accu_out_15_EXMPLR30, C=>CLK, D=>
      ACCU_1n1ss1(15), R=>Reset);
   reg_ACCU_14 : FDR port map ( Q=>Accu_out_14_EXMPLR31, C=>CLK, D=>
      ACCU_1n1ss1(14), R=>Reset);
   reg_ACCU_13 : FDR port map ( Q=>Accu_out_13_EXMPLR32, C=>CLK, D=>
      ACCU_1n1ss1(13), R=>Reset);
   reg_ACCU_12 : FDR port map ( Q=>Accu_out_12_EXMPLR33, C=>CLK, D=>
      ACCU_1n1ss1(12), R=>Reset);
   reg_ACCU_11 : FDR port map ( Q=>Accu_out_11_EXMPLR34, C=>CLK, D=>
      ACCU_1n1ss1(11), R=>Reset);
   reg_ACCU_10 : FDR port map ( Q=>Accu_out_10_EXMPLR35, C=>CLK, D=>
      ACCU_1n1ss1(10), R=>Reset);
   reg_ACCU_9 : FDR port map ( Q=>Accu_out_9_EXMPLR36, C=>CLK, D=>
      ACCU_1n1ss1(9), R=>Reset);
   reg_ACCU_8 : FDR port map ( Q=>Accu_out_8_EXMPLR37, C=>CLK, D=>
      ACCU_1n1ss1(8), R=>Reset);
   reg_ACCU_7 : FDR port map ( Q=>Accu_out_7_EXMPLR38, C=>CLK, D=>
      ACCU_1n1ss1(7), R=>Reset);
   reg_ACCU_6 : FDR port map ( Q=>Accu_out_6_EXMPLR39, C=>CLK, D=>
      ACCU_1n1ss1(6), R=>Reset);
   reg_ACCU_5 : FDR port map ( Q=>Accu_out_5_EXMPLR40, C=>CLK, D=>
      ACCU_1n1ss1(5), R=>Reset);
   reg_ACCU_4 : FDR port map ( Q=>Accu_out_4_EXMPLR41, C=>CLK, D=>
      ACCU_1n1ss1(4), R=>Reset);
   reg_ACCU_3 : FDR port map ( Q=>Accu_out_3_EXMPLR42, C=>CLK, D=>
      ACCU_1n1ss1(3), R=>Reset);
   reg_ACCU_2 : FDR port map ( Q=>Accu_out_2_EXMPLR43, C=>CLK, D=>
      ACCU_1n1ss1(2), R=>Reset);
   reg_ACCU_1 : FDR port map ( Q=>Accu_out_1_EXMPLR44, C=>CLK, D=>
      ACCU_1n1ss1(1), R=>Reset);
   reg_ACCU_0 : FDR port map ( Q=>Accu_out_dup_0_0, C=>CLK, D=>
      ACCU_1n1ss1(0), R=>Reset);
   GND_EXMPLR47 : GND port map ( G=>Accu_out_0_EXMPLR45);
   ix30768z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30768z1, I0=>Accu_out_dup_0_0, I1=>Accu_in(0));
   ix30769z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30769z1, I0=>Accu_out_1_EXMPLR44, I1=>Accu_in(1));
   ix30770z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30770z1, I0=>Accu_out_2_EXMPLR43, I1=>Accu_in(2));
   ix30771z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30771z1, I0=>Accu_out_3_EXMPLR42, I1=>Accu_in(3));
   ix30772z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30772z1, I0=>Accu_out_4_EXMPLR41, I1=>Accu_in(4));
   ix30773z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30773z1, I0=>Accu_out_5_EXMPLR40, I1=>Accu_in(5));
   ix30774z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30774z1, I0=>Accu_out_6_EXMPLR39, I1=>Accu_in(6));
   ix30775z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30775z1, I0=>Accu_out_7_EXMPLR38, I1=>Accu_in(7));
   ix30776z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30776z1, I0=>Accu_out_8_EXMPLR37, I1=>Accu_in(8));
   ix30777z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx30777z1, I0=>Accu_out_9_EXMPLR36, I1=>Accu_in(9));
   ix5893z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5893z1, I0=>Accu_out_10_EXMPLR35, I1=>Accu_in(10));
   ix5894z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5894z1, I0=>Accu_out_11_EXMPLR34, I1=>Accu_in(11));
   ix5895z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5895z1, I0=>Accu_out_12_EXMPLR33, I1=>Accu_in(12));
   ix5896z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5896z1, I0=>Accu_out_13_EXMPLR32, I1=>Accu_in(13));
   ix5897z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5897z1, I0=>Accu_out_14_EXMPLR31, I1=>Accu_in(14));
   ix5898z1320 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx5898z1, I0=>Accu_out_15_EXMPLR30, I1=>Accu_in(15));
   ix25032z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(15), I0=>ACCU_1n1s1(15), I1=>Accu_in(15), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix26029z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(14), I0=>ACCU_1n1s1(14), I1=>Accu_in(14), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix27026z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(13), I0=>ACCU_1n1s1(13), I1=>Accu_in(13), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix28023z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(12), I0=>ACCU_1n1s1(12), I1=>Accu_in(12), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix29020z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(11), I0=>ACCU_1n1s1(11), I1=>Accu_in(11), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix30017z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(10), I0=>ACCU_1n1s1(10), I1=>Accu_in(10), 
      I2=>p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix65025z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(9), I0=>ACCU_1n1s1(9), I1=>Accu_in(9), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix486z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(8), I0=>ACCU_1n1s1(8), I1=>Accu_in(8), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix1483z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(7), I0=>ACCU_1n1s1(7), I1=>Accu_in(7), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix2480z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(6), I0=>ACCU_1n1s1(6), I1=>Accu_in(6), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix3477z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(5), I0=>ACCU_1n1s1(5), I1=>Accu_in(5), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix4474z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(4), I0=>ACCU_1n1s1(4), I1=>Accu_in(4), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix5471z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(3), I0=>ACCU_1n1s1(3), I1=>Accu_in(3), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix6468z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(2), I0=>ACCU_1n1s1(2), I1=>Accu_in(2), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix7465z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(1), I0=>ACCU_1n1s1(1), I1=>Accu_in(1), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix8462z53740 : LUT4
      generic map (INIT => X"CCCA") 
       port map ( O=>ACCU_1n1ss1(0), I0=>ACCU_1n1s1(0), I1=>Accu_in(0), I2=>
      p_U6_current_state_0, I3=>p_ack_F2ADC);
   ix24035z1568 : LUT3
      generic map (INIT => X"FE") 
       port map ( O=>nx24035z1, I0=>Reset, I1=>p_U6_current_state_0, I2=>
      p_ack_F2ADC);
end A_unfold_494 ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity mult_16_0 is 
   port (
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0)) ;
end mult_16_0 ;

architecture IMPLEMENTATION of mult_16_0 is 
   signal nx2247z2: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   ps_gnd : GND port map ( G=>nx2247z2);
   ix2247z10733 : MULT18X18 port map ( P(35)=>DANGLING(0,0), P(34)=>
      DANGLING(0,1), P(33)=>DANGLING(0,2), P(32)=>DANGLING(0,3), P(31)=>
      DANGLING(0,4), P(30)=>DANGLING(0,5), P(29)=>DANGLING(0,6), P(28)=>
      DANGLING(0,7), P(27)=>DANGLING(0,8), P(26)=>DANGLING(0,9), P(25)=>
      DANGLING(0,10), P(24)=>DANGLING(0,11), P(23)=>DANGLING(0,12), P(22)=>
      DANGLING(0,13), P(21)=>DANGLING(0,14), P(20)=>DANGLING(0,15), P(19)=>
      DANGLING(0,16), P(18)=>DANGLING(0,17), P(17)=>DANGLING(0,18), P(16)=>
      DANGLING(0,19), P(15)=>d(15), P(14)=>d(14), P(13)=>d(13), P(12)=>d(12), 
      P(11)=>d(11), P(10)=>d(10), P(9)=>d(9), P(8)=>d(8), P(7)=>d(7), P(6)=>
      d(6), P(5)=>d(5), P(4)=>d(4), P(3)=>d(3), P(2)=>d(2), P(1)=>d(1), P(0)
      =>d(0), A(17)=>nx2247z2, A(16)=>nx2247z2, A(15)=>nx2247z2, A(14)=>
      nx2247z2, A(13)=>nx2247z2, A(12)=>nx2247z2, A(11)=>nx2247z2, A(10)=>
      nx2247z2, A(9)=>nx2247z2, A(8)=>nx2247z2, A(7)=>a(7), A(6)=>a(6), A(5)
      =>a(5), A(4)=>a(4), A(3)=>a(3), A(2)=>a(2), A(1)=>a(1), A(0)=>a(0), 
      B(17)=>nx2247z2, B(16)=>nx2247z2, B(15)=>nx2247z2, B(14)=>nx2247z2, 
      B(13)=>nx2247z2, B(12)=>nx2247z2, B(11)=>nx2247z2, B(10)=>nx2247z2, 
      B(9)=>nx2247z2, B(8)=>nx2247z2, B(7)=>b(7), B(6)=>b(6), B(5)=>b(5), 
      B(4)=>b(4), B(3)=>b(3), B(2)=>b(2), B(1)=>b(1), B(0)=>b(0));
end IMPLEMENTATION ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity FILTER is 
   port (
      Filter_In : IN std_logic_vector (7 DOWNTO 0) ;
      CLK : IN std_logic ;
      RESET : IN std_logic ;
      ADC_Eocb : IN std_logic ;
      ADC_Convstb : OUT std_logic ;
      ADC_Rdb : OUT std_logic ;
      ADC_csb : OUT std_logic ;
      DAC_WRb : OUT std_logic ;
      DAC_csb : OUT std_logic ;
      LDACb : OUT std_logic ;
      CLRb : OUT std_logic ;
      Filter_Out : OUT std_logic_vector (7 DOWNTO 0)) ;
end FILTER ;

architecture A of FILTER is 
   component ACCU
      port (
         Accu_in : IN std_logic_vector (15 DOWNTO 0) ;
         Accu_ctrl : IN std_logic ;
         CLK : IN std_logic ;
         Reset : IN std_logic ;
         Accu_out : OUT std_logic_vector (20 DOWNTO 0) ;
         p_ack_F2ADC : IN std_logic ;
         p_U6_current_state_0 : IN std_logic) ;
   end component ;
   component mult_16_0
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   signal Filter_Out_dup_0: std_logic_vector (7 DOWNTO 0) ;
   
   signal Buff_OE, ack_F2ADC, FSM_ADC_read_en: std_logic ;
   
   signal Filter_In_mem: std_logic_vector (7 DOWNTO 0) ;
   
   signal Mult_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal Accu_out_19, Accu_out_18, Accu_out_17, Accu_out_16, Accu_out_15, 
      Accu_out_14, Accu_out_13, Accu_out_12: std_logic ;
   
   signal Rom_Address: std_logic_vector (4 DOWNTO 0) ;
   
   signal U6_req_F2DAC, U6_current_state_2, U6_current_state_0: std_logic ;
   
   signal U7_current_state: std_logic_vector (3 DOWNTO 0) ;
   
   signal nx36612z18, nx16821z1, nx21956z1, nx27091z1, nx32226z1, nx37361z1, 
      nx42496z1, nx47631z1, nx52766z1, nx7635z1, nx57149z1, nx62284z1, 
      nx1883z1, nx7018z1, nx12153z1, nx17288z1, nx22423z1, nx27558z1, 
      nx32693z1, nx37828z1, nx64936z1, nx4535z1, nx9670z1, nx14805z1, 
      nx19940z1, nx36612z5, nx36612z6, nx36612z8, nx36612z9, nx36612z15, 
      nx36612z16, nx12322z1, nx36612z38, nx36612z36, nx36612z37, nx36612z43, 
      nx36612z41, nx36612z42, nx36612z48, nx36612z46, nx36612z47, nx36612z53, 
      nx36612z51, nx36612z52, nx36612z58, nx36612z56, nx36612z57, nx36612z63, 
      nx36612z61, nx36612z62, nx36612z68, nx36612z66, nx36612z67, nx36612z73, 
      nx36612z71, nx36612z72: std_logic ;
   
   signal Filter_In_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal CLK_int, RESET_int, ADC_Eocb_int, U6_not_CrossHierIn_4, nx29023z1, 
      nx23947z1, nx43698z1, nx10272z1, nx8278z1, nx45424z1, nx46421z1, 
      nx58526z1, nx57529z1, nx56532z1, nx59523z1, nx55535z1, nx36612z91, 
      nx36612z85, nx36612z82, nx36612z74, nx29750z1, nx9275z1, nx7281z1, 
      nx47418z2, nx47418z1, nx48415z1, nx47418z3, nx36612z93, nx36612z92, 
      nx36612z90, nx36612z89, nx36612z88, nx36612z87, nx36612z86, nx36612z84, 
      nx36612z83, nx36612z81, nx36612z80, nx36612z79, nx36612z78, nx36612z77, 
      nx36612z76, nx36612z75, nx36612z70, nx36612z69, nx36612z65, nx36612z64, 
      nx36612z60, nx36612z59, nx36612z55, nx36612z54, nx36612z50, nx36612z49, 
      nx36612z45, nx36612z44, nx36612z40, nx36612z39, nx36612z35, nx36612z34, 
      nx36612z33, nx36612z32, nx36612z31, nx36612z30, nx36612z29, nx36612z28, 
      nx36612z27, nx36612z26, nx36612z25, nx36612z24, nx36612z23, nx36612z22, 
      nx36612z21, nx36612z20, nx36612z19, nx36612z17, nx36612z14, nx36612z13, 
      nx36612z12, nx36612z11, nx36612z10, nx36612z7, nx36612z4, nx36612z3, 
      nx36612z2, nx36612z1: std_logic ;
   type DANGLING_type is array (0 downto 0,511 downto 0) of std_logic ;
   signal DANGLING : DANGLING_type ;

begin
   U4 : ACCU port map ( Accu_in(15)=>Mult_out(15), Accu_in(14)=>Mult_out(14), 
      Accu_in(13)=>Mult_out(13), Accu_in(12)=>Mult_out(12), Accu_in(11)=>
      Mult_out(11), Accu_in(10)=>Mult_out(10), Accu_in(9)=>Mult_out(9), 
      Accu_in(8)=>Mult_out(8), Accu_in(7)=>Mult_out(7), Accu_in(6)=>
      Mult_out(6), Accu_in(5)=>Mult_out(5), Accu_in(4)=>Mult_out(4), 
      Accu_in(3)=>Mult_out(3), Accu_in(2)=>Mult_out(2), Accu_in(1)=>
      Mult_out(1), Accu_in(0)=>Mult_out(0), Accu_ctrl=>DANGLING(0,0), CLK=>
      CLK_int, Reset=>RESET_int, Accu_out(20)=>DANGLING(0,1), Accu_out(19)=>
      Accu_out_19, Accu_out(18)=>Accu_out_18, Accu_out(17)=>Accu_out_17, 
      Accu_out(16)=>Accu_out_16, Accu_out(15)=>Accu_out_15, Accu_out(14)=>
      Accu_out_14, Accu_out(13)=>Accu_out_13, Accu_out(12)=>Accu_out_12, 
      Accu_out(11)=>DANGLING(0,2), Accu_out(10)=>DANGLING(0,3), Accu_out(9)
      =>DANGLING(0,4), Accu_out(8)=>DANGLING(0,5), Accu_out(7)=>
      DANGLING(0,6), Accu_out(6)=>DANGLING(0,7), Accu_out(5)=>DANGLING(0,8), 
      Accu_out(4)=>DANGLING(0,9), Accu_out(3)=>DANGLING(0,10), Accu_out(2)=>
      DANGLING(0,11), Accu_out(1)=>DANGLING(0,12), Accu_out(0)=>
      DANGLING(0,13), p_ack_F2ADC=>ack_F2ADC, p_U6_current_state_0=>
      U6_current_state_0);
   U3_Mult_out_multu16_0 : mult_16_0 port map ( a(15)=>DANGLING(0,14), a(14)
      =>DANGLING(0,15), a(13)=>DANGLING(0,16), a(12)=>DANGLING(0,17), a(11)
      =>DANGLING(0,18), a(10)=>DANGLING(0,19), a(9)=>DANGLING(0,20), a(8)=>
      DANGLING(0,21), a(7)=>nx36612z1, a(6)=>nx36612z39, a(5)=>nx36612z44, 
      a(4)=>nx36612z49, a(3)=>nx36612z54, a(2)=>nx36612z59, a(1)=>nx36612z64, 
      a(0)=>nx36612z69, b(15)=>DANGLING(0,22), b(14)=>DANGLING(0,23), b(13)
      =>DANGLING(0,24), b(12)=>DANGLING(0,25), b(11)=>DANGLING(0,26), b(10)
      =>DANGLING(0,27), b(9)=>DANGLING(0,28), b(8)=>DANGLING(0,29), b(7)=>
      nx36612z74, b(6)=>nx36612z75, b(5)=>nx36612z77, b(4)=>nx36612z79, b(3)
      =>nx36612z82, b(2)=>nx36612z85, b(1)=>nx36612z88, b(0)=>nx36612z91, 
      d(15)=>Mult_out(15), d(14)=>Mult_out(14), d(13)=>Mult_out(13), d(12)=>
      Mult_out(12), d(11)=>Mult_out(11), d(10)=>Mult_out(10), d(9)=>
      Mult_out(9), d(8)=>Mult_out(8), d(7)=>Mult_out(7), d(6)=>Mult_out(6), 
      d(5)=>Mult_out(5), d(4)=>Mult_out(4), d(3)=>Mult_out(3), d(2)=>
      Mult_out(2), d(1)=>Mult_out(1), d(0)=>Mult_out(0));
   ix36612z15041 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z36, Q15=>nx36612z38, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(7));
   ix36612z15042 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z37, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z38);
   ix36612z15045 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z41, Q15=>nx36612z43, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(6));
   ix36612z15046 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z42, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z43);
   ix36612z15049 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z46, Q15=>nx36612z48, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(5));
   ix36612z15050 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z47, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z48);
   ix36612z15053 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z51, Q15=>nx36612z53, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(4));
   ix36612z15054 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z52, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z53);
   ix36612z15057 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z56, Q15=>nx36612z58, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(3));
   ix36612z15058 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z57, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z58);
   ix36612z15061 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z61, Q15=>nx36612z63, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(2));
   ix36612z15062 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z62, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z63);
   ix36612z15065 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z66, Q15=>nx36612z68, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(1));
   ix36612z15066 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z67, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z68);
   ix36612z15069 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z71, Q15=>nx36612z73, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>Filter_In_mem(0));
   ix36612z15070 : SRLC16E
      generic map (INIT => X"0000") 
       port map ( Q=>nx36612z72, Q15=>OPEN, A0=>Rom_Address(0), A1=>
      Rom_Address(1), A2=>Rom_Address(2), A3=>Rom_Address(3), CE=>
      U6_req_F2DAC, CLK=>CLK_int, D=>nx36612z73);
   reg_Rom_Address_4 : FDS port map ( Q=>Rom_Address(4), C=>CLK_int, D=>
      nx55535z1, S=>nx59523z1);
   reg_Rom_Address_3 : FDS port map ( Q=>Rom_Address(3), C=>CLK_int, D=>
      nx56532z1, S=>nx59523z1);
   reg_Rom_Address_2 : FDS port map ( Q=>Rom_Address(2), C=>CLK_int, D=>
      nx57529z1, S=>nx59523z1);
   reg_Rom_Address_1 : FDS port map ( Q=>Rom_Address(1), C=>CLK_int, D=>
      nx58526z1, S=>nx59523z1);
   reg_Rom_Address_0 : FDS port map ( Q=>Rom_Address(0), C=>CLK_int, D=>
      U6_not_CrossHierIn_4, S=>nx59523z1);
   U5_reg_Buff_out_7 : FDRE port map ( Q=>Filter_Out_dup_0(7), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_19, R=>RESET_int);
   U5_reg_Buff_out_6 : FDRE port map ( Q=>Filter_Out_dup_0(6), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_18, R=>RESET_int);
   U5_reg_Buff_out_5 : FDRE port map ( Q=>Filter_Out_dup_0(5), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_17, R=>RESET_int);
   U5_reg_Buff_out_4 : FDRE port map ( Q=>Filter_Out_dup_0(4), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_16, R=>RESET_int);
   U5_reg_Buff_out_3 : FDRE port map ( Q=>Filter_Out_dup_0(3), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_15, R=>RESET_int);
   U5_reg_Buff_out_2 : FDRE port map ( Q=>Filter_Out_dup_0(2), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_14, R=>RESET_int);
   U5_reg_Buff_out_1 : FDRE port map ( Q=>Filter_Out_dup_0(1), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_13, R=>RESET_int);
   U5_reg_Buff_out_0 : FDRE port map ( Q=>Filter_Out_dup_0(0), C=>CLK_int, 
      CE=>Buff_OE, D=>Accu_out_12, R=>RESET_int);
   U6_reg_current_state_4 : FDR port map ( Q=>U6_req_F2DAC, C=>CLK_int, D=>
      nx48415z1, R=>RESET_int);
   U6_reg_current_state_3 : FDR port map ( Q=>Buff_OE, C=>CLK_int, D=>
      nx47418z1, R=>RESET_int);
   U6_reg_current_state_2 : FDR port map ( Q=>U6_current_state_2, C=>CLK_int, 
      D=>nx46421z1, R=>RESET_int);
   U6_reg_current_state_1 : FDR port map ( Q=>ack_F2ADC, C=>CLK_int, D=>
      nx45424z1, R=>RESET_int);
   U6_reg_current_state_0 : FDS port map ( Q=>U6_current_state_0, C=>CLK_int, 
      D=>nx23947z1, S=>RESET_int);
   U7_reg_current_state_4 : FDR port map ( Q=>FSM_ADC_read_en, C=>CLK_int, D
      =>U7_current_state(3), R=>RESET_int);
   U7_reg_current_state_3 : FDR port map ( Q=>U7_current_state(3), C=>
      CLK_int, D=>nx7281z1, R=>RESET_int);
   U7_reg_current_state_2 : FDR port map ( Q=>U7_current_state(2), C=>
      CLK_int, D=>nx8278z1, R=>RESET_int);
   U7_reg_current_state_1 : FDR port map ( Q=>U7_current_state(1), C=>
      CLK_int, D=>nx9275z1, R=>RESET_int);
   U7_reg_current_state_0 : FDS port map ( Q=>U7_current_state(0), C=>
      CLK_int, D=>nx10272z1, S=>RESET_int);
   U9_reg_reg_7 : FDRE port map ( Q=>Filter_In_mem(7), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(7), R=>RESET_int);
   U9_reg_reg_6 : FDRE port map ( Q=>Filter_In_mem(6), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(6), R=>RESET_int);
   U9_reg_reg_5 : FDRE port map ( Q=>Filter_In_mem(5), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(5), R=>RESET_int);
   U9_reg_reg_4 : FDRE port map ( Q=>Filter_In_mem(4), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(4), R=>RESET_int);
   U9_reg_reg_3 : FDRE port map ( Q=>Filter_In_mem(3), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(3), R=>RESET_int);
   U9_reg_reg_2 : FDRE port map ( Q=>Filter_In_mem(2), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(2), R=>RESET_int);
   U9_reg_reg_1 : FDRE port map ( Q=>Filter_In_mem(1), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(1), R=>RESET_int);
   U9_reg_reg_0 : FDRE port map ( Q=>Filter_In_mem(0), C=>CLK_int, CE=>
      FSM_ADC_read_en, D=>Filter_In_int(0), R=>RESET_int);
   ix48_reg_x_0_7 : FDRE port map ( Q=>nx16821z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx43698z1, R=>RESET_int);
   ix48_reg_x_1_7 : FDRE port map ( Q=>nx21956z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx16821z1, R=>RESET_int);
   ix48_reg_x_2_7 : FDRE port map ( Q=>nx27091z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx21956z1, R=>RESET_int);
   ix48_reg_x_3_7 : FDRE port map ( Q=>nx32226z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx27091z1, R=>RESET_int);
   ix48_reg_x_4_7 : FDRE port map ( Q=>nx37361z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx32226z1, R=>RESET_int);
   ix48_reg_x_5_7 : FDRE port map ( Q=>nx42496z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx37361z1, R=>RESET_int);
   ix48_reg_x_6_7 : FDRE port map ( Q=>nx47631z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx42496z1, R=>RESET_int);
   ix48_reg_x_7_7 : FDRE port map ( Q=>nx52766z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx47631z1, R=>RESET_int);
   ix48_reg_x_8_7 : FDRE port map ( Q=>nx7635z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx52766z1, R=>RESET_int);
   ix48_reg_x_9_7 : FDRE port map ( Q=>nx57149z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx7635z1, R=>RESET_int);
   ix48_reg_x_10_7 : FDRE port map ( Q=>nx62284z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx57149z1, R=>RESET_int);
   ix48_reg_x_11_7 : FDRE port map ( Q=>nx1883z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx62284z1, R=>RESET_int);
   ix48_reg_x_12_7 : FDRE port map ( Q=>nx7018z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx1883z1, R=>RESET_int);
   ix48_reg_x_13_7 : FDRE port map ( Q=>nx12153z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx7018z1, R=>RESET_int);
   ix48_reg_x_14_7 : FDRE port map ( Q=>nx17288z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx12153z1, R=>RESET_int);
   ix48_reg_x_15_7 : FDRE port map ( Q=>nx22423z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx17288z1, R=>RESET_int);
   ix48_reg_x_16_7 : FDRE port map ( Q=>nx27558z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx22423z1, R=>RESET_int);
   ix48_reg_x_17_7 : FDRE port map ( Q=>nx32693z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx27558z1, R=>RESET_int);
   ix48_reg_x_18_7 : FDRE port map ( Q=>nx37828z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx32693z1, R=>RESET_int);
   ix48_reg_x_19_7 : FDRE port map ( Q=>nx64936z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx37828z1, R=>RESET_int);
   ix48_reg_x_20_7 : FDRE port map ( Q=>nx4535z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx64936z1, R=>RESET_int);
   ix48_reg_x_21_7 : FDRE port map ( Q=>nx9670z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx4535z1, R=>RESET_int);
   ix48_reg_x_22_7 : FDRE port map ( Q=>nx14805z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx9670z1, R=>RESET_int);
   ix48_reg_x_23_7 : FDRE port map ( Q=>nx19940z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx14805z1, R=>RESET_int);
   ix48_reg_x_24_7 : FDRE port map ( Q=>nx36612z5, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx19940z1, R=>RESET_int);
   ix48_reg_x_25_7 : FDRE port map ( Q=>nx36612z6, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z5, R=>RESET_int);
   ix48_reg_x_26_7 : FDRE port map ( Q=>nx36612z8, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z6, R=>RESET_int);
   ix48_reg_x_27_7 : FDRE port map ( Q=>nx36612z9, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z8, R=>RESET_int);
   ix48_reg_x_28_7 : FDRE port map ( Q=>nx36612z15, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z9, R=>RESET_int);
   ix48_reg_x_29_7 : FDRE port map ( Q=>nx36612z16, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z15, R=>RESET_int);
   ix48_reg_x_30_7 : FDRE port map ( Q=>nx12322z1, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx36612z16, R=>RESET_int);
   ix48_reg_x_31_7 : FDRE port map ( Q=>nx36612z18, C=>CLK_int, CE=>
      U6_req_F2DAC, D=>nx12322z1, R=>RESET_int);
   Filter_Out_obuf_0 : OBUF port map ( O=>Filter_Out(0), I=>
      Filter_Out_dup_0(0));
   Filter_Out_obuf_1 : OBUF port map ( O=>Filter_Out(1), I=>
      Filter_Out_dup_0(1));
   Filter_Out_obuf_2 : OBUF port map ( O=>Filter_Out(2), I=>
      Filter_Out_dup_0(2));
   Filter_Out_obuf_3 : OBUF port map ( O=>Filter_Out(3), I=>
      Filter_Out_dup_0(3));
   Filter_Out_obuf_4 : OBUF port map ( O=>Filter_Out(4), I=>
      Filter_Out_dup_0(4));
   Filter_Out_obuf_5 : OBUF port map ( O=>Filter_Out(5), I=>
      Filter_Out_dup_0(5));
   Filter_Out_obuf_6 : OBUF port map ( O=>Filter_Out(6), I=>
      Filter_Out_dup_0(6));
   Filter_Out_obuf_7 : OBUF port map ( O=>Filter_Out(7), I=>
      Filter_Out_dup_0(7));
   CLRb_obuf : OBUF port map ( O=>CLRb, I=>nx43698z1);
   LDACb_obuf : OBUF port map ( O=>LDACb, I=>nx23947z1);
   DAC_csb_obuf : OBUF port map ( O=>DAC_csb, I=>nx23947z1);
   DAC_WRb_obuf : OBUF port map ( O=>DAC_WRb, I=>nx23947z1);
   ADC_csb_obuf : OBUF port map ( O=>ADC_csb, I=>nx29750z1);
   ADC_Rdb_obuf : OBUF port map ( O=>ADC_Rdb, I=>nx29750z1);
   ADC_Convstb_obuf : OBUF port map ( O=>ADC_Convstb, I=>nx29023z1);
   ADC_Eocb_ibuf : IBUF port map ( O=>ADC_Eocb_int, I=>ADC_Eocb);
   RESET_ibuf : IBUF port map ( O=>RESET_int, I=>RESET);
   Filter_In_ibuf_0 : IBUF port map ( O=>Filter_In_int(0), I=>Filter_In(0));
   Filter_In_ibuf_1 : IBUF port map ( O=>Filter_In_int(1), I=>Filter_In(1));
   Filter_In_ibuf_2 : IBUF port map ( O=>Filter_In_int(2), I=>Filter_In(2));
   Filter_In_ibuf_3 : IBUF port map ( O=>Filter_In_int(3), I=>Filter_In(3));
   Filter_In_ibuf_4 : IBUF port map ( O=>Filter_In_int(4), I=>Filter_In(4));
   Filter_In_ibuf_5 : IBUF port map ( O=>Filter_In_int(5), I=>Filter_In(5));
   Filter_In_ibuf_6 : IBUF port map ( O=>Filter_In_int(6), I=>Filter_In(6));
   Filter_In_ibuf_7 : IBUF port map ( O=>Filter_In_int(7), I=>Filter_In(7));
   U6_not_CrossHierIn_4_EXMPLR87 : INV port map ( O=>U6_not_CrossHierIn_4, I
      =>Rom_Address(0));
   ix29023z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx29023z1, I0=>U7_current_state(2), I1=>
      U7_current_state(0));
   ps_gnd : GND port map ( G=>nx23947z1);
   ps_vcc : VCC port map ( P=>nx43698z1);
   ix10272z1534 : LUT3
      generic map (INIT => X"DC") 
       port map ( O=>nx10272z1, I0=>ack_F2ADC, I1=>FSM_ADC_read_en, I2=>
      U7_current_state(0));
   ix8278z1550 : LUT3
      generic map (INIT => X"EC") 
       port map ( O=>nx8278z1, I0=>U7_current_state(2), I1=>
      U7_current_state(1), I2=>ADC_Eocb_int);
   ix45424z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx45424z1, I0=>U6_req_F2DAC, I1=>U6_current_state_0);
   ix46421z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx46421z1, I0=>nx47418z2, I1=>ack_F2ADC);
   ix58526z1323 : LUT2
      generic map (INIT => X"9") 
       port map ( O=>nx58526z1, I0=>Rom_Address(1), I1=>Rom_Address(0));
   ix57529z1483 : LUT3
      generic map (INIT => X"A9") 
       port map ( O=>nx57529z1, I0=>Rom_Address(2), I1=>Rom_Address(1), I2=>
      Rom_Address(0));
   ix56532z45003 : LUT4
      generic map (INIT => X"AAA9") 
       port map ( O=>nx56532z1, I0=>Rom_Address(3), I1=>Rom_Address(2), I2=>
      Rom_Address(1), I3=>Rom_Address(0));
   ix59523z1555 : LUT3
      generic map (INIT => X"F1") 
       port map ( O=>nx59523z1, I0=>ack_F2ADC, I1=>U6_current_state_2, I2=>
      RESET_int);
   ix55535z1512 : LUT3
      generic map (INIT => X"C6") 
       port map ( O=>nx55535z1, I0=>nx47418z3, I1=>Rom_Address(4), I2=>
      Rom_Address(2));
   ix36612z1472 : LUT3
      generic map (INIT => X"53") 
       port map ( O=>nx36612z91, I0=>nx36612z92, I1=>nx36612z93, I2=>
      Rom_Address(1));
   ix36612z1466 : LUT3
      generic map (INIT => X"53") 
       port map ( O=>nx36612z85, I0=>nx36612z86, I1=>nx36612z87, I2=>
      Rom_Address(1));
   ix36612z1433 : LUT3
      generic map (INIT => X"35") 
       port map ( O=>nx36612z82, I0=>nx36612z83, I1=>nx36612z84, I2=>
      Rom_Address(1));
   ix36612z1378 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z74, I0=>Rom_Address(4), I1=>Rom_Address(3));
   ix29750z1315 : LUT2
      generic map (INIT => X"1") 
       port map ( O=>nx29750z1, I0=>FSM_ADC_read_en, I1=>U7_current_state(3)
   );
   ix9275z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx9275z1, I0=>ack_F2ADC, I1=>U7_current_state(0));
   ix7281z1316 : LUT2
      generic map (INIT => X"2") 
       port map ( O=>nx7281z1, I0=>U7_current_state(2), I1=>ADC_Eocb_int);
   ix47418z547 : LUT4
      generic map (INIT => X"FD00") 
       port map ( O=>nx47418z2, I0=>nx47418z3, I1=>Rom_Address(4), I2=>
      Rom_Address(2), I3=>U6_current_state_2);
   ix47418z5682 : LUT4
      generic map (INIT => X"1110") 
       port map ( O=>nx47418z1, I0=>nx47418z2, I1=>nx48415z1, I2=>Buff_OE, 
      I3=>U6_current_state_2);
   ix48415z1482 : LUT3
      generic map (INIT => X"A8") 
       port map ( O=>nx48415z1, I0=>Buff_OE, I1=>FSM_ADC_read_en, I2=>
      U7_current_state(0));
   ix47418z1317 : LUT3
      generic map (INIT => X"01") 
       port map ( O=>nx47418z3, I0=>Rom_Address(3), I1=>Rom_Address(1), I2=>
      Rom_Address(0));
   ix36612z1605 : LUT4
      generic map (INIT => X"00D6") 
       port map ( O=>nx36612z93, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z28782 : LUT4
      generic map (INIT => X"6B00") 
       port map ( O=>nx36612z92, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z24933 : LUT4
      generic map (INIT => X"5BF9") 
       port map ( O=>nx36612z90, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z42309 : LUT4
      generic map (INIT => X"9FDA") 
       port map ( O=>nx36612z89, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1469 : LUT3
      generic map (INIT => X"53") 
       port map ( O=>nx36612z88, I0=>nx36612z89, I1=>nx36612z90, I2=>
      Rom_Address(1));
   ix36612z28525 : LUT4
      generic map (INIT => X"6A04") 
       port map ( O=>nx36612z87, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z9662 : LUT4
      generic map (INIT => X"2056") 
       port map ( O=>nx36612z86, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z7164 : LUT4
      generic map (INIT => X"1696") 
       port map ( O=>nx36612z84, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z28365 : LUT4
      generic map (INIT => X"6968") 
       port map ( O=>nx36612z83, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z60093 : LUT4
      generic map (INIT => X"E55A") 
       port map ( O=>nx36612z81, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z43706 : LUT4
      generic map (INIT => X"A558") 
       port map ( O=>nx36612z80, I0=>Rom_Address(4), I1=>Rom_Address(3), I2
      =>Rom_Address(2), I3=>Rom_Address(0));
   ix36612z1435 : LUT3
      generic map (INIT => X"3A") 
       port map ( O=>nx36612z79, I0=>nx36612z80, I1=>nx36612z81, I2=>
      Rom_Address(1));
   ix36612z1382 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z78, I0=>Rom_Address(3), I1=>Rom_Address(0));
   ix36612z15355 : LUT4
      generic map (INIT => X"369C") 
       port map ( O=>nx36612z77, I0=>nx36612z78, I1=>Rom_Address(4), I2=>
      Rom_Address(2), I3=>Rom_Address(1));
   ix36612z61990 : LUT4
      generic map (INIT => X"ECC8") 
       port map ( O=>nx36612z76, I0=>Rom_Address(3), I1=>Rom_Address(2), I2
      =>Rom_Address(1), I3=>Rom_Address(0));
   ix36612z1379 : LUT2
      generic map (INIT => X"6") 
       port map ( O=>nx36612z75, I0=>nx36612z76, I1=>Rom_Address(4));
   ix36612z1396 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z70, I0=>Rom_Address(4), I1=>nx36612z71, I2=>
      nx36612z72);
   ix36612z2651 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z69, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z70, I3=>Rom_Address(4));
   ix36612z1392 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z65, I0=>Rom_Address(4), I1=>nx36612z66, I2=>
      nx36612z67);
   ix36612z2647 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z64, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z65, I3=>Rom_Address(4));
   ix36612z1388 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z60, I0=>Rom_Address(4), I1=>nx36612z61, I2=>
      nx36612z62);
   ix36612z2643 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z59, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z60, I3=>Rom_Address(4));
   ix36612z1384 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z55, I0=>Rom_Address(4), I1=>nx36612z56, I2=>
      nx36612z57);
   ix36612z2639 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z54, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z55, I3=>Rom_Address(4));
   ix36612z1380 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z50, I0=>Rom_Address(4), I1=>nx36612z51, I2=>
      nx36612z52);
   ix36612z2635 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z49, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z50, I3=>Rom_Address(4));
   ix36612z1376 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z45, I0=>Rom_Address(4), I1=>nx36612z46, I2=>
      nx36612z47);
   ix36612z2631 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z44, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z45, I3=>Rom_Address(4));
   ix36612z1372 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z40, I0=>Rom_Address(4), I1=>nx36612z41, I2=>
      nx36612z42);
   ix36612z2627 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z39, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z40, I3=>Rom_Address(4));
   ix36612z1368 : LUT3
      generic map (INIT => X"1B") 
       port map ( O=>nx36612z35, I0=>Rom_Address(4), I1=>nx36612z36, I2=>
      nx36612z37);
   ix36612z44380 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z34, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx17288z1, I3=>nx22423z1);
   ix36612z22859 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z33, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx7018z1, I3=>nx12153z1);
   ix36612z58682 : LUT4
      generic map (INIT => X"E000") 
       port map ( O=>nx36612z32, I0=>nx36612z33, I1=>nx36612z34, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z44377 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z31, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx47631z1, I3=>nx52766z1);
   ix36612z22856 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z30, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx37361z1, I3=>nx42496z1);
   ix36612z4919 : LUT4
      generic map (INIT => X"0E00") 
       port map ( O=>nx36612z29, I0=>nx36612z30, I1=>nx36612z31, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z44374 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z28, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx62284z1, I3=>nx1883z1);
   ix36612z22853 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z27, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx7635z1, I3=>nx57149z1);
   ix36612z1556 : LUT4
      generic map (INIT => X"00E0") 
       port map ( O=>nx36612z26, I0=>nx36612z27, I1=>nx36612z28, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z44371 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z25, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx27091z1, I3=>nx32226z1);
   ix36612z22850 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z24, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx16821z1, I3=>nx21956z1);
   ix36612z1343 : LUT4
      generic map (INIT => X"000E") 
       port map ( O=>nx36612z23, I0=>nx36612z24, I1=>nx36612z25, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z1329 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx36612z22, I0=>nx36612z23, I1=>nx36612z26, I2=>
      nx36612z29, I3=>nx36612z32);
   ix36612z44367 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z21, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx14805z1, I3=>nx19940z1);
   ix36612z22846 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z20, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx4535z1, I3=>nx9670z1);
   ix36612z4909 : LUT4
      generic map (INIT => X"0E00") 
       port map ( O=>nx36612z19, I0=>nx36612z20, I1=>nx36612z21, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z42924 : LUT4
      generic map (INIT => X"A280") 
       port map ( O=>nx36612z17, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx36612z18, I3=>nx12322z1);
   ix36612z22843 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z14, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx36612z15, I3=>nx36612z16);
   ix36612z58666 : LUT4
      generic map (INIT => X"E000") 
       port map ( O=>nx36612z13, I0=>nx36612z14, I1=>nx36612z17, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z44361 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z12, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx37828z1, I3=>nx64936z1);
   ix36612z22840 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z11, I0=>Rom_Address(1), I1=>Rom_Address(0), I2
      =>nx27558z1, I3=>nx32693z1);
   ix36612z1333 : LUT4
      generic map (INIT => X"000E") 
       port map ( O=>nx36612z10, I0=>nx36612z11, I1=>nx36612z12, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z44358 : LUT4
      generic map (INIT => X"A820") 
       port map ( O=>nx36612z7, I0=>Rom_Address(1), I1=>Rom_Address(0), I2=>
      nx36612z8, I3=>nx36612z9);
   ix36612z22837 : LUT4
      generic map (INIT => X"5410") 
       port map ( O=>nx36612z4, I0=>Rom_Address(1), I1=>Rom_Address(0), I2=>
      nx36612z5, I3=>nx36612z6);
   ix36612z1540 : LUT4
      generic map (INIT => X"00E0") 
       port map ( O=>nx36612z3, I0=>nx36612z4, I1=>nx36612z7, I2=>
      Rom_Address(3), I3=>Rom_Address(2));
   ix36612z1316 : LUT4
      generic map (INIT => X"0001") 
       port map ( O=>nx36612z2, I0=>nx36612z3, I1=>nx36612z10, I2=>
      nx36612z13, I3=>nx36612z19);
   ix36612z2597 : LUT4
      generic map (INIT => X"0503") 
       port map ( O=>nx36612z1, I0=>nx36612z2, I1=>nx36612z22, I2=>
      nx36612z35, I3=>Rom_Address(4));
   CLK_ibuf : BUFGP port map ( O=>CLK_int, I=>CLK);
end A ;

