------------------------------DAC_FSM.vhd----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity DAC_FSM is
  port(Clk       : in  std_logic;
       Reset     : in  std_logic;
       req_F2DAC : in  std_logic;
       DAC_WRb   : out std_logic;
       DAC_csb   : out std_logic;
       LDACb     : out std_logic;
       CLRb      : out std_logic
       );
end DAC_FSM;
-- Machine à états contrôlant le filtre numérique.

architecture A of DAC_FSM is
  type STATE is (Init, Send);
  signal current_state                        : STATE;
  signal next_state                           : STATE;
  signal pre_req_F2DAC, rising_edge_req_F2DAC : std_logic;

begin
  P_STATE : process(clk, Reset)
  begin

    if clk'event and clk = '1' then
      if reset = '1' then
        current_state <= Init;
        pre_req_F2DAC <= '0';
      else
        current_state <= next_state;
        pre_req_F2DAC <= req_F2DAC; -- took the pevious val. of req to pre_req
        
      end if;
    end if;
  end process P_state;


  rising_edge_req_F2DAC <= req_F2DAC and not pre_req_F2DAC;

--gestion des transitions !
  P_Next_State_output : process (rising_edge_req_F2DAC, current_state)
    --  le front montant de la requête lance la conversion 

  begin
    LDACb <= '0';
    CLRb  <= '1';

    case current_state is
      when Init =>
        DAC_WRb <= '1';
        DAC_csb <= '1';
        if rising_edge_req_F2DAC = '0' then
          next_state <= Init;
        else
          next_state <= Send;
        end if;


      when Send =>
        DAC_WRb    <= '0';
        DAC_csb    <= '0';
        next_state <= init;  -- y rester le temps nécessaire  ( dépend de la
        -- fréquence du circuit) au moins 20 ns

    end case;


  end process P_Next_State_output;
end A;
