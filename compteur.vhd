library IEEE; use IEEE.STD_LOGIC_1164.all;

entity compteur is
  port(clk:     in  STD_LOGIC;
       reset_n: in  STD_LOGIC;
		 y: 		 out STD_LOGIC_VECTOR(3 downto 0));
  end;

architecture synth of compteur is
  type statetype is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);
  signal state, nextstate: statetype;
begin

  --state register
  process(clk, reset_n) begin
    if reset_n = '0' then state <= S0;
    elsif clk'event and clk='1' then state <= nextstate;
	 end if;
  end process;
	  
  --next state logic
  nextstate <= S1 when state = S0 
  else S2  when state = S1
  else S3  when state = S2
  else S4  when state = S3
  else S5  when state = S4
  else S6  when state = S5
  else S7  when state = S6
  else S8  when state = S7
  else S9  when state = S8
  else S10 when state = S9
  else S11 when state = S10
  else S12 when state = S11
  else S13 when state = S12
  else S14 when state = S13
  else S15 when state = S14
  else S0  when state = S15
  else S0;
		 
  --output logic 
  y <= X"0" when state = S0
  else X"1" when state = S1
  else X"2" when state = S2
  else X"3" when state = S3
  else X"4" when state = S4
  else X"5" when state = S5
  else X"6" when state = S6
  else X"7" when state = S7
  else X"8" when state = S8
  else X"9" when state = S9
  else X"A" when state = S10
  else X"B" when state = S11
  else X"C" when state = S12
  else X"D" when state = S13
  else X"E" when state = S14
  else X"F" when state = S15
  else X"0"; 
end;
