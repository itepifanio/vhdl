library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final is 
	port(num: in std_logic_vector(15 downto 0); -- switches da placa
--		  reset: in std_logic;
--		  operar: in std_logic;
--		  validar: in std_logic;
		  clk: in std_logic;
		  ler_a: in std_logic;
		  ler_b: in std_logic;
--		  d1,d2,d3,d4: out std_logic_vector(6 downto 0); -- ver com epitacio se iremos deixar na ula ou aqui
		  led_termino: out std_logic);
end entity;

architecture arq of final is
	component ULA 
		port(a,b: inout std_logic_vector(15 downto 0);
		  -- 0000 A+B
		  -- 0001 A-B
		  -- 0010 A and 1
		  -- 0011 A nor 1
		  -- 0100 A or B
		  -- 0101 A << 1
		  -- 0110 A >> 1
		  -- 1000 B = m[A + const]
		  -- 1001 m[A + const] = B
		  -- 1110 B = A + const
		  op: in std_logic_vector(3 downto 0);
		  s: inout std_logic_vector(15 downto 0);
		  sd1, sd2, sd3, sd4 : out std_logic_vector(6 downto 0)
		 );
	end component;
	
	component ram 
		port (
        clock  : in std_logic;
        wren   : in std_logic;
        addr   : in std_logic_vector(15 downto 0);
        data_i : in std_logic_vector(15 downto 0);
        data_o : out std_logic_vector(15 downto 0)
    );
	end component;
end architecture;


