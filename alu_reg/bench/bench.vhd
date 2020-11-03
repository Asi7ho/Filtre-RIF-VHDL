library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lib_VHDL;
use lib_VHDL.all;

entity alu_reg_testbench is
end entity;



architecture arch_etu of alu_reg_testbench is

  constant CLK_PER : time    := 20 ns;
  constant WIDTH   : integer := 4;

  component alu_reg is
    generic(
      WIDTH : integer := 8
      );

    port (
      clk     : in  std_logic;
      reset_n : in  std_logic;
      din0    : in  std_logic_vector(WIDTH-1 downto 0);
      din1    : in  std_logic_vector(WIDTH-1 downto 0);
      cin     : in  std_logic;
      s2      : in  std_logic;
      s1      : in  std_logic;
      s0      : in  std_logic;
      dout    : out std_logic_vector(WIDTH-1 downto 0);
      cout    : out std_logic
      );
  end component;

  signal clk     : std_logic := '0';
  signal reset_n : std_logic := '1';
  signal din0    : std_logic_vector(WIDTH-1 downto 0);
  signal din1    : std_logic_vector(WIDTH-1 downto 0);
  signal cin     : std_logic;
  signal s2      : std_logic;
  signal s1      : std_logic;
  signal s0      : std_logic;
  signal dout    : std_logic_vector(WIDTH-1 downto 0);
  signal cout    : std_logic;

  signal sel : std_logic_vector(2 downto 0);


begin

  clk <= not clk after CLK_PER/2;

  alu_reg_1 : alu_reg
    generic map (
      WIDTH => WIDTH
      )
    port map (
      clk     => clk,
      reset_n => reset_n,
      din0    => din0,
      din1    => din1,
      cin     => cin,
      s2      => s2,
      s1      => s1,
      s0      => s0,
      dout    => dout,
      cout    => cout);


  s2 <= sel(2);
  s1 <= sel(1);
  s0 <= sel(0);

  p_stim : process
  begin

    cin     <= '1';
    din0    <= "1101";
    din1    <= "0011";
    sel     <= (others => '0');
    reset_n <= '0';
    wait for 2*CLK_PER;
    reset_n <= '1';
    for isel in 0 to 2**sel'length-1 loop
      sel <= std_logic_vector(to_unsigned(isel, sel'length));
      wait until clk = '0' and clk'event;
      if (isel = 2) then
        cin <= '0';
        wait until clk = '0' and clk'event;
        cin <= '1';
      end if;
    end loop;

  end process;

end architecture;




