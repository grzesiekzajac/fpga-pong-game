--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:59:06 04/17/2015
-- Design Name:   
-- Module Name:   C:/Users/lenovo/Desktop/NAJLEPSZY PONG EVER/PONG_4/ball_test.vhd
-- Project Name:  PONG_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BALL
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
 
ENTITY ball_test IS
END ball_test;
 
ARCHITECTURE behavior OF ball_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BALL
    PORT(
         Clk_50MHz : IN  std_logic;
         POS_X : OUT  std_logic_vector(9 downto 0);
         POS_Y : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';

 	--Outputs
   signal POS_X : std_logic_vector(9 downto 0);
   signal POS_Y : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant Clk_50MHz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BALL PORT MAP (
          Clk_50MHz => Clk_50MHz,
          POS_X => POS_X,
          POS_Y => POS_Y
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
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for Clk_50MHz_period*10;

      -- insert stimulus here 

      --wait;
   --end process;

END;
