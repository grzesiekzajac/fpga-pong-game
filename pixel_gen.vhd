----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:32 03/27/2015 
-- Design Name: 
-- Module Name:    pixel_gen - Behavioral 
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

entity pixel_gen is
    Port ( video_on : in  STD_LOGIC;
           r : out  STD_LOGIC;
           g : out  STD_LOGIC;
           b : out  STD_LOGIC);
end pixel_gen;

architecture Behavioral of pixel_gen is

signal r_reg, g_reg, b_reg : std_logic;


begin
	process(video_on)
	begin
		if video_on = '1' then
			r_reg <= '1';
			g_reg <= '1';
			b_reg <= '1';
		elsif video_on = '0' then
			r_reg <= '0';
			g_reg <= '0';
			b_reg <= '0';
		end if;
	end process;

r <= r_reg;
g <= g_reg;
b <= b_reg;

end Behavioral;

