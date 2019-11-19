
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity division2 is
	generic(N: integer:=16) ;
	port(
		clk,reset : in std_logic;
		start 	 : in std_logic;
		aa,b      : in std_logic_vector(N-1 downto 0);
		ready,done_tick: out std_logic;
		c_out 	 : out std_logic_vector(N-1 downto 0);
		resto_out : out std_logic_vector(N-1 downto 0);
		zero_div : out std_logic -- va a ser combinacional y depende solo si b es cero
	);
end division2;

architecture Behavioral of division2 is
	type state_type is (idle,op,done) ;
	signal state_reg, state_next : state_type ; 
	signal a,a_reg, a_next : std_logic_vector(2*N-1 downto 0) ; 
	signal c_reg, c_next : std_logic_vector(N downto 0) ; 
	signal n_reg, n_next : integer ;
	signal zero_div_aux : std_logic ;

begin 
-- duplico el tama�o de la entrada aa
	a <= std_logic_vector(to_unsigned(0,aa'length)) & aa ; 
-- genero alerta de division entre cero
	zero_div_aux <= '1' when(unsigned(b) = to_unsigned(0,b'length)) else
						 '0'; 
	
	process(clk,reset)
	begin
		if reset='1' then
			state_reg <= idle ; 
			n_reg     <=0;
			c_reg		 <=(others=>'0');
			a_reg 	 <=(others=>'0');
		elsif (clk'event and clk='1') then
			state_reg <= state_next;
			n_reg		 <= n_next ; 
			c_reg		 <= c_next ;
			a_reg		 <= a_next ;
		end if;
	end process;
		
-- ===========================================================================================
-- ============================ NEXT STATE LOGIC =============================================

	process(state_reg, a_reg, c_reg, n_reg, zero_div_aux,start, a,b)
	begin
		state_next <= state_reg ; 
		n_next 	  <= n_reg ; 
		c_next 	  <= c_reg ;
		a_next 	  <= a_reg ;
		
		case state_reg is
			when idle => 
				-- inicializo los datos
				if(start = '1') then
					state_next	<=	op ;
					n_next		<= N+1;
					c_next		<=(others=>'0');
					--a_aux			<=(others=>'0');
					a_next		<= a ;
				end if;
			
			when op => 
				if((n_reg = 0) or (zero_div_aux='1')) then -- 
					state_next <= done ;
										
				else
					-- condicion del algoritmo
					if(unsigned(a_reg(2*N-1 downto N)) >= unsigned(b))then
						c_next(n_reg-1) <= '1' ; 
						a_next <= std_logic_vector(unsigned(a_reg(2*N-2 downto N)) - unsigned(b(N-2 downto 0))) & a_reg(N-1 downto 0) & '0' ; 
					else
						c_next(n_reg-1)	<= '0' ; 
						a_next			<= a_reg(2*N-2 downto 0) & '0' ; 
					end if;
				
				end if;
				
				-- disminuyo el n
				n_next <= n_reg - 1 ;
			
			when done =>
				state_next <= idle ; 
						
		end case ;
	end process;
	
-- ===========================================================================================
-- ================================ OUTPUT LOGIC =============================================
	process(state_reg, a_reg, c_reg, zero_div_aux,a,b )
	begin
		done_tick <= '0' ; 
	   ready <= '0' ;
	   c_out <= (others=>'0') ;
	   resto_out <= (others=>'0') ; 
		zero_div <= '0' ;
		
		case state_reg is
			when idle =>
				ready <= '1' ; 
				
			when op => 
			
			when done => 
				done_tick <= '1' ; 
				c_out     <= c_reg(N-1 downto 0) ; -- le quite el bit mas significativo que siempre es cero. 
				zero_div <= zero_div_aux ; -- se podria mapear aun led que indique divicion entre cero	
				if(unsigned(aa)>=unsigned(b))then
					resto_out <= '0' & a_reg(2*N-1 downto N+1) ; -- unshifting the a_reg to properly calculate the remainig
				else
					resto_out <= aa ;
				end if;
		end case;
	end process;


end Behavioral;

