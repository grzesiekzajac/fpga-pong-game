<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="XLXN_103(1:0)" />
        <signal name="XLXN_104(1:0)" />
        <signal name="XLXN_105(1:0)" />
        <signal name="XLXN_108(9:0)" />
        <signal name="XLXN_109(9:0)" />
        <signal name="XLXN_128" />
        <signal name="SPI_MISO" />
        <signal name="FPGA_INIT_B" />
        <signal name="SF_CE0" />
        <signal name="SPI_SS_B" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="AMP_SHDN" />
        <signal name="AMP_DOUT" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SPI_SCK" />
        <signal name="SPI_MOSI" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_250(63:0)" />
        <signal name="XLXN_251" />
        <signal name="XLXN_253" />
        <signal name="ROT_A" />
        <signal name="ROT_B" />
        <signal name="XLXN_294(2:0)" />
        <signal name="XLXN_298(13:0)" />
        <signal name="XLXN_302(13:0)" />
        <signal name="XLXN_312(13:0)" />
        <signal name="XLXN_315(13:0)" />
        <signal name="XLXN_326(9:0)" />
        <signal name="XLXN_327(9:0)" />
        <signal name="XLXN_330" />
        <signal name="XLXN_331" />
        <signal name="h_s" />
        <signal name="r" />
        <signal name="g" />
        <signal name="b" />
        <signal name="v_s" />
        <signal name="XLXN_347(7:0)" />
        <signal name="XLXN_349" />
        <signal name="XLXN_350(2:0)" />
        <signal name="XLXN_352(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="AMP_SHDN" />
        <port polarity="Input" name="AMP_DOUT" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Output" name="h_s" />
        <port polarity="Output" name="r" />
        <port polarity="Output" name="g" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="v_s" />
        <blockdef name="VGA_DRIVER">
            <timestamp>2015-5-8T12:12:41</timestamp>
            <line x2="464" y1="3872" y2="3872" x1="400" />
            <rect width="64" x="0" y="3700" height="24" />
            <line x2="0" y1="3712" y2="3712" x1="64" />
            <rect width="64" x="0" y="3780" height="24" />
            <line x2="0" y1="3792" y2="3792" x1="64" />
            <rect width="64" x="0" y="3620" height="24" />
            <line x2="0" y1="3632" y2="3632" x1="64" />
            <line x2="0" y1="3152" y2="3152" x1="64" />
            <rect width="64" x="0" y="3220" height="24" />
            <line x2="0" y1="3232" y2="3232" x1="64" />
            <rect width="64" x="0" y="3300" height="24" />
            <line x2="0" y1="3312" y2="3312" x1="64" />
            <rect width="64" x="0" y="3380" height="24" />
            <line x2="0" y1="3392" y2="3392" x1="64" />
            <rect width="64" x="0" y="3460" height="24" />
            <line x2="0" y1="3472" y2="3472" x1="64" />
            <rect width="64" x="0" y="3540" height="24" />
            <line x2="0" y1="3552" y2="3552" x1="64" />
            <rect width="336" x="64" y="2732" height="1172" />
            <line x2="0" y1="2768" y2="2768" x1="64" />
            <line x2="464" y1="2768" y2="2768" x1="400" />
            <line x2="464" y1="2848" y2="2848" x1="400" />
            <line x2="464" y1="2928" y2="2928" x1="400" />
            <line x2="464" y1="3008" y2="3008" x1="400" />
            <line x2="464" y1="3088" y2="3088" x1="400" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="PLAYER1">
            <timestamp>2015-4-30T14:13:29</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-64" height="192" />
        </blockdef>
        <blockdef name="BALL">
            <timestamp>2015-4-30T14:51:15</timestamp>
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="320" y="340" height="24" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="768" />
        </blockdef>
        <blockdef name="BALL_SPEED">
            <timestamp>2015-4-24T7:22:20</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <blockdef name="RotaryEnc">
            <timestamp>2015-4-24T6:59:16</timestamp>
            <rect width="256" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="ADC_Ctrl">
            <timestamp>2015-5-8T12:18:31</timestamp>
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="416" y1="-800" y2="-800" x1="480" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-12" height="24" />
            <line x2="480" y1="0" y2="0" x1="416" />
            <rect width="64" x="416" y="52" height="24" />
            <line x2="480" y1="64" y2="64" x1="416" />
            <line x2="480" y1="128" y2="128" x1="416" />
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="416" y1="-480" y2="-480" x1="480" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="352" x="64" y="-832" height="992" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
        </blockdef>
        <blockdef name="PLAYER2">
            <timestamp>2015-4-30T14:13:22</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="128" />
        </blockdef>
        <blockdef name="ADC_POSITION">
            <timestamp>2015-5-8T12:17:52</timestamp>
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="384" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2015-4-24T12:7:14</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="magistrala">
            <timestamp>2015-5-8T12:26:6</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="384" />
        </blockdef>
        <block symbolname="VGA_DRIVER" name="XLXI_35">
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="XLXN_103(1:0)" name="OBJECT1_COLOR(1:0)" />
            <blockpin signalname="XLXN_104(1:0)" name="OBJECT2_COLOR(1:0)" />
            <blockpin signalname="XLXN_105(1:0)" name="OBJECT3_COLOR(1:0)" />
            <blockpin name="OBJECT4_COLOR(1:0)" />
            <blockpin signalname="XLXN_326(9:0)" name="OBJECT1_POS_Y_OFFSET(9:0)" />
            <blockpin signalname="XLXN_327(9:0)" name="OBJECT2_POS_Y_OFFSET(9:0)" />
            <blockpin signalname="XLXN_108(9:0)" name="OBJECT3_POS_X_OFFSET(9:0)" />
            <blockpin signalname="XLXN_109(9:0)" name="OBJECT3_POS_Y_OFFSET(9:0)" />
            <blockpin signalname="XLXN_331" name="REFRESH" />
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="h_s" name="VGA_HS" />
            <blockpin signalname="v_s" name="VGA_VS" />
            <blockpin signalname="r" name="VGA_R" />
            <blockpin signalname="g" name="VGA_G" />
            <blockpin signalname="b" name="VGA_B" />
        </block>
        <block symbolname="PLAYER1" name="XLXI_39">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_298(13:0)" name="POS_IN(13:0)" />
            <blockpin signalname="XLXN_326(9:0)" name="POS(9:0)" />
        </block>
        <block symbolname="constant" name="XLXI_14">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_103(1:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_41">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_104(1:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_42">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_105(1:0)" name="O" />
        </block>
        <block symbolname="BALL" name="XLXI_46">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="rst" name="Reset" />
            <blockpin signalname="XLXN_326(9:0)" name="POS_PLAYER1(9:0)" />
            <blockpin signalname="XLXN_327(9:0)" name="POS_PLAYER2(9:0)" />
            <blockpin signalname="XLXN_294(2:0)" name="SPEED_X(2:0)" />
            <blockpin signalname="XLXN_294(2:0)" name="SPEED_Y(2:0)" />
            <blockpin signalname="XLXN_315(13:0)" name="POI_PLAYER1(13:0)" />
            <blockpin signalname="XLXN_312(13:0)" name="POI_PLAYER2(13:0)" />
            <blockpin signalname="XLXN_108(9:0)" name="POS_X(9:0)" />
            <blockpin signalname="XLXN_109(9:0)" name="POS_Y(9:0)" />
            <blockpin signalname="XLXN_331" name="REFRESH" />
        </block>
        <block symbolname="constant" name="XLXI_43">
            <attr value="1FC" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin name="O" />
        </block>
        <block symbolname="constant" name="XLXI_44">
            <attr value="14A" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin name="O" />
        </block>
        <block symbolname="BALL_SPEED" name="XLXI_47">
            <blockpin signalname="XLXN_128" name="ROT_L" />
            <blockpin signalname="XLXN_253" name="ROT_R" />
            <blockpin signalname="rst" name="RESET" />
            <blockpin signalname="clk" name="Clk_50Mhz" />
            <blockpin signalname="XLXN_294(2:0)" name="BALL_SPEED(2:0)" />
        </block>
        <block symbolname="PLAYER2" name="XLXI_64">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_302(13:0)" name="POS_IN(13:0)" />
            <blockpin signalname="XLXN_327(9:0)" name="POS(9:0)" />
        </block>
        <block symbolname="ADC_Ctrl" name="XLXI_63">
            <blockpin signalname="clk" name="Clk_Sys" />
            <blockpin signalname="XLXN_253" name="AMP_WE" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_347(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_251" name="Busy" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AMP_SHDN" name="AMP_SHDN" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_302(13:0)" name="ADC_DOA(13:0)" />
            <blockpin signalname="XLXN_298(13:0)" name="ADC_DOB(13:0)" />
            <blockpin signalname="rst" name="Reset" />
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_349" name="ADC_Start" />
        </block>
        <block symbolname="ADC_POSITION" name="XLXI_69">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="rst" name="RESET" />
            <blockpin signalname="XLXN_251" name="Busy" />
            <blockpin name="AMP_WE" />
            <blockpin signalname="XLXN_331" name="REFRESH" />
            <blockpin signalname="XLXN_347(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_349" name="ADC_START" />
        </block>
        <block symbolname="magistrala" name="XLXI_71">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_312(13:0)" name="M_IN1(13:0)" />
            <blockpin signalname="XLXN_315(13:0)" name="M_IN2(13:0)" />
            <blockpin signalname="XLXN_250(63:0)" name="M_OUT(63:0)" />
            <blockpin signalname="XLXN_294(2:0)" name="M_IN3(2:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_70">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="rst" name="Reset" />
            <blockpin signalname="XLXN_250(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_352(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="RotaryEnc" name="XLXI_50">
            <blockpin signalname="ROT_A" name="ROT_A" />
            <blockpin signalname="ROT_B" name="ROT_B" />
            <blockpin signalname="XLXN_128" name="RotL" />
            <blockpin signalname="XLXN_253" name="RotR" />
            <blockpin signalname="clk" name="Clk" />
        </block>
        <block symbolname="constant" name="XLXI_72">
            <attr value="7FFE" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin name="O" />
        </block>
        <block symbolname="constant" name="XLXI_73">
            <attr value="7F7E" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_352(15:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="clk">
            <wire x2="288" y1="1968" y2="2000" x1="288" />
            <wire x2="544" y1="2000" y2="2000" x1="288" />
            <wire x2="544" y1="2000" y2="2176" x1="544" />
            <wire x2="864" y1="2176" y2="2176" x1="544" />
            <wire x2="544" y1="2176" y2="3040" x1="544" />
            <wire x2="1360" y1="3040" y2="3040" x1="544" />
            <wire x2="1488" y1="3040" y2="3040" x1="1360" />
            <wire x2="1360" y1="3040" y2="3104" x1="1360" />
            <wire x2="1488" y1="3104" y2="3104" x1="1360" />
            <wire x2="544" y1="3040" y2="3296" x1="544" />
            <wire x2="544" y1="3296" y2="3456" x1="544" />
            <wire x2="544" y1="3456" y2="4192" x1="544" />
            <wire x2="544" y1="4192" y2="4464" x1="544" />
            <wire x2="544" y1="4464" y2="4576" x1="544" />
            <wire x2="544" y1="4576" y2="4832" x1="544" />
            <wire x2="2000" y1="4832" y2="4832" x1="544" />
            <wire x2="544" y1="4832" y2="4896" x1="544" />
            <wire x2="2464" y1="4896" y2="4896" x1="544" />
            <wire x2="3264" y1="4576" y2="4576" x1="544" />
            <wire x2="2544" y1="4464" y2="4464" x1="544" />
            <wire x2="2544" y1="4192" y2="4192" x1="544" />
            <wire x2="2336" y1="3456" y2="3456" x1="544" />
            <wire x2="2912" y1="3296" y2="3296" x1="544" />
            <wire x2="3632" y1="2000" y2="2000" x1="544" />
            <wire x2="3632" y1="2000" y2="3520" x1="3632" />
            <wire x2="3712" y1="3520" y2="3520" x1="3632" />
        </branch>
        <instance x="3712" y="752" name="XLXI_35" orien="R0">
        </instance>
        <branch name="XLXN_103(1:0)">
            <wire x2="3712" y1="3984" y2="3984" x1="3152" />
        </branch>
        <instance x="3008" y="3952" name="XLXI_14" orien="R0">
        </instance>
        <instance x="3008" y="4048" name="XLXI_41" orien="R0">
        </instance>
        <instance x="3008" y="4144" name="XLXI_42" orien="R0">
        </instance>
        <branch name="XLXN_104(1:0)">
            <wire x2="3424" y1="4080" y2="4080" x1="3152" />
            <wire x2="3424" y1="4064" y2="4080" x1="3424" />
            <wire x2="3712" y1="4064" y2="4064" x1="3424" />
        </branch>
        <branch name="XLXN_105(1:0)">
            <wire x2="3424" y1="4176" y2="4176" x1="3152" />
            <wire x2="3424" y1="4144" y2="4176" x1="3424" />
            <wire x2="3712" y1="4144" y2="4144" x1="3424" />
        </branch>
        <branch name="XLXN_109(9:0)">
            <wire x2="3696" y1="4640" y2="4640" x1="3648" />
            <wire x2="3712" y1="4544" y2="4544" x1="3696" />
            <wire x2="3696" y1="4544" y2="4640" x1="3696" />
        </branch>
        <instance x="4816" y="4672" name="XLXI_43" orien="R0">
        </instance>
        <instance x="4816" y="4800" name="XLXI_44" orien="R0">
        </instance>
        <instance x="2544" y="4496" name="XLXI_64" orien="R0">
        </instance>
        <branch name="SPI_MISO">
            <wire x2="2000" y1="2176" y2="2176" x1="1968" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2000" y1="2880" y2="2880" x1="1968" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2000" y1="2816" y2="2816" x1="1968" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2000" y1="2752" y2="2752" x1="1968" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2000" y1="2688" y2="2688" x1="1968" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2000" y1="2624" y2="2624" x1="1968" />
        </branch>
        <branch name="AMP_SHDN">
            <wire x2="2000" y1="2560" y2="2560" x1="1968" />
        </branch>
        <branch name="AMP_DOUT">
            <wire x2="2000" y1="2496" y2="2496" x1="1968" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2000" y1="2432" y2="2432" x1="1968" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2000" y1="2368" y2="2368" x1="1968" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2000" y1="2304" y2="2304" x1="1968" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2000" y1="2240" y2="2240" x1="1968" />
        </branch>
        <instance x="1488" y="2976" name="XLXI_63" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2000" y="2176" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2496" name="AMP_DOUT" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2240" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2304" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2368" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2432" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2560" name="AMP_SHDN" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2624" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2688" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2752" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2816" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2000" y="2880" name="FPGA_INIT_B" orien="R0" />
        <instance x="864" y="2336" name="XLXI_69" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="3344" y1="3040" y2="3040" x1="3328" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3344" y1="3104" y2="3104" x1="3328" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3344" y1="3168" y2="3168" x1="3328" />
        </branch>
        <branch name="LCD_D(3:0)">
            <wire x2="3344" y1="3232" y2="3232" x1="3328" />
        </branch>
        <branch name="SF_CE">
            <wire x2="3344" y1="3296" y2="3296" x1="3328" />
        </branch>
        <iomarker fontsize="28" x="3344" y="3040" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3344" y="3104" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3344" y="3168" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3344" y="3232" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="3344" y="3296" name="SF_CE" orien="R0" />
        <branch name="XLXN_251">
            <wire x2="864" y1="2432" y2="2432" x1="784" />
            <wire x2="784" y1="2432" y2="3200" x1="784" />
            <wire x2="2048" y1="3200" y2="3200" x1="784" />
            <wire x2="2048" y1="3104" y2="3104" x1="1968" />
            <wire x2="2048" y1="3104" y2="3200" x1="2048" />
        </branch>
        <branch name="XLXN_253">
            <wire x2="1488" y1="2176" y2="2176" x1="1424" />
            <wire x2="1424" y1="2176" y2="4592" x1="1424" />
            <wire x2="2384" y1="4592" y2="4592" x1="1424" />
            <wire x2="2384" y1="4592" y2="4704" x1="2384" />
            <wire x2="2384" y1="4704" y2="4768" x1="2384" />
            <wire x2="2464" y1="4768" y2="4768" x1="2384" />
        </branch>
        <instance x="2000" y="4928" name="XLXI_50" orien="R0">
        </instance>
        <branch name="ROT_A">
            <wire x2="2000" y1="4704" y2="4704" x1="1968" />
        </branch>
        <branch name="ROT_B">
            <wire x2="2000" y1="4768" y2="4768" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1968" y="4704" name="ROT_A" orien="R180" />
        <iomarker fontsize="28" x="1968" y="4768" name="ROT_B" orien="R180" />
        <branch name="XLXN_128">
            <wire x2="2464" y1="4704" y2="4704" x1="2384" />
        </branch>
        <instance x="2464" y="4928" name="XLXI_47" orien="R0">
        </instance>
        <branch name="XLXN_298(13:0)">
            <wire x2="1984" y1="3040" y2="3040" x1="1968" />
            <wire x2="1984" y1="3040" y2="4320" x1="1984" />
            <wire x2="2544" y1="4320" y2="4320" x1="1984" />
        </branch>
        <instance x="2544" y="4224" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_302(13:0)">
            <wire x2="2256" y1="2976" y2="2976" x1="1968" />
            <wire x2="2256" y1="2976" y2="4528" x1="2256" />
            <wire x2="2544" y1="4528" y2="4528" x1="2256" />
        </branch>
        <branch name="XLXN_312(13:0)">
            <wire x2="4656" y1="3360" y2="3360" x1="2272" />
            <wire x2="4656" y1="3360" y2="5024" x1="4656" />
            <wire x2="2272" y1="3360" y2="3584" x1="2272" />
            <wire x2="2336" y1="3584" y2="3584" x1="2272" />
            <wire x2="4656" y1="5024" y2="5024" x1="3648" />
        </branch>
        <instance x="2656" y="3072" name="XLXI_72" orien="R0">
        </instance>
        <instance x="2656" y="2960" name="XLXI_73" orien="R0">
        </instance>
        <branch name="XLXN_108(9:0)">
            <wire x2="3680" y1="4576" y2="4576" x1="3648" />
            <wire x2="3696" y1="4480" y2="4480" x1="3680" />
            <wire x2="3680" y1="4480" y2="4576" x1="3680" />
            <wire x2="3712" y1="4464" y2="4464" x1="3696" />
            <wire x2="3696" y1="4464" y2="4480" x1="3696" />
        </branch>
        <branch name="rst">
            <wire x2="368" y1="2368" y2="2368" x1="304" />
            <wire x2="368" y1="2368" y2="2976" x1="368" />
            <wire x2="1488" y1="2976" y2="2976" x1="368" />
            <wire x2="368" y1="2976" y2="3232" x1="368" />
            <wire x2="368" y1="3232" y2="3904" x1="368" />
            <wire x2="3712" y1="3904" y2="3904" x1="368" />
            <wire x2="368" y1="3904" y2="4992" x1="368" />
            <wire x2="2464" y1="4992" y2="4992" x1="368" />
            <wire x2="368" y1="4992" y2="5088" x1="368" />
            <wire x2="3264" y1="5088" y2="5088" x1="368" />
            <wire x2="2912" y1="3232" y2="3232" x1="368" />
            <wire x2="864" y1="2368" y2="2368" x1="368" />
            <wire x2="2464" y1="4832" y2="4992" x1="2464" />
        </branch>
        <branch name="XLXN_294(2:0)">
            <wire x2="2336" y1="3776" y2="3776" x1="2064" />
            <wire x2="2064" y1="3776" y2="3808" x1="2064" />
            <wire x2="2064" y1="3808" y2="4416" x1="2064" />
            <wire x2="3072" y1="4416" y2="4416" x1="2064" />
            <wire x2="3072" y1="4416" y2="4704" x1="3072" />
            <wire x2="3216" y1="4704" y2="4704" x1="3072" />
            <wire x2="3216" y1="4704" y2="4768" x1="3216" />
            <wire x2="3264" y1="4768" y2="4768" x1="3216" />
            <wire x2="3264" y1="4704" y2="4704" x1="3216" />
            <wire x2="3072" y1="4704" y2="4704" x1="2912" />
        </branch>
        <instance x="3264" y="4672" name="XLXI_46" orien="R0">
        </instance>
        <branch name="XLXN_326(9:0)">
            <wire x2="3120" y1="4256" y2="4256" x1="2928" />
            <wire x2="3312" y1="4256" y2="4256" x1="3120" />
            <wire x2="3312" y1="4256" y2="4304" x1="3312" />
            <wire x2="3712" y1="4304" y2="4304" x1="3312" />
            <wire x2="3120" y1="4256" y2="4832" x1="3120" />
            <wire x2="3264" y1="4832" y2="4832" x1="3120" />
        </branch>
        <branch name="XLXN_327(9:0)">
            <wire x2="3024" y1="4464" y2="4464" x1="2928" />
            <wire x2="3312" y1="4464" y2="4464" x1="3024" />
            <wire x2="3024" y1="4464" y2="4896" x1="3024" />
            <wire x2="3264" y1="4896" y2="4896" x1="3024" />
            <wire x2="3312" y1="4384" y2="4464" x1="3312" />
            <wire x2="3712" y1="4384" y2="4384" x1="3312" />
        </branch>
        <branch name="XLXN_331">
            <wire x2="864" y1="2496" y2="2496" x1="832" />
            <wire x2="832" y1="2496" y2="5328" x1="832" />
            <wire x2="3200" y1="5328" y2="5328" x1="832" />
            <wire x2="4176" y1="5328" y2="5328" x1="3200" />
            <wire x2="3264" y1="5152" y2="5152" x1="3200" />
            <wire x2="3200" y1="5152" y2="5328" x1="3200" />
            <wire x2="4176" y1="4624" y2="5328" x1="4176" />
        </branch>
        <iomarker fontsize="28" x="304" y="2368" name="rst" orien="R180" />
        <iomarker fontsize="28" x="288" y="1968" name="clk" orien="R180" />
        <branch name="XLXN_250(63:0)">
            <wire x2="2896" y1="3456" y2="3456" x1="2720" />
            <wire x2="2912" y1="3040" y2="3040" x1="2896" />
            <wire x2="2896" y1="3040" y2="3456" x1="2896" />
        </branch>
        <instance x="2912" y="3328" name="XLXI_70" orien="R0">
        </instance>
        <branch name="XLXN_315(13:0)">
            <wire x2="2336" y1="3648" y2="3648" x1="2272" />
            <wire x2="2272" y1="3648" y2="3840" x1="2272" />
            <wire x2="3664" y1="3840" y2="3840" x1="2272" />
            <wire x2="3664" y1="3840" y2="4960" x1="3664" />
            <wire x2="3664" y1="4960" y2="4960" x1="3648" />
        </branch>
        <instance x="2336" y="3552" name="XLXI_71" orien="R0">
        </instance>
        <branch name="h_s">
            <wire x2="4256" y1="3520" y2="3520" x1="4176" />
        </branch>
        <branch name="r">
            <wire x2="4256" y1="3680" y2="3680" x1="4176" />
        </branch>
        <branch name="g">
            <wire x2="4256" y1="3760" y2="3760" x1="4176" />
        </branch>
        <branch name="b">
            <wire x2="4256" y1="3840" y2="3840" x1="4176" />
        </branch>
        <branch name="v_s">
            <wire x2="4256" y1="3600" y2="3600" x1="4176" />
        </branch>
        <iomarker fontsize="28" x="4256" y="3760" name="g" orien="R0" />
        <iomarker fontsize="28" x="4256" y="3680" name="r" orien="R0" />
        <iomarker fontsize="28" x="4256" y="3840" name="b" orien="R0" />
        <iomarker fontsize="28" x="4256" y="3520" name="h_s" orien="R0" />
        <iomarker fontsize="28" x="4256" y="3600" name="v_s" orien="R0" />
        <branch name="XLXN_347(7:0)">
            <wire x2="1488" y1="2240" y2="2240" x1="1248" />
        </branch>
        <branch name="XLXN_349">
            <wire x2="1488" y1="2304" y2="2304" x1="1248" />
        </branch>
        <branch name="XLXN_352(15:0)">
            <wire x2="2848" y1="2992" y2="2992" x1="2800" />
            <wire x2="2848" y1="2992" y2="3104" x1="2848" />
            <wire x2="2912" y1="3104" y2="3104" x1="2848" />
        </branch>
    </sheet>
</drawing>