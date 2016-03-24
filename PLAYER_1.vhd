----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:38 04/10/2015 
-- Design Name: 
-- Module Name:    PLAYER_1 - Behavioral 
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

entity PLAYER_1 is
    Port ( POSITION : out  STD_LOGIC_VECTOR (8 downto 0);
           INPUT : in  STD_LOGIC_VECTOR (3 downto 0));
end PLAYER_1;

architecture Behavioral of PLAYER_1 is

SIGNAL POS	 : STD_LOGIC_VECTOR (8 downto 0);

begin

PROCESS(CLK_50MHz, CLR)
VARIABLE count  :  INTEGER RANGE 0 TO 5000000 := 0;
BEGIN
	IF rising_edge(CLK_50MHz) THEN
		IF(count < 5000000) THEN  
			count := count + 1;
		ELSE
			h_count := 0;
			IF(POS < 500) THEN  --vertical counter (rows)
				POS := POS + 1;
			ELSE
				POS := 200;
		END IF;
	END IF;
END PROCESS

POSITION <= POS;

end Behavioral;

