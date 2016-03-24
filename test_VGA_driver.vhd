--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:51:18 04/10/2015
-- Design Name:   
-- Module Name:   D:/PT_13_PONG/white_screen/PONG_4/test_VGA_driver.vhd
-- Project Name:  PONG_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_DRIVER
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
 
ENTITY test_VGA_driver IS
END test_VGA_driver;
 
ARCHITECTURE behavior OF test_VGA_driver IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_DRIVER
    PORT(
         Clk_50MHz : IN  std_logic;
         CLR : IN  std_logic;
         MODE_STRING1 : IN  std_logic_vector(1 downto 0);
         MODE_STRING2 : IN  std_logic_vector(1 downto 0);
         MODE_STRING3 : IN  std_logic_vector(1 downto 0);
         MODE_STRING4 : IN  std_logic_vector(1 downto 0);
         VGA_HS : OUT  std_logic;
         VGA_VS : OUT  std_logic;
         VGA_R : OUT  std_logic;
         VGA_G : OUT  std_logic;
         VGA_B : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal CLR : std_logic := '0';
   signal MODE_STRING1 : std_logic_vector(1 downto 0) := (others => '0');
   signal MODE_STRING2 : std_logic_vector(1 downto 0) := (others => '0');
   signal MODE_STRING3 : std_logic_vector(1 downto 0) := (others => '0');
   signal MODE_STRING4 : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal VGA_HS : std_logic;
   signal VGA_VS : std_logic;
   signal VGA_R : std_logic;
   signal VGA_G : std_logic;
   signal VGA_B : std_logic;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_DRIVER PORT MAP (
          Clk_50MHz => Clk_50MHz,
          CLR => CLR,
          MODE_STRING1 => MODE_STRING1,
          MODE_STRING2 => MODE_STRING2,
          MODE_STRING3 => MODE_STRING3,
          MODE_STRING4 => MODE_STRING4,
          VGA_HS => VGA_HS,
          VGA_VS => VGA_VS,
          VGA_R => VGA_R,
          VGA_G => VGA_G,
          VGA_B => VGA_B
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
