------------------------------ROM.vhd-------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ROM is
  port(Rom_Address : in  std_logic_vector(4 downto 0);
        Rom_out    : out std_logic_vector(7 downto 0)) ;
end ROM;

architecture A of ROM is
  type tab_rom is array (0 to 31) of std_logic_vector(7 downto 0);
  constant filter_rom : tab_rom :=
    (0   => "00001101", 1 => "00010101", 2 => "00011111", 3 => "00101100",
      --  0x0D               0x15               0x1F               0x2C
      4  => "00111100", 5 => "01001101", 6 => "01100001", 7 => "01110101",
      --  0x3C               0x4D               0x61               0x75
      8  => "10001010", 9 => "10011111", 10 => "10110011", 11 => "11000101",
      --  0x8A               0x9F               0xB3               0xC5
      12 => "11010100", 13 => "11100001", 14 => "11101001", 15 => "11101110",
      --  0xD4               0xE1               0xE9               0xEE
      16 => "11101110", 17 => "11101001", 18 => "11100001", 19 => "11010100",
      --  0xEE               0xE9               0xE1               0xD4
      20 => "11000101", 21 => "10110011", 22 => "10011111", 23 => "10001010",
      --  0xC5               0xB3               0x9F               0x8A
      24 => "01110101", 25 => "01100001", 26 => "01001101", 27 => "00111100",
      --  0x75               0x61               0x4D               0x3C
      28 => "00101100", 29 => "00011111", 30 => "00010101", 31 => "00001101") ;
  --  0x2C               0x1F               0x15               0xD

begin

  Rom_out <= filter_rom(conv_integer(Rom_Address));

end A;

