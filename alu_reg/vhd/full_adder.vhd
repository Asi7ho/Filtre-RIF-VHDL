library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity full_adder is
  generic(
    WIDTH : integer := 8
    );
  port (
    din0 : in  std_logic_vector(WIDTH-1 downto 0);
    din1 : in  std_logic_vector(WIDTH-1 downto 0);
    cin  : in  std_logic;
    dout : out std_logic_vector(WIDTH-1 downto 0);
    cout : out std_logic);
end entity;


architecture arch of full_adder is
  signal result     : unsigned(WIDTH downto 0);
  signal cin_vector : unsigned(WIDTH downto 0);
begin
  cin_vector(WIDTH downto 1) <= (others => '0');
  cin_vector(0)              <= cin;
  result                     <= unsigned("0"&din0) + unsigned("0"&din1) + cin_vector;
  dout                       <= std_logic_vector(result(WIDTH-1 downto 0));
  cout                       <= result(WIDTH);

end architecture;

