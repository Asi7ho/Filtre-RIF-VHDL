------------------------------ADC_FSM.vhd----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity ADC_FSM is
  port(Clk             : in  std_logic;
       Reset           : in  std_logic;
       ack_F2ADC       : in  std_logic;
       ADC_Eocb        : in  std_logic;
       req_ADC2F       : out std_logic;
       ADC_Convstb     : out std_logic;
       ADC_Rdb         : out std_logic;
       ADC_csb         : out std_logic;
       FSM_ADC_read_en : out std_logic

       );
end ADC_FSM;
-- Machine  tats contrlant le convertisseur.
-- protocole 4 phases entre l'ADC et la FSM
-- 

architecture A of ADC_FSM is
	type STATE is (INIT, CONV, CONV_WAIT, READ_ST1,READ_ST2);
	signal current_state                        : STATE;
  	signal next_state                           : STATE;
begin
	ADC_STATE : process(clk)
	begin 
		 if clk'event and clk = '1' then
			if Reset = '1' then
				current_state <= INIT;
			else 
				current_state <= next_state;
			end if;
		end if;
	end process ADC_STATE;

	ADC_Next_State_output : process (ack_F2ADC, ADC_Eocb, current_state)
	begin
		case current_state is
			when INIT =>
				req_ADC2F <= '1';
       			ADC_Convstb <= '1';
       			ADC_Rdb <= '1';
       			ADC_csb <= '1';
       			FSM_ADC_read_en <= '0';
				if (ack_F2ADC = '1') then
					next_state <= CONV;
				else 
					next_state <= INIT;
				end if;

			when CONV =>
				req_ADC2F <= '0';
       			ADC_Convstb <= '0';
       			ADC_Rdb <= '1';
       			ADC_csb <= '1';
       			FSM_ADC_read_en <= '0';
				next_state <= CONV_WAIT;

			when CONV_WAIT =>
				req_ADC2F <= '0';
       			ADC_Convstb <= '1';
       			ADC_Rdb <= '1';
       			ADC_csb <= '1';
       			FSM_ADC_read_en <= '0';
				if (ADC_Eocb = '0') then
					next_state <= READ_ST1;
				else 
					next_state <= CONV_WAIT;
				end if;

			when READ_ST1 =>
				req_ADC2F <= '0';
       			ADC_Convstb <= '0';
       			ADC_Rdb <= '0';
       			ADC_csb <= '0';
       			FSM_ADC_read_en <= '0';
				next_state <= READ_ST2;

			when READ_ST2 =>
				req_ADC2F <= '1';
       			ADC_Convstb <= '0';
       			ADC_Rdb <= '0';
       			ADC_csb <= '0';
       			FSM_ADC_read_en <= '1';
				next_state <= INIT;

	

		end case;
	end process ADC_Next_State_output;

end A;


