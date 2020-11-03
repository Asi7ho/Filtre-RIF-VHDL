library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu_reg is
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
end alu_reg;


architecture rtl of alu_reg is
  signal FA_din0, FA_din1, FA_dout, int_dout : std_logic_vector(WIDTH -1 downto 0);
  signal FA_cin, FA_cout, int_cout           : std_logic;

  component full_adder
    generic(
      WIDTH : integer := 8
      );

    port (
      din0 : in  std_logic_vector(WIDTH-1 downto 0);
      din1 : in  std_logic_vector(WIDTH-1 downto 0);
      cin  : in  std_logic;
      dout : out std_logic_vector(WIDTH-1 downto 0);
      cout : out std_logic);
  end component;

begin


  i_full_adder : full_adder generic map (
    WIDTH => WIDTH
    )
    port map (
      din0 => FA_din0,
      din1 => FA_din1,
      cin  => FA_cin,
      dout => FA_dout,
      cout => FA_cout);


  -- purpose: compute internal signals
  -- type   : combinational
  -- inputs : din0, din1,cin,S0,S1,S2, FA_dout, FA_cout
  -- outputs: FA_din0, FA_din1, FA_cin, int_dout, int_cout
  p_comb : process (din0, din1, cin, S0, S1, S2, FA_dout, FA_cout) is
    variable sel : std_logic_vector (2 downto 0);
  begin  -- process p_comb

    sel := s2&s1&s0;

    case sel is
      when "000" =>
        FA_din0  <= din0;
        FA_din1  <= (others => '0');
        FA_cin   <= cin;
        int_cout <= FA_cout;
        int_dout <= FA_dout;
      when "001" =>
        FA_din0  <= din0;
        FA_din1  <= din1;
        FA_cin   <= cin;
        int_cout <= FA_cout;
        int_dout <= FA_dout;
      when "010" =>
        FA_din0  <= din0;
        FA_cin   <= cin;
        int_cout <= FA_cout;
        int_dout <= FA_dout;
        if cin = '0' then
          FA_din1 <= (others => '1');
        else
          FA_din1 <= not din1;
        end if;
      when "011" =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= (others => '0');
      when "100" =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= din1 or din0;
      when "101" =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= din1 xor din0;
      when "110" =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= din1 and din0;
      when "111" =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= not din0;
      when others =>
        FA_din0  <= (others => '0');
        FA_din1  <= (others => '0');
        FA_cin   <= '0';
        int_cout <= '0';
        int_dout <= (others => '0');

    end case;
    
  end process p_comb;


  --p_comb_alt: process (din0, din1,cin,S0,S1,S2, FA_dout, FA_cout) is
  --  variable sel : std_logic_vector (1 downto 0);
  --begin  -- process p_comb
  --  sel:=s1&s0;
  --  if S2='1' then
  --    FA_din0<=(others=>'0');
  --    FA_din1 <=(others=>'0');
  --    FA_cin<='0';
  --    int_cout<='0';
  --    case sel is 
  -- when "00" =>
  --        int_dout<=din1 or din0;
  -- when "01" =>
  --        int_dout<=din1 xor din0;
  -- when "10" =>
  --        int_dout<=din1 and din0;
  -- when "11" =>
  --        int_dout<=not din0;
  -- when others <= int_dout<=(others=>'0');
  --    end case;        
  --  else
  --    FA_din0<=din0 ;     
  --    FA_cin<=cin;
  --    int_cout<=FA_cout;
  --    int_dout<=FA_dout;
  --    case sel  is
  -- when "00" =>
  --        FA_din1<=(others=> '0');     
  -- when "001" =>  
  --        FA_din1 <=din1;
  -- when "010" =>
  --        if cin ='0' then
  --          FA_din1<=(others=> '1');
  --        else
  --          FA_din1<= not din1;
  --        end if;
  -- when OTHERS =>
  --        FA_din0<=(others=>'0');
  --        FA_din1 <=(others=>'0');
  --        FA_cin<='0';
  --        int_cout<='0';
  --        int_dout<=(others=>'0');
  --    end case;         
  --  end if;   
  --end process p_comb_alt;






  p_seq : process (clk, reset_n) is
  begin  -- process p_seq
    if reset_n = '0' then               -- asynchronous reset (active low)
      dout <= (others => '0');
      cout <= '0';
    elsif clk'event and clk = '1' then  -- rising clock edge
      dout <= int_dout;
      cout <= int_cout;
    end if;
  end process p_seq;

  
end architecture;

