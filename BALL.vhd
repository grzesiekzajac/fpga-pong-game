----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:05 04/16/2015 
-- Design Name: 
-- Module Name:    PLAYER1 - Behavioral 
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
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BALL is
    Port ( 
	 Clk_50MHz 			:  IN   	STD_LOGIC;
	 REFRESH 			:  IN   	STD_LOGIC;
	 Reset				:  IN   	STD_LOGIC;
	 POI_PLAYER1		:	OUT	STD_LOGIC_VECTOR(13 downto 0);
	 POI_PLAYER2		:	OUT	STD_LOGIC_VECTOR(13 downto 0);
	 POS_X 		:	OUT	STD_LOGIC_VECTOR(9 downto 0);
	 POS_Y 		:	OUT	STD_LOGIC_VECTOR(9 downto 0);
	 POS_PLAYER1:	IN		STD_LOGIC_VECTOR(9 downto 0);
	 POS_PLAYER2:	IN		STD_LOGIC_VECTOR(9 downto 0);
	 SPEED_X 	: 	IN		STD_LOGIC_VECTOR(2 downto 0);
	 SPEED_Y 	: 	IN		STD_LOGIC_VECTOR(2 downto 0)	 
	 );
end BALL;

architecture Behavioral of BALL is

SIGNAL  POSITION_X  		:	STD_LOGIC_VECTOR(9 downto 0) := b"0100101100";
SIGNAL  POSITION_Y  		:	STD_LOGIC_VECTOR(9 downto 0) := b"0100101100";
SIGNAL  POINTS_PLAYER1  :	STD_LOGIC_VECTOR(13 downto 0) := b"00000000000000";
SIGNAL  POINTS_PLAYER2 	:	STD_LOGIC_VECTOR(13 downto 0) := b"00000000000000";
SIGNAL  DIRECTION_X 		:	STD_LOGIC := '0';
SIGNAL  DIRECTION_Y 		:	STD_LOGIC := '0';

begin

PROCESS(CLK_50MHz, REFRESH)
	BEGIN
      
		IF rising_edge(CLK_50MHz) THEN
		
			IF(REFRESH = '1') THEN
				--odbicie pileczki przez gracza 1
				IF(POSITION_X > 20 AND POSITION_X < 40 AND POSITION_Y >= (POS_PLAYER1) AND POSITION_Y <= (POS_PLAYER1 + 88 + 20)) THEN
					DIRECTION_X <= '0';
				--odbicie pileczki przez gracza 2					
				ELSIF(POSITION_X > 760 AND POSITION_X < 780 AND POSITION_Y >= (POS_PLAYER2) AND POSITION_Y <= (POS_PLAYER2 + 88 + 20)) THEN
					DIRECTION_X <= '1';
				END IF;
				
				IF(POSITION_Y < 15) THEN  				--dotkniecie gornej krawedzi
					DIRECTION_Y <= '0';
				ELSIF(POSITION_Y > 565) THEN			--dotkniecie dolnej krawedzi
					DIRECTION_Y <= '1';
				END IF;					
								
				IF (POINTS_PLAYER1 < 9  AND POINTS_PLAYER2 < 9) THEN				
					IF( DIRECTION_Y = '0') THEN				--zmiana pozycji w osi Y na podstawie poprzedniej pozycji oraz predkosci
						POSITION_Y <= POSITION_Y + SPEED_Y;
					ELSE					
						POSITION_Y <= POSITION_Y - SPEED_Y;
					END IF;
				
					IF( DIRECTION_X = '0' ) THEN				--zmiana pozycji w osi X na podstawie poprzedniej pozycji oraz predkosci
						POSITION_X <= POSITION_X + SPEED_X;
					ELSE					
						POSITION_X <= POSITION_X - SPEED_X;
					END IF;
				END IF;
				
				IF(POSITION_X < 20 ) THEN  				--dotkniecie paletki && posy==podana w porciea
					POSITION_X <= b"0101110010";
					POSITION_Y <= b"0100101100";
					POINTS_PLAYER2 <= POINTS_PLAYER2 + '1';
				ELSIF(POSITION_X > 780) THEN
					POSITION_X <= b"0101110010";
					POSITION_Y <= b"0100101100";
					POINTS_PLAYER1 <= POINTS_PLAYER1 + '1';
				END IF;				
			END IF;
			
			IF (Reset = '1') THEN
				POSITION_X <= b"0101110010";
				POSITION_Y <= b"0100101100";
				POINTS_PLAYER1 <= b"00000000000000";
				POINTS_PLAYER2 <= b"00000000000000";
			END IF;
			
      END IF;
	END PROCESS;

	POS_X <= POSITION_X;
	POS_Y <= POSITION_Y;
	
	POI_PLAYER1 <= POINTS_PLAYER1;
	POI_PLAYER2 <= POINTS_PLAYER2;

end Behavioral;

