--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : scheme.vhf
-- /___/   /\     Timestamp : 05/08/2015 14:32:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/lab/Desktop/PONG_4 30.04 17.00/scheme.vhf" -w "C:/Users/lab/Desktop/PONG_4 30.04 17.00/scheme.sch"
--Design Name: scheme
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity scheme is
   port ( AMP_DOUT    : in    std_logic; 
          clk         : in    std_logic; 
          ROT_A       : in    std_logic; 
          ROT_B       : in    std_logic; 
          rst         : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          AMP_SHDN    : out   std_logic; 
          b           : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          g           : out   std_logic; 
          h_s         : out   std_logic; 
          LCD_E       : out   std_logic; 
          LCD_RS      : out   std_logic; 
          LCD_RW      : out   std_logic; 
          r           : out   std_logic; 
          SF_CE       : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          v_s         : out   std_logic; 
          LCD_D       : inout std_logic_vector (3 downto 0));
end scheme;

architecture BEHAVIORAL of scheme is
   signal XLXN_103                         : std_logic_vector (1 downto 0);
   signal XLXN_104                         : std_logic_vector (1 downto 0);
   signal XLXN_105                         : std_logic_vector (1 downto 0);
   signal XLXN_108                         : std_logic_vector (9 downto 0);
   signal XLXN_109                         : std_logic_vector (9 downto 0);
   signal XLXN_128                         : std_logic;
   signal XLXN_250                         : std_logic_vector (63 downto 0);
   signal XLXN_251                         : std_logic;
   signal XLXN_253                         : std_logic;
   signal XLXN_294                         : std_logic_vector (2 downto 0);
   signal XLXN_298                         : std_logic_vector (13 downto 0);
   signal XLXN_302                         : std_logic_vector (13 downto 0);
   signal XLXN_312                         : std_logic_vector (13 downto 0);
   signal XLXN_315                         : std_logic_vector (13 downto 0);
   signal XLXN_326                         : std_logic_vector (9 downto 0);
   signal XLXN_327                         : std_logic_vector (9 downto 0);
   signal XLXN_331                         : std_logic;
   signal XLXN_347                         : std_logic_vector (7 downto 0);
   signal XLXN_349                         : std_logic;
   signal XLXN_352                         : std_logic_vector (15 downto 0);
   signal XLXI_35_OBJECT4_COLOR_openSignal : std_logic_vector (1 downto 0);
   component VGA_DRIVER
      port ( CLR                  : in    std_logic; 
             OBJECT1_COLOR        : in    std_logic_vector (1 downto 0); 
             OBJECT2_COLOR        : in    std_logic_vector (1 downto 0); 
             OBJECT3_COLOR        : in    std_logic_vector (1 downto 0); 
             OBJECT4_COLOR        : in    std_logic_vector (1 downto 0); 
             OBJECT1_POS_Y_OFFSET : in    std_logic_vector (9 downto 0); 
             OBJECT2_POS_Y_OFFSET : in    std_logic_vector (9 downto 0); 
             OBJECT3_POS_X_OFFSET : in    std_logic_vector (9 downto 0); 
             OBJECT3_POS_Y_OFFSET : in    std_logic_vector (9 downto 0); 
             REFRESH              : out   std_logic; 
             Clk_50MHz            : in    std_logic; 
             VGA_HS               : out   std_logic; 
             VGA_VS               : out   std_logic; 
             VGA_R                : out   std_logic; 
             VGA_G                : out   std_logic; 
             VGA_B                : out   std_logic);
   end component;
   
   component PLAYER1
      port ( Clk_50MHz : in    std_logic; 
             POS_IN    : in    std_logic_vector (13 downto 0); 
             POS       : out   std_logic_vector (9 downto 0));
   end component;
   
   component BALL
      port ( Clk_50MHz   : in    std_logic; 
             Reset       : in    std_logic; 
             POS_PLAYER1 : in    std_logic_vector (9 downto 0); 
             POS_PLAYER2 : in    std_logic_vector (9 downto 0); 
             SPEED_X     : in    std_logic_vector (2 downto 0); 
             SPEED_Y     : in    std_logic_vector (2 downto 0); 
             POI_PLAYER1 : out   std_logic_vector (13 downto 0); 
             POI_PLAYER2 : out   std_logic_vector (13 downto 0); 
             POS_X       : out   std_logic_vector (9 downto 0); 
             POS_Y       : out   std_logic_vector (9 downto 0); 
             REFRESH     : in    std_logic);
   end component;
   
   component BALL_SPEED
      port ( ROT_L      : in    std_logic; 
             ROT_R      : in    std_logic; 
             RESET      : in    std_logic; 
             Clk_50Mhz  : in    std_logic; 
             BALL_SPEED : out   std_logic_vector (2 downto 0));
   end component;
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   component ADC_Ctrl
      port ( Clk_Sys     : in    std_logic; 
             AMP_WE      : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             AMP_DOUT    : in    std_logic; 
             AMP_DI      : in    std_logic_vector (7 downto 0); 
             Busy        : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AMP_SHDN    : out   std_logic; 
             AD_CONV     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             DAC_CLR     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             ADC_DOA     : out   std_logic_vector (13 downto 0); 
             ADC_DOB     : out   std_logic_vector (13 downto 0); 
             Reset       : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             ADC_Start   : in    std_logic);
   end component;
   
   component PLAYER2
      port ( Clk_50MHz : in    std_logic; 
             POS_IN    : in    std_logic_vector (13 downto 0); 
             POS       : out   std_logic_vector (9 downto 0));
   end component;
   
   component ADC_POSITION
      port ( Clk_50MHz : in    std_logic; 
             RESET     : in    std_logic; 
             Busy      : in    std_logic; 
             AMP_WE    : out   std_logic; 
             REFRESH   : in    std_logic; 
             AMP_DI    : out   std_logic_vector (7 downto 0); 
             ADC_START : out   std_logic);
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component magistrala
      port ( Clk_50MHz : in    std_logic; 
             M_IN1     : in    std_logic_vector (13 downto 0); 
             M_IN2     : in    std_logic_vector (13 downto 0); 
             M_OUT     : out   std_logic_vector (63 downto 0); 
             M_IN3     : in    std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXN_103(1 downto 0) <= b"11";
   XLXN_104(1 downto 0) <= b"10";
   XLXN_105(1 downto 0) <= b"00";
   XLXN_352(15 downto 0) <= x"7F7E";
   XLXI_35 : VGA_DRIVER
      port map (Clk_50MHz=>clk,
                CLR=>rst,
                OBJECT1_COLOR(1 downto 0)=>XLXN_103(1 downto 0),
                OBJECT1_POS_Y_OFFSET(9 downto 0)=>XLXN_326(9 downto 0),
                OBJECT2_COLOR(1 downto 0)=>XLXN_104(1 downto 0),
                OBJECT2_POS_Y_OFFSET(9 downto 0)=>XLXN_327(9 downto 0),
                OBJECT3_COLOR(1 downto 0)=>XLXN_105(1 downto 0),
                OBJECT3_POS_X_OFFSET(9 downto 0)=>XLXN_108(9 downto 0),
                OBJECT3_POS_Y_OFFSET(9 downto 0)=>XLXN_109(9 downto 0),
                OBJECT4_COLOR(1 downto 0)=>XLXI_35_OBJECT4_COLOR_openSignal(1 
            downto 0),
                REFRESH=>XLXN_331,
                VGA_B=>b,
                VGA_G=>g,
                VGA_HS=>h_s,
                VGA_R=>r,
                VGA_VS=>v_s);
   
   XLXI_39 : PLAYER1
      port map (Clk_50MHz=>clk,
                POS_IN(13 downto 0)=>XLXN_298(13 downto 0),
                POS(9 downto 0)=>XLXN_326(9 downto 0));
   
   XLXI_46 : BALL
      port map (Clk_50MHz=>clk,
                POS_PLAYER1(9 downto 0)=>XLXN_326(9 downto 0),
                POS_PLAYER2(9 downto 0)=>XLXN_327(9 downto 0),
                REFRESH=>XLXN_331,
                Reset=>rst,
                SPEED_X(2 downto 0)=>XLXN_294(2 downto 0),
                SPEED_Y(2 downto 0)=>XLXN_294(2 downto 0),
                POI_PLAYER1(13 downto 0)=>XLXN_315(13 downto 0),
                POI_PLAYER2(13 downto 0)=>XLXN_312(13 downto 0),
                POS_X(9 downto 0)=>XLXN_108(9 downto 0),
                POS_Y(9 downto 0)=>XLXN_109(9 downto 0));
   
   XLXI_47 : BALL_SPEED
      port map (Clk_50Mhz=>clk,
                RESET=>rst,
                ROT_L=>XLXN_128,
                ROT_R=>XLXN_253,
                BALL_SPEED(2 downto 0)=>XLXN_294(2 downto 0));
   
   XLXI_50 : RotaryEnc
      port map (Clk=>clk,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>XLXN_128,
                RotR=>XLXN_253);
   
   XLXI_63 : ADC_Ctrl
      port map (ADC_Start=>XLXN_349,
                AMP_DI(7 downto 0)=>XLXN_347(7 downto 0),
                AMP_DOUT=>AMP_DOUT,
                AMP_WE=>XLXN_253,
                Clk_Sys=>clk,
                Clk_50MHz=>clk,
                Reset=>rst,
                SPI_MISO=>SPI_MISO,
                ADC_DOA(13 downto 0)=>XLXN_302(13 downto 0),
                ADC_DOB(13 downto 0)=>XLXN_298(13 downto 0),
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                AMP_SHDN=>AMP_SHDN,
                Busy=>XLXN_251,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_64 : PLAYER2
      port map (Clk_50MHz=>clk,
                POS_IN(13 downto 0)=>XLXN_302(13 downto 0),
                POS(9 downto 0)=>XLXN_327(9 downto 0));
   
   XLXI_69 : ADC_POSITION
      port map (Busy=>XLXN_251,
                Clk_50MHz=>clk,
                REFRESH=>XLXN_331,
                RESET=>rst,
                ADC_START=>XLXN_349,
                AMP_DI(7 downto 0)=>XLXN_347(7 downto 0),
                AMP_WE=>open);
   
   XLXI_70 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_352(15 downto 0),
                Clk_50MHz=>clk,
                Line(63 downto 0)=>XLXN_250(63 downto 0),
                Reset=>rst,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_71 : magistrala
      port map (Clk_50MHz=>clk,
                M_IN1(13 downto 0)=>XLXN_312(13 downto 0),
                M_IN2(13 downto 0)=>XLXN_315(13 downto 0),
                M_IN3(2 downto 0)=>XLXN_294(2 downto 0),
                M_OUT(63 downto 0)=>XLXN_250(63 downto 0));
   
end BEHAVIORAL;


