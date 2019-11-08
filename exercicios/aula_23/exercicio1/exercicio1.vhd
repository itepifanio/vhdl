library ieee;
use ieee.std_logic_1164.all;

entity exercicio1 is
	port(dmx: in std_logic_vector(2 downto 0); -- escolhe qual registrador recebera o dado
		  data: in std_logic_vector(15 downto 0);
		  mux: in std_logic_vector(2 downto 0); -- escolhe qual registrador sera feita a leitura
		  clk: in std_logic;
		  q: out std_logic_vector(15 downto 0));
end entity;

architecture arq of exercicio1 is
	component registrador
		port(i: in std_logic_vector(15 downto 0);
		  clk: in std_logic;
		  q: out std_logic_vector(15 downto 0));
	end component;
	
	signal r0: std_logic_vector(15 downto 0);
	signal r1: std_logic_vector(15 downto 0);
	signal r2: std_logic_vector(15 downto 0);
	signal r3: std_logic_vector(15 downto 0);
	signal r4: std_logic_vector(15 downto 0);
	signal r5: std_logic_vector(15 downto 0);
	signal r6: std_logic_vector(15 downto 0);
	signal r7: std_logic_vector(15 downto 0);
	
	begin
--		GEN_REG: 
--		for I in 0 to 7 generate -- gera os 8 registradores
--			REGX: REG port map
--				(data, clk)
--		end generate GEN_REG;		
		process(data, dmx, mux, clk)
			begin
				if(clk'event and clk = '1') then
					if(dmx = "000") then -- ifs do dmx
						r0 <= data;
					elsif(dmx = "001") then
						r1 <= data;
					elsif(dmx = "010") then
						r2 <= data;
					elsif(dmx = "011") then
						r3 <= data;
					elsif(dmx = "100") then
						r4 <= data;
					elsif(dmx = "101") then
						r5 <= data;
					elsif(dmx = "110") then
						r6 <= data;
					elsif(dmx = "111") then
						r7 <= data;
					end if;
					
					if(mux = "000") then
						q <= r0;
					elsif(mux = "001") then
						q <= r1;
					elsif(mux = "010") then
						q <= r2;
					elsif(mux = "011") then
						q <= r3;
					elsif(mux = "100") then
						q <= r4;
					elsif(mux = "101") then
						q <= r5;
					elsif(mux = "110") then
						q <= r6;
					elsif(mux = "111") then
						q <= r7;
					end if;
				end if;
		end process;
end architecture;