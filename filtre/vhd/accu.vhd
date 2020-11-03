------------------------------ACCU.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

entity ACCU is
  port(Accu_in    : in  std_logic_vector(15 downto 0);
        Accu_ctrl : in  std_logic;
        CLK       : in  std_logic;
        Reset     : in  std_logic;
        Accu_out  : out std_logic_vector(20 downto 0)) ;

end ACCU;

architecture A of ACCU is
  signal ACCU : unsigned(20 downto 0);
begin
  
  P_ACCU : process (CLK)
  begin
    if (CLK'event and CLK = '1') then
      if Reset = '1' then -- synchrone Reset
        ACCU <= (others => '0');
      elsif Accu_ctrl = '1' then
        ACCU <= "00000" & unsigned(Accu_in); --16 to 21 bits initialization
      else
        ACCU <= ACCU +("00000" & unsigned(Accu_in)); -- sum loop
      end if;
    end if;
  end process P_ACCU;

  Accu_out <= conv_std_logic_vector(ACCU, 21); -- type conversion

end A;
