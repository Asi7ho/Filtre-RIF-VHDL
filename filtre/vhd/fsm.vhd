------------------------------FSM.vhd----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



entity FSM is
  port(Clk                     : in  std_logic;
       Reset                   : in  std_logic;
       req_ADC2F		 : in std_logic;
       ack_F2ADC		 : out std_logic;
       req_F2DAC		 : out std_logic;
       Rom_Address             : out std_logic_vector(4 downto 0);
       Delay_Line_Address      : out std_logic_vector(4 downto 0);
       Delay_Line_sample_shift : out std_logic;
       Accu_ctrl               : out std_logic;
       Buff_OE                 : out std_logic) ;
end FSM;
-- Machine   tats contrlant le filtre numrique.

architecture A of FSM is
	type STATE is (INIT, CONV, CALCUL, WAIT_CONV, REG);
  	signal current_state                        : STATE;
  	signal next_state                           : STATE;
	signal curr_cnt: unsigned(4 downto 0);
	signal next_cnt: unsigned(4 downto 0);
	--signal rom_add                              : unsigned(4 downto 0);
	--signal line_add                             : unsigned(4 downto 0);


begin
	FSM_STATE : process(clk)
	begin
    	if clk'event and clk = '1' then
			if reset = '1' then 
				current_state <= INIT;
				curr_cnt<="11111";
			else 
				current_state <= next_state;
				curr_cnt<=next_cnt;
			end if;
		end if;
	end process FSM_STATE;

	FSM_Next_State_output : process(req_ADC2F, current_state, curr_cnt)
	begin

		case current_state is 
			when INIT => 
				ack_F2ADC <= '0';
       			req_F2DAC <= '0';
       			next_cnt <= (others=>'1');
       			Delay_Line_sample_shift <= '0';
       			Accu_ctrl <= '1';
       			Buff_OE <= '0';
				next_state <= CONV;
	
			when CONV =>
				ack_F2ADC <= '1';
       			req_F2DAC <= '0';
       			next_cnt <= curr_cnt - 1;
       			Delay_Line_sample_shift <= '0';
       			Accu_ctrl <= '1';
       			Buff_OE <= '0';
				next_state <= CALCUL;

			when CALCUL =>
				ack_F2ADC <= '0';
       			req_F2DAC <= '0';
       			next_cnt <= curr_cnt - 1;
       			Delay_Line_sample_shift <= '0';
       			Accu_ctrl <= '0';
       			Buff_OE <= '0';
				if (curr_cnt = "00000") then
					next_state <= WAIT_CONV;
				else 
					next_state <= CALCUL;
				end if;

			when WAIT_CONV =>
				ack_F2ADC <= '0';
       			req_F2DAC <= '0';
       			next_cnt <= (others=>'1');
       			Delay_Line_sample_shift <= '0';
       			Accu_ctrl <= '0';
       			Buff_OE <= '1';
				if (req_ADC2F = '1') then
					next_state <= REG;
				else 
					next_state <= WAIT_CONV;
				end if;

			when REG =>
				ack_F2ADC <= '0';
       			req_F2DAC <= '1';
       			next_cnt <= (others=>'1');
       			Delay_Line_sample_shift <= '1';
       			Accu_ctrl <= '0';
       			Buff_OE <= '0';
				next_state <= CONV;

		end case;
		Rom_Address <= std_logic_vector(curr_cnt);
		Delay_Line_Address <= std_logic_vector(curr_cnt);

	end process FSM_Next_State_output;

end A;
