library ieee;
use ieee.std_logic_1164.all;

entity exercicio1 is
	port(clk, reset, w: in std_logic;
		  in_i: in std_logic_vector(15 downto 0);
		  o: out std_logic_vector(15 downto 0));
end entity;

architecture arq of exercicio1 is
	component registrador
		port(clk, reset, w, in_i: in std_logic;
		  o: out std_logic);
	end component;
	begin
		f: for I in 0 to 15 generate
			Regs: registrador
				port map (clk => clk,
							 reset => reset,
							 w => w,
							 in_i => in_i(I),
							 o => o(I));
		end generate f;
end architecture;