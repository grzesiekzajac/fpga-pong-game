----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:03 04/24/2015 
-- Design Name: 
-- Module Name:    magistrala - Behavioral 
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

entity magistrala is
    Port ( Clk_50MHz : in  STD_LOGIC;
			  M_IN1 : in  STD_LOGIC_VECTOR (13 downto 0);
			  M_IN2 : in  STD_LOGIC_VECTOR (13 downto 0);
			  M_IN3 : in  STD_LOGIC_VECTOR (2 downto 0);
           M_OUT : out  STD_LOGIC_VECTOR (63 downto 0));
end magistrala;

architecture Behavioral of magistrala is

SIGNAL MOUT : STD_LOGIC_VECTOR (63 downto 0);

begin

	process1 : process( Clk_50MHz )
	
	BEGIN
		IF rising_edge(CLK_50MHz) THEN
			--MOUT ( 13 downto 0) <= M_IN;
			--MOUT ( 8 downto 0) <= M_IN(13 downto 5) xor "100000000";	
			MOUT ( 3 downto 0) <= M_IN1(3 downto 0);
			MOUT ( 63 downto 60) <= M_IN2(3 downto 0);
			MOUT ( 30 downto 28) <= M_IN3(2 downto 0);
		END IF;
	end process process1;

	M_OUT <= MOUT;
	
end Behavioral;

