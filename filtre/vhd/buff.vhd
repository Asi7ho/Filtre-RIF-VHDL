------------------------------BUFF.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity BUFF is
  port(Buff_in   : in  std_logic_vector(7 downto 0);
        Buff_OE  : in  std_logic;
        CLK      : in  std_logic;
        RESET    : in  std_logic;
        Buff_out : out std_logic_vector(7 downto 0)) ;
end BUFF;

architecture A of BUFF is
begin
  P_BUFF : process (CLK)
  begin
    if (CLK'event and CLK = '1') then
      if Reset = '1' then -- synchrone reset
        Buff_out <= (others => '0');
      else
        if (Buff_OE = '1') then
          Buff_out <= Buff_in;
        end if; --memorization if Buff_OE = 0
      end if;
    end if;
  end process P_BUFF;
end A;

