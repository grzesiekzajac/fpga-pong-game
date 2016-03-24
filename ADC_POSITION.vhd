----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:40 04/22/2015 
-- Design Name: 
-- Module Name:    ADC_POSITION - Behavioral 
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

entity ADC_POSITION is
    Port ( Clk_50MHz : in  STD_LOGIC;
			  RESET : in STD_LOGIC;
			  REFRESH : in STD_LOGIC;			  
			  Busy : in STD_LOGIC := '0';
           AMP_WE : out  STD_LOGIC;
           AMP_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           ADC_START : out  STD_LOGIC);
end ADC_POSITION;

architecture Behavioral of ADC_POSITION is

SIGNAL  DI  :	STD_LOGIC_VECTOR(7 downto 0) := b"00010001";
-- jesli tak nie bedzie dzialalo to spróbuj do DI przypisac b"00010001"
-- czytalem, ze to niby obojetne i sluzy tylko do sprawdzania lacznosci bo wzmacniacz odesle to co dostanie
-- ale ogólnie to tego nie trzeba sprawdzac
type state_type is ( state0A, state0B, state0C, state1, state2);
signal state : state_type;

signal WE : STD_LOGIC := '0';
signal START : STD_LOGIC := '0';

begin



	process1 : process( Clk_50MHz, Busy, REFRESH )
	BEGIN
		IF rising_edge(CLK_50MHz) THEN
			IF	RESET = '1' THEN
				state <= state0A;
			ELSIF (REFRESH = '0') THEN
				IF state = state0A AND Busy = '0' THEN
					state <= state0B;
				ELSIF state = state0B AND Busy = '0' THEN
					state <= state0C;
				ELSIF Busy = '0' THEN
					state <= state1;
				END IF;
			ELSE
				state <= state2;
			END IF;
		END IF;
	end process process1;
	
	process2 : process( state )
	begin
		case state is
		
			when state0A =>
				DI <= b"00010001";
				WE <= '1';
				START <= '0';
				
			when state0B =>
				DI <= b"00010001";
				WE <= '1';
				START <= '0';
				
			when state0C =>
				DI <= b"00010001";
				WE <= '1';
				START <= '0';
				
			when state1 =>
				DI <= b"00010001";
				WE <= '0';
				START <= '0';
				
			when state2 =>
				DI <= b"00010001";
				WE <= '0';
				START <= '1';
		
		end case;
	end process process2;

	AMP_DI <= DI;			
	AMP_WE <= WE;
	ADC_START <= START;			

end Behavioral;

