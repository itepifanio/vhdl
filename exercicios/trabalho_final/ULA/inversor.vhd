library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity inversor is
    Port (a: in  STD_LOGIC_VECTOR(15 downto 0);
          s: out  STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture Behavioral of inversor is
begin
    s(0) <= not a(0);
	 s(1) <= not a(1);
	 s(2) <= not a(2);
	 s(3) <= not a(3);
	 s(4) <= not a(4);
	 s(5) <= not a(5);
	 s(6) <= not a(6);
	 s(7) <= not a(7);
	 s(8) <= not a(8);
	 s(9) <= not a(9);
	 s(10) <= not a(10);
	 s(11) <= not a(11);
	 s(12) <= not a(12);
	 s(13) <= not a(13);
	 s(14) <= not a(14);
	 s(15) <= not a(15);
end architecture;