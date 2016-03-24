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

entity PLAYER1 is
    Port ( 
	 Clk_50MHz 	:  IN   	STD_LOGIC;  								--pixel clock at frequency of VGA mode being used
	 POS_IN		:	IN		STD_LOGIC_VECTOR(13 downto 0);
	 POS 			:	OUT	STD_LOGIC_VECTOR(9 downto 0)
	 );
end PLAYER1;

architecture Behavioral of PLAYER1 is

SIGNAL  position  :	STD_LOGIC_VECTOR(9 downto 0) := b"0111110100";

begin

	POS(8 downto 0) <= POS_IN(13 downto 5) xor "100000000";
	POS(9) <= '0';

end Behavioral;

