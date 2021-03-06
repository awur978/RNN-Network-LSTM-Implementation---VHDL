----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/11/2017 01:30:01 PM
-- Design Name: 
-- Module Name: Tanh - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
LIBRARY WORK;
USE WORK.Generic_size_of_matrices_pkg.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY Tanh IS
       PORT ( Din: IN Fixed_Point;
              Dout: OUT Fixed_Point);        
END Tanh;

ARCHITECTURE Behavioral OF Tanh IS

SIGNAL TEMP : SIGNED(31 DOWNTO 0);
BEGIN

TEMP <= SIGNED(Din);
       
 PROCESS(TEMP)
 BEGIN
    CASE(TO_INTEGER(TEMP)) IS     
              WHEN -2147483648 TO -262144 => DOUT <="11111111111111110000000000101100";
              WHEN -262143 TO -255590 => DOUT <="11111111111111110000000000110110";
              WHEN -255589 TO -249036 => DOUT <="11111111111111110000000001000010";
              WHEN -249035 TO -242483 => DOUT <="11111111111111110000000001010001";
              WHEN -242482 TO -235929 => DOUT <="11111111111111110000000001100010";
              WHEN -235928 TO -229376 => DOUT <="11111111111111110000000001111000";
              WHEN -229375 TO -222822 => DOUT <="11111111111111110000000010010010";
              WHEN -222821 TO -216268 => DOUT <="11111111111111110000000010110011";
              WHEN -216267 TO -209715 => DOUT <="11111111111111110000000011011010";
              WHEN -209714 TO -203161 => DOUT <="11111111111111110000000100001010";
              WHEN -203160 TO -196608 => DOUT <="11111111111111110000000101000101";
              WHEN -196607 TO -190054 => DOUT <="11111111111111110000000110001100";
              WHEN -190053 TO -183500 => DOUT <="11111111111111110000000111100011";
              WHEN -183499 TO -176947 => DOUT <="11111111111111110000001001001110";
              WHEN -176946 TO -170393 => DOUT <="11111111111111110000001011010000";
              WHEN -170392 TO -163840 => DOUT <="11111111111111110000001101101110";
              WHEN -163839 TO -157286 => DOUT <="11111111111111110000010000101110";
              WHEN -157285 TO -150732 => DOUT <="11111111111111110000010100011001";
              WHEN -150731 TO -144179 => DOUT <="11111111111111110000011000110110";
              WHEN -144178 TO -137625 => DOUT <="11111111111111110000011110010001";
              WHEN -137624 TO -131072 => DOUT <="11111111111111110000100100110110";
              WHEN -131071 TO -124518 => DOUT <="11111111111111110000101100110101";
              WHEN -124517 TO -117964 => DOUT <="11111111111111110000110110011111";
              WHEN -117963 TO -111411 => DOUT <="11111111111111110001000010001010";
              WHEN -111410 TO -104857 => DOUT <="11111111111111110001010000001110";
              WHEN -104856 TO -98304 => DOUT <="11111111111111110001100001001001";
              WHEN -98303 TO -91750 => DOUT <="11111111111111110001110101011010";
              WHEN -91749 TO -85196 => DOUT <="11111111111111110010001101100111";
              WHEN -85195 TO -78643 => DOUT <="11111111111111110010101010010110";
              WHEN -78642 TO -72089 => DOUT <="11111111111111110011001100010011";
              WHEN -72088 TO -65536 => DOUT <="11111111111111110011110100001001";
              WHEN -65535 TO -58982 => DOUT <="11111111111111110100100010100001";
              WHEN -58981 TO -52428 => DOUT <="11111111111111110101011000000010";
              WHEN -52427 TO -45875 => DOUT <="11111111111111110110010101001001";
              WHEN -45874 TO -39321 => DOUT <="11111111111111110111011010000100";
              WHEN -39320 TO -32768 => DOUT <="11111111111111111000100110110011";
              WHEN -32767 TO -26214 => DOUT <="11111111111111111001111010111100";
              WHEN -26213 TO -19660 => DOUT <="11111111111111111011010101101101";
              WHEN -19659 TO -13107 => DOUT <="11111111111111111100110101111001";
              WHEN -13106 TO -6553 => DOUT <= "11111111111111111110011001111101";
              WHEN -6552 TO -1 => DOUT <="11111111111111111110011111111101";
              WHEN   0 => Dout <= "00000000000000000000000000000000";
              WHEN 1 TO 6554 => DOUT <="00000000000000000001100110000100";
              WHEN 6555 TO 13108 => DOUT <="00000000000000000011001010001000";
              WHEN 13109 TO 19661 => DOUT <="00000000000000000100101010010100";
              WHEN 19662 TO 26215 => DOUT <="00000000000000000110000101000101";
              WHEN 26216 TO 32768 => DOUT <="00000000000000000111011001001110";
              WHEN 32769 TO 39322 => DOUT <="00000000000000001000100101111101";
              WHEN 39323 TO 45876 => DOUT <="00000000000000001001101010111000";
              WHEN 45877 TO 52429 => DOUT <="00000000000000001010100111111111";
              WHEN 52430 TO 58983 => DOUT <="00000000000000001011011101100000";
              WHEN 58984 TO 65536 => DOUT <="00000000000000001100001011111000";
              WHEN 65537 TO 72090 => DOUT <="00000000000000001100110011101110";
              WHEN 72091 TO 78644 => DOUT <="00000000000000001101010101101011";
              WHEN 78645 TO 85197 => DOUT <="00000000000000001101110010011010";
              WHEN 85198 TO 91751 => DOUT <="00000000000000001110001010100111";
              WHEN 91752 TO 98304 => DOUT <="00000000000000001110011110111000";
              WHEN 98305 TO 104858 => DOUT <="00000000000000001110101111110011";
              WHEN 104859 TO 111412 => DOUT <="00000000000000001110111101110111";
              WHEN 111413 TO 117965 => DOUT <="00000000000000001111001001100010";
              WHEN 117966 TO 124519 => DOUT <="00000000000000001111010011001100";
              WHEN 124520 TO 131072 => DOUT <="00000000000000001111011011001011";
              WHEN 131073 TO 137626 => DOUT <="00000000000000001111100001110000";
              WHEN 137627 TO 144180 => DOUT <="00000000000000001111100111001011";
              WHEN 144181 TO 150733 => DOUT <="00000000000000001111101011101000";
              WHEN 150734 TO 157287 => DOUT <="00000000000000001111101111010011";
              WHEN 157288 TO 163840 => DOUT <="00000000000000001111110010010011";
              WHEN 163841 TO 170394 => DOUT <="00000000000000001111110100110001";
              WHEN 170395 TO 176948 => DOUT <="00000000000000001111110110110011";
              WHEN 176949 TO 183501 => DOUT <="00000000000000001111111000011110";
              WHEN 183502 TO 190055 => DOUT <="00000000000000001111111001110101";
              WHEN 190056 TO 196608 => DOUT <="00000000000000001111111010111100";
              WHEN 196609 TO 203162 => DOUT <="00000000000000001111111011110111";
              WHEN 203163 TO 209716 => DOUT <="00000000000000001111111100100111";
              WHEN 209717 TO 216269 => DOUT <="00000000000000001111111101001110";
              WHEN 216270 TO 222823 => DOUT <="00000000000000001111111101101111";
              WHEN 222824 TO 229376 => DOUT <="00000000000000001111111110001001";
              WHEN 229377 TO 235930 => DOUT <="00000000000000001111111110011111";
              WHEN 235931 TO 242484 => DOUT <="00000000000000001111111110110000";
              WHEN 242485 TO 249037 => DOUT <="00000000000000001111111110111111";
              WHEN 249038 TO 255591 => DOUT <="00000000000000001111111111001011";
              WHEN 255592 TO 262144 => DOUT <="00000000000000001111111111010101";
              WHEN OTHERS =>  Dout <= "00000000000000001111111111111101";     
              END CASE;
END PROCESS;

END Behavioral;
