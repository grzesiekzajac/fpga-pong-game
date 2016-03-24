----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:01 04/22/2015 
-- Design Name: 
-- Module Name:    BALL_SPEED - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BALL_SPEED is
    Port ( ROT_L : in  STD_LOGIC;
           ROT_R : in  STD_LOGIC;
			  RESET : in STD_LOGIC;
			  Clk_50Mhz : in  STD_LOGIC;
           BALL_SPEED : out  STD_LOGIC_VECTOR (2 downto 0));
end BALL_SPEED;

architecture Behavioral of BALL_SPEED is

type state_type is ( state0, state1, state2, state3, state4, state5, state6, state7 );

signal state, next_state 	: state_type;
signal last_state 			: state_type;
signal SPEED 					: STD_LOGIC_VECTOR (2 downto 0);

begin

process1 : process( Clk_50MHz )
	begin
		if rising_edge( Clk_50MHz ) then
			if ROT_L = '1' then
				state <= last_state;
			elsif ROT_R = '1' then
				state <= next_state;
			elsif Reset = '1' then
				state <= state0;
			end if;
		end if;
	end process process1;
	
	process2 : process( state )
	begin
		next_state <= state; -- by default
		case state is
		
			when state0 =>
				SPEED <= b"000";
				last_state <= state0;
				next_state <= state1;
				
			when state1 =>
				SPEED <= b"001";
				last_state <= state0;
				next_state <= state2;
				
			when state2 =>
				SPEED <= b"010";
				last_state <= state1;
				next_state <= state3;

			when state3 =>
				SPEED <= b"011";
				last_state <= state2;
				next_state <= state4;
				
			when state4 =>
				SPEED <= b"100";
				last_state <= state3;
				next_state <= state5;

			when state5 =>
				SPEED <= b"101";
				last_state <= state4;
				next_state <= state6;

			when state6 =>
				SPEED <= b"110";
				last_state <= state5;
				next_state <= state7;

			when state7 =>
				SPEED <= b"111";
				last_state <= state6;
				next_state <= state7;

		end case;
	end process process2;

	BALL_SPEED <= SPEED;

end Behavioral;

