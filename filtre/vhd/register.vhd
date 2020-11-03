library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity register_1 is
  port(clk, reset, enable : in  std_logic;
       shift_in           : in  std_logic_vector (7 downto 0);
       shift_out          : out std_logic_vector (7 downto 0)
       );
end register_1;

architecture A of register_1 is
  signal reg : std_logic_vector(7 downto 0);

begin
  P_register : process (clk)
  begin
    if (clk'event and clk = '1') then
      if reset = '1' then
        reg <= (others => '0');
      elsif (enable = '1') then
        reg <= shift_in; -- copying the entrie
      end if;
    end if;
  end process P_register;

  shift_out <= reg;
end A;
