-- Vhdl test bench created from schematic C:\Users\lab\PT_13_PONG\PONG_4\scheme.sch - Fri Mar 27 14:28:29 2015
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY scheme_scheme_sch_tb IS
END scheme_scheme_sch_tb;
ARCHITECTURE behavioral OF scheme_scheme_sch_tb IS 

   COMPONENT scheme
   PORT( clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          h_s	:	OUT	STD_LOGIC; 
          v_s	:	OUT	STD_LOGIC; 
          r	:	OUT	STD_LOGIC; 
          g	:	OUT	STD_LOGIC; 
          b	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL h_s	:	STD_LOGIC;
   SIGNAL v_s	:	STD_LOGIC;
   SIGNAL r	:	STD_LOGIC;
   SIGNAL g	:	STD_LOGIC;
   SIGNAL b	:	STD_LOGIC;
	
	constant clk_period : time := 10ns;
	
BEGIN

   UUT: scheme PORT MAP(
		clk => clk, 
		rst => rst, 
		h_s => h_s, 
		v_s => v_s, 
		r => r, 
		g => g, 
		b => b
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
	rst <= '0';
	
	clk_process :process
	begin
	clk <= '0';
	wait for clk_period/2;
	clk <= '1';
	wait for clk_period/2;
	end process;
	

END;
