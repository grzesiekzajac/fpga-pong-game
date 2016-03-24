--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:23 04/16/2015
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/NAJLEPSZY PONG EVER/PONG_4/player_test.vhd
-- Project Name:  PONG_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PLAYER1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY player_test IS
END player_test;
 
ARCHITECTURE behavior OF player_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PLAYER1
    PORT(
         Clk_50MHz : IN  std_logic;
         POS_X : OUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';

 	--Outputs
   signal POS_X : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PLAYER1 PORT MAP (
          Clk_50MHz => Clk_50MHz,
          POS_X => POS_X
        );

   -- Clock process definitions
   Clk_50MHz_process :process
   begin
		Clk_50MHz <= '0';
		wait for Clk_50MHz_period/2;
		Clk_50MHz <= '1';
		wait for Clk_50MHz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_50MHz_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
