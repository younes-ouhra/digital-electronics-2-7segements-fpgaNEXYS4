library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL; 

entity TwoSevenSegment is
Port (
        SWs : in STD_LOGIC_VECTOR(3 downto 0);
        clk : in STD_LOGIC;
        ANODES : out STD_LOGIC_VECTOR(7 downto 0);
        CATHODES : out STD_LOGIC_VECTOR(6 downto 0)
        );
end TwoSevenSegment;

architecture Behavioral of TwoSevenSegment is
    signal Zahl : INTEGER := 0;
    signal intZahl : INTEGER range 0 to 9;
    
    signal refresh_counter : INTEGER range 0 to 50000;
    signal digit_count : STD_LOGIC_VECTOR(0 downto 0) := "0";
   
begin

    process(SWs)
    begin
        case SWs is
                when "0000" => Zahl <= 0;
                when "0001" => Zahl <= 1;
                when "0010" => Zahl <= 2;
                when "0011" => Zahl <= 3;
                when "0100" => Zahl <= 4;
                when "0101" => Zahl <= 5;
                when "0110" => Zahl <= 6;
                when "0111" => Zahl <= 7;
                when "1000" => Zahl <= 8;
                when "1001" => Zahl <= 9;
                when "1010" => Zahl <= 10;
                when "1011" => Zahl <= 11;
                when "1100" => Zahl <= 12;
                when "1101" => Zahl <= 13;
                when "1110" => Zahl <= 14;
                when "1111" => Zahl <= 15;
                
                when others => CATHODES <= "0000000";
            end case;
    end process;

    process(intZahl)
    begin
        case intZahl is
            when 0 => CATHODES <= "0000001";
            when 1 => CATHODES <= "1001111";
            when 2 => CATHODES <= "0010010";
            when 3 => CATHODES <= "0000110";
            when 4 => CATHODES <= "1001100";
            when 5 => CATHODES <= "0100100";
            when 6 => CATHODES <= "0100000";
            when 7 => CATHODES <= "0001111";
            when 8 => CATHODES <= "0000010";
            when 9 => CATHODES <= "0000100";
            when others => CATHODES <= "0000000";
        end case;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            refresh_counter <= refresh_counter +1;
            if(refresh_counter = 50000) then
                refresh_counter <= 0;
                digit_count <= digit_count + '1';
                
                case digit_count is
                    when "0" =>
                        ANODES <= "11111110";
                        intZahl <= Zahl - ((Zahl / 10) * 10);
                    when "1" =>
                        ANODES <= "11111101";
                        intZahl <= Zahl / 10;
                    when others =>
                        ANODES <= "11111111";
                end case;
            end if;
        end if;   
    end process;
end Behavioral;
