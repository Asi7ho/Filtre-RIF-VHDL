----------------------------------- bench filter-------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use std.textio.all;
use ieee.math_real.all;



library modelsim_lib;
use modelsim_lib.util.all;

library lib_VHDL;
--library lib_SYNTH;

entity bench_filter is
end entity;  -- bench_filter

architecture arch of bench_filter is

  component filter
    port(
      	    Filter_In    : in  std_logic_vector(7 downto 0);
        CLK         : in  std_logic;
        RESET       : in  std_logic;
        ADC_Eocb     : in  std_logic;
        ADC_Convstb : out std_logic;
        ADC_Rdb      : out std_logic;
        ADC_csb     : out std_logic;
        DAC_WRb      : out std_logic;
        DAC_csb      : out std_logic;
        LDACb        : out std_logic;
        CLRB         : out std_logic;
        Filter_Out  : out std_logic_vector(7 downto 0)) ;  
  end component;

  signal CLK        : std_logic := '0';
    signal RESET      : std_logic;
    signal Filter_In  : std_logic_vector(7 downto 0):="00000000";
    signal Filter_Out : std_logic_vector(7 downto 0);
    signal ADC_eocb    : std_logic;
    signal ADC_convstb : std_logic;
    signal ADC_rdb     : std_logic;
    signal ADC_csb     : std_logic;
    signal DAC_wrb     : std_logic;
    signal DAC_csb     : std_logic;
    signal DAC_ldacb   : std_logic;
    signal DAC_clrb    : std_logic;
    signal Buff_OE    : std_logic;
    signal ADC_convstb_delayed,ADC_eocb_delayed        : std_logic;
    signal Accu_out   : std_logic_vector(20 downto 0);
    type     tab_rom is array (0 to 31) of std_logic_vector(7 downto 0);

constant filter_rom : tab_rom :=
    (0   => "00001101" , 1 => "00010101" , 2 => "00011111" , 3 => "00101100" ,
     --  0x0D               0x15               0x1F               0x2C
     4  => "00111100" , 5 => "01001101" , 6 => "01100001" , 7 => "01110101" ,
     --  0x3C               0x4D               0x61               0x75
     8  => "10001010" , 9 => "10011111" , 10 => "10110011" , 11 => "11000101" ,
     --  0x8A               0x9F               0xB3               0xC5
     12 => "11010100" , 13 => "11100001" , 14 => "11101001" , 15 => "11101110" ,
     --  0xD4               0xE1               0xE9               0xEE
     16 => "11101110" , 17 => "11101001" , 18 => "11100001" , 19 => "11010100" ,
     --  0xEE               0xE9               0xE1               0xD4
     20 => "11000101" , 21 => "10110011" , 22 => "10011111" , 23 => "10001010" ,
     --  0xC5               0xB3               0x9F               0x8A
     24 => "01110101" , 25 => "01100001" , 26 => "01001101" , 27 => "00111100" ,
     --  0x75               0x61               0x4D               0x3C
     28 => "00101100" , 29 => "00011111" , 30 => "00010101" , 31 => "00001101") ;
  --  0x2C               0x1F               0x15               0xD

  type filter_type is array (0 to 200) of std_logic_vector(7 downto 0);
  signal filter_tab : filter_type;
 

begin

   

 


  DUT : filter
    port map (
      CLK         => CLK,
      RESET       => RESET,
      Filter_In   => Filter_In,
      Filter_Out  => Filter_Out,
      ADC_eocb    => ADC_eocb,
      ADC_convstb => ADC_convstb,
      ADC_rdb     => ADC_rdb,
      ADC_csb     => ADC_csb,
      DAC_wrb     => DAC_wrb,
      DAC_csb     => DAC_csb,
      ldacb       => DAC_ldacb,
      clrb        => DAC_clrb
      ) ;


  CLK   <= not(CLK) after 10 ns;
  RESET <= '1', '0' after 45 ns;




  -- purpose: gestion de ADC_eocb
  -- type   : combinational
  -- inputs : 
  -- outputs: 
  convertisseur_ADC : process
  begin
    ADC_eocb  <= '1';
    wait until ADC_convstb'event and ADC_convstb = '0';  --detecte le
                                                         --front descendant de
                                                         --conv apres le reset
    wait for 300 ns;
    ADC_eocb  <= '0';
    wait for 70 ns;
    wait until (ADC_rdb'event or ADC_csb'event) and ADC_rdb = '1' and ADC_csb = '1' for 40 ns;
    ADC_eocb <= '1';
    
  end process;


-- purpose: compute filter in
-- type   : combinational
-- inputs : 
-- outputs: Filter_In
  --process
  --begin  -- process
  --  for i in 0 to 200 loop
  --    wait until ADC_eocb = '0';
  --    Filter_In <= filter_tab(i);
  --  end loop;  -- i

    
  --end process;

  assert_convstb : process              -- a completer pour chaque timing
    variable t1, t2 : time;
  begin  -- process
    wait on ADC_convstb until ADC_convstb = '0';
    t1 := now;
    wait on ADC_convstb until ADC_convstb = '1';
    t2 := now-t1;
    assert t2 >= (20 ns) report "demande de conversion trop courte" severity warning;
  end process;
  
   assert_readb_2convstb : process              
    variable t1, t2 : time;
  begin  -- process
    wait on ADC_rdb until ADC_rdb = '1';
    t1 := now;
    wait on ADC_convstb until ADC_convstb = '0';
    t2 := now-t1;
    assert t2 >= (30 ns) report "demande de conversion top proche de la lecture" severity warning;
  end process;

 assert_readb_pulse : process              
    variable t1, t2 : time;
  begin  -- process
    wait on ADC_rdb until ADC_rdb = '0';
    t1 := now;
    wait on ADC_rdb until ADC_rdb = '1';

    t2 := now-t1;
    assert t2 >= (30 ns)  report "duree minimum de adc_rdb" severity warning;
  end process;

 assert_eoc_pulse : process              
    variable t1, t2 : time;
  begin  -- process
    wait on ADC_eocb until ADC_eocb = '0';
    t1 := now;
    wait on ADC_eocb until ADC_eocb = '1';

    t2 := now-t1;
    assert t2 >= (70 ns) and ((110 ns) >=t2) report "duree de eocb" severity warning;
  end process;
    
 assert_write_pulse : process              
    variable t1, t2 : time;
  begin  -- process
    wait on DAC_wrb until DAC_wrb = '0';
    t1 := now;
    wait on DAC_wrb until DAC_wrb = '1';

    t2 := now-t1;
    assert t2 >= (20 ns) report "duree minimum de DAC_wrb" severity warning;
  end process;


  
 

 LECTURE: process
	 variable L: line;
	 file ENTREES : text open write_mode is "echantillon_sinus.dat";
     variable A: std_logic_vector(7 downto 0);	 -- variables à lire
     variable fsin : real := 1000.0; --30K
     variable t : real ;
 
  begin
    t := real(now/ 1 ns)/1000000000.0;
      wait until ADC_eocb = '0';  
      A := std_logic_vector(to_unsigned(integer(127.0*SIN(2.0*MATH_PI*t*fsin)+127.0),8) ); -- calcul su sinus
      Filter_In <=  A;	-- utilisation pour la simulation

    fsin:=fsin+1.0;
  end process LECTURE;

  
      


    end architecture;  -- arch
