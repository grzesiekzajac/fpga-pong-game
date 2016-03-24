--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:50 04/24/2015
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/PONG_4/adc_test.vhd
-- Project Name:  PONG_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADC_POSITION
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
 
ENTITY adc_test IS
END adc_test;
 
ARCHITECTURE behavior OF adc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC_POSITION
    PORT(
         Clk_50MHz : IN  std_logic;
         RESET : IN  std_logic;
         AMP_WE : OUT  std_logic;
         AMP_DI : OUT  std_logic_vector(7 downto 0);
         ADC_START : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal AMP_WE : std_logic;
   signal AMP_DI : std_logic_vector(7 downto 0);
   signal ADC_START : std_logic;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC_POSITION PORT MAP (
          Clk_50MHz => Clk_50MHz,
          RESET => RESET,
          AMP_WE => AMP_WE,
          AMP_DI => AMP_DI,
          ADC_START => ADC_START
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
      RESET <= '1';-- hold reset state for 100 ns.	
      wait for Clk_50MHz_period*2;
		RESET <= '0';-- hold reset state for 100 ns.	
      -- insert stimulus here 

      wait;
   end process;

END;
