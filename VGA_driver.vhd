----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:05 04/16/2015 
-- Design Name: 
-- Module Name:    VGA_DRIVER - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY VGA_DRIVER IS
  GENERIC(
    h_pulse  :  INTEGER   := 120;	--horizontal sync pulse width in pixels
    h_bp     :  INTEGER   := 61;		--horizontal back porch width in pixels
    h_pixels :  INTEGER   := 806;  	--horizontal display width in pixels
    h_fp     :  INTEGER   := 53;   	--horizontal front porch width in pixels
    h_pol    :  STD_LOGIC := '1';   --horizontal sync pulse polarity (1 = positive, 0 = negative)
    v_pulse  :  INTEGER   := 6;     --vertical sync pulse width in rows
    v_bp     :  INTEGER   := 21;    --vertical back porch width in rows
    v_pixels :  INTEGER   := 604; 	--vertical display width in rows
    v_fp     :  INTEGER   := 35;    --vertical front porch width in rows
    v_pol    :  STD_LOGIC := '1');  --vertical sync pulse polarity (1 = positive, 0 = negative)
  PORT(
    Clk_50MHz :  IN   STD_LOGIC;  	--pixel clock at frequency of VGA mode being used
    CLR       :  IN   STD_LOGIC;  	--active high asycnchronous reset
	 OBJECT1_COLOR	:	IN	STD_LOGIC_VECTOR(1 downto 0);
	 OBJECT2_COLOR	:	IN	STD_LOGIC_VECTOR(1 downto 0);
	 OBJECT3_COLOR	:	IN	STD_LOGIC_VECTOR(1 downto 0);
	 OBJECT4_COLOR	:	IN	STD_LOGIC_VECTOR(1 downto 0);
	 OBJECT1_POS_Y_OFFSET	:	IN	STD_LOGIC_VECTOR(9 downto 0);
	 OBJECT2_POS_Y_OFFSET  	:  IN STD_LOGIC_VECTOR(9 downto 0);
	 OBJECT3_POS_X_OFFSET  	:  IN STD_LOGIC_VECTOR(9 downto 0);
    OBJECT3_POS_Y_OFFSET  	:  IN STD_LOGIC_VECTOR(9 downto 0);
	 REFRESH	  :  OUT  STD_LOGIC;
    VGA_HS    :  OUT  STD_LOGIC;  --horizontal sync pulse
    VGA_VS    :  OUT  STD_LOGIC;  --vertical sync pulse
	 VGA_R	  :  OUT  STD_LOGIC;
	 VGA_G	  :  OUT  STD_LOGIC;
	 VGA_B	  :  OUT  STD_LOGIC
	 );
END VGA_DRIVER;

ARCHITECTURE behavioral OF VGA_DRIVER IS

  CONSTANT  h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;   --total number of pixel clocks in a row
  CONSTANT  v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;   --total number of rows in column
  --CONSTANT  CENTER_POS_X  :  INTEGER := h_pulse + h_fp + h_pixels/2; 	--x position of the center of the screen
  CONSTANT  OBJECT1_POS_X_OFFSET  	:  INTEGER := 20; 	--offset for the first OBJECT, relative to CENTER_POS_X
  --CONSTANT  OBJECT1_POS_Y_OFFSET  	:  INTEGER := 200; 	--offset for the first OBJECT, relative to CENTER_POS_X
  CONSTANT  OBJECT1_HEIGHT  			:  INTEGER := 88; 	--AFDSFDFA
  CONSTANT  OBJECT2_POS_X_OFFSET  	:  INTEGER := 780; 	--offset for the second OBJECT, relative to CENTER_POS_X
  --CONSTANT  OBJECT2_POS_Y_OFFSET  	:  INTEGER := 300; 	--offset for the second OBJECT, relative to CENTER_POS_X
  CONSTANT  OBJECT2_HEIGHT  			:  INTEGER := 88; 	--AFDSFDFA
--  CONSTANT  OBJECT3_POS_X_OFFSET  	:  INTEGER := 500; 	--offset for the third OBJECT, relative to CENTER_POS_X
--  CONSTANT  OBJECT3_POS_Y_OFFSET  	:  INTEGER := 250; 	--offset for the second OBJECT, relative to CENTER_POS_X
  CONSTANT  OBJECT3_HEIGHT  			:  INTEGER := 20; 	--AFDSFDFA
  CONSTANT  OBJECT3_WIDTH				:	INTEGER := 20; 					--width of a single OBJECT
  CONSTANT  OBJECT4_POS_X_OFFSET  	:  INTEGER := 90; 	--offset for the fourth OBJECT, relative to CENTER_POS_X
  CONSTANT  OBJECT_WIDTH				:	INTEGER := 10; 					--width of a single OBJECT
  CONSTANT	BLACK	:	STD_LOGIC_VECTOR(0 to 2) := "000";
  CONSTANT	CYAN	:	STD_LOGIC_VECTOR(0 to 2) := "011";
  CONSTANT	BLUE	:	STD_LOGIC_VECTOR(0 to 2) := "001";
  CONSTANT	GREEN	:	STD_LOGIC_VECTOR(0 to 2) := "010";
  CONSTANT	WHITE	:	STD_LOGIC_VECTOR(0 to 2) := "111";
  
  SIGNAL RGB	 : STD_LOGIC_VECTOR(0 to 2);
  
BEGIN

	PROCESS(CLK_50MHz, CLR)
		VARIABLE h_count  :  INTEGER RANGE 0 TO h_period - 1 := 0;  --horizontal counter (counts the columns)
		VARIABLE v_count  :  INTEGER RANGE 0 TO v_period - 1 := 0;  --vertical counter (counts the rows)
		VARIABLE refr  	:  STD_LOGIC := '0';
	BEGIN
		IF(CLR = '1') THEN  		 --reset asserted
			h_count := 0;         --reset horizontal counter
			v_count := 0;         --reset vertical counter
			VGA_HS <= NOT h_pol;  --deassert horizontal sync
			VGA_VS <= NOT v_pol;  --deassert vertical sync
      
		ELSIF rising_edge(CLK_50MHz) THEN
			--counters
			refr := '0';
			IF(h_count < h_period - 1) THEN    --horizontal counter (columns)
				h_count := h_count + 1;
			ELSE
				h_count := 0;
				IF(v_count < v_period - 1) THEN  --vertical counter (rows)
					v_count := v_count + 1;					
				ELSE
					v_count := 0;
					refr := '1';
			END IF;
      END IF;
	
		IF v_count >= v_pulse+v_fp AND v_count <= v_pulse+v_fp+v_pixels THEN
			IF h_count >= OBJECT1_POS_X_OFFSET + h_pulse + h_fp
				AND h_count <= OBJECT1_POS_X_OFFSET + OBJECT_WIDTH + h_pulse + h_fp
				AND v_count >= OBJECT1_POS_Y_OFFSET+ v_pulse + v_fp 
				AND v_count <= OBJECT1_POS_Y_OFFSET + OBJECT1_HEIGHT + v_pulse + v_fp
				THEN
					CASE OBJECT1_COLOR is
						WHEN "00" => RGB <= WHITE;
						WHEN "01" => RGB <= CYAN;
						WHEN "10" => RGB <= GREEN;
						WHEN "11" => RGB <= BLUE;
						WHEN OTHERS => REPORT "unreachable" SEVERITY failure;
					END CASE;
			ELSIF h_count >= OBJECT2_POS_X_OFFSET + h_pulse + h_fp
				AND h_count <= OBJECT2_POS_X_OFFSET + OBJECT_WIDTH + h_pulse + h_fp
				AND v_count >= OBJECT2_POS_Y_OFFSET + v_pulse + v_fp
				AND v_count <= OBJECT2_POS_Y_OFFSET + OBJECT2_HEIGHT + v_pulse + v_fp
				THEN
					CASE OBJECT2_COLOR is
						WHEN "00" => RGB <= WHITE;
						WHEN "01" => RGB <= CYAN;
						WHEN "10" => RGB <= GREEN;
						WHEN "11" => RGB <= BLUE;
						WHEN OTHERS => REPORT "unreachable" SEVERITY failure;
					END CASE;
--			ELSIF h_count >= OBJECT3_POS_X_OFFSET + h_pulse + h_fp
--				AND h_count <= OBJECT3_POS_X_OFFSET + OBJECT3_WIDTH + h_pulse + h_fp
--				AND v_count >= OBJECT3_POS_Y_OFFSET + v_pulse + v_fp
--				AND v_count <= OBJECT3_POS_Y_OFFSET + OBJECT3_HEIGHT + v_pulse + v_fp
--				THEN
--					CASE OBJECT3_COLOR is
--						WHEN "00" => RGB <= WHITE;
--						WHEN "01" => RGB <= CYAN;
--						WHEN "10" => RGB <= GREEN;
--						WHEN "11" => RGB <= BLUE;
--						WHEN OTHERS => REPORT "unreachable" SEVERITY failure;
--					END CASE;
			ELSIF signed((h_count - (OBJECT3_POS_X_OFFSET+ OBJECT3_WIDTH/2 + h_pulse + h_fp))*(h_count - (OBJECT3_POS_X_OFFSET+ OBJECT3_WIDTH/2+ h_pulse + h_fp))) + signed((v_count - (OBJECT3_POS_Y_OFFSET+ OBJECT3_WIDTH/2+ v_pulse + v_fp))*(v_count - (OBJECT3_POS_Y_OFFSET+ OBJECT3_WIDTH/2+ v_pulse + v_fp)))<= 100
				THEN
					CASE OBJECT3_COLOR is
						WHEN "00" => RGB <= WHITE;
						WHEN "01" => RGB <= CYAN;
						WHEN "10" => RGB <= GREEN;
						WHEN "11" => RGB <= BLUE;
						WHEN OTHERS => REPORT "unreachable" SEVERITY failure;
					END CASE;
			ELSE
				RGB <= BLACK;
			END IF;
		ELSE
			RGB <= BLACK;
		END IF;
      
		--horizontal sync signal
      IF h_count > 0 AND h_count < h_pulse THEN  
			VGA_HS <= NOT h_pol;    --deassert horizontal sync pulse
      ELSE
			VGA_HS <= h_pol;        --assert horizontal sync pulse
      END IF;
      
      --vertical sync signal
      IF v_count > 0 AND v_count < v_pulse THEN
			VGA_VS <= NOT v_pol;    --deassert vertical sync pulse
      ELSE
			VGA_VS <= v_pol;        --assert vertical sync pulse
      END IF;
		

		REFRESH <= refr;
   
		
		

	END IF;
	END PROCESS;

	VGA_R <= RGB(0);
	VGA_G <= RGB(1);
	VGA_B <= RGB(2);
	

END behavioral;
