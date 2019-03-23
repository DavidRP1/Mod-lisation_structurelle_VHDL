library IEEE; use IEEE.STD_LOGIC_1164.all;

entity circuitCompose is
  port(R, clk1: in  STD_LOGIC;
       S      : out STD_LOGIC_VECTOR(6 downto 0));
  end;


architecture struct of circuitCompose is
  component compteur
    port(clk:    in  STD_LOGIC;
         reset_n: in  STD_LOGIC;
		   y: 		out STD_LOGIC_VECTOR(3 downto 0));
  end component;
	 
  component afficheur16
    port(data:     in  STD_LOGIC_VECTOR(3 downto 0);
         segments: out STD_LOGIC_VECTOR(6 downto 0));
  end component;
	 
  signal sortieCompteur: STD_LOGIC_VECTOR(3 downto 0);

begin
  compteur_1: compteur port map(clk1, R, sortieCompteur);
  afficheur_1: afficheur16 port map(sortieCompteur, S);
end;