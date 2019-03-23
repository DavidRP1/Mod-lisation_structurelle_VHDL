library IEEE; use IEEE.STD_LOGIC_1164.all;

entity afficheur16 is
  port(data:     in  STD_LOGIC_VECTOR(3 downto 0);
       segments: out STD_LOGIC_VECTOR(6 downto 0));
end;

architecture synth of afficheur16 is
begin
  process(all) begin
   case data is
    --             				  abcdefg
    when X"0" =>   segments <= "0000001";
    when X"1" =>   segments <= "1001111";
    when X"2" =>   segments <= "0010010";
    when X"3" =>   segments <= "0000110";
    when X"4" =>   segments <= "1001100";
    when X"5" =>   segments <= "0100100";
    when X"6" =>   segments <= "0100000";
    when X"7" =>   segments <= "0001111";
    when X"8" =>   segments <= "0000000";
    when X"9" =>   segments <= "0001100";
	 when X"A" =>   segments <= "0001000";
	 when X"B" =>   segments <= "1100000";
	 when X"C" =>   segments <= "0110001";
	 when X"D" =>   segments <= "1000010";
	 when X"E" =>   segments <= "0110000";
	 when X"F" =>   segments <= "0111000";
    when others => segments <= "0000000";
   end case;
  end process;
end;
