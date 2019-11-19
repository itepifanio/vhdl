
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY division2_test IS
END division2_test;
 
ARCHITECTURE behavior OF division2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT division2
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         aa : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         ready : OUT  std_logic;
         done_tick : OUT  std_logic;
         c_out : OUT  std_logic_vector(3 downto 0);
         resto_out : OUT  std_logic_vector(3 downto 0);
         zero_div : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal aa : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ready : std_logic;
   signal done_tick : std_logic;
   signal c_out : std_logic_vector(3 downto 0);
   signal resto_out : std_logic_vector(3 downto 0);
   signal zero_div : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: division2 PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          aa => aa,
          b => b,
          ready => ready,
          done_tick => done_tick,
          c_out => c_out,
          resto_out => resto_out,
          zero_div => zero_div
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	reset <= '1' ; --reseteo todo 
	wait for 15 ns ;
	
	wait until falling_edge(clk);
	reset <= '0';
			
	for kaa in 0 to 15 loop
		for kb in 0 to 15 loop
			aa <= std_logic_vector(to_unsigned(kaa,aa'length)) ; 
			b  <= std_logic_vector(to_unsigned(kb,b'length)) ;
			wait until rising_edge(clk) ; 
			start <= '1' ; 
			wait for clk_period ; 
			start <= '0' ;
			-- esperamos a que llegue al estado done
			wait until rising_edge(done_tick) ;
				--start <= '0' ; 
			-- aca vienen los asserts
				if(kb = 0) then
					assert(zero_div = '1') report "------ NO INFORMA DIVISION POR CERO -----------" severity failure;
				else
					if(kaa >= kb) then
						assert(kaa = kb * unsigned(c_out) + unsigned(resto_out)) report "---- NO DIVIDE BIEN (a,b)="&integer'image(kaa)&" / "&integer'image(kb) severity failure ; 
					else
						assert(unsigned(c_out)=0 and unsigned(resto_out)=kaa) report "---- NO DIVIDE BIEN (a,b)="&integer'image(kaa)&" / "&integer'image(kb) severity failure ; 
					end if;
				end if;

		end loop;
	end loop;		
	assert false report "---------- EXITO --------------" severity failure ; 
   end process;

END;
