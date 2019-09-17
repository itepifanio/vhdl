## Exercício 1

- Para a seguinte tabela verdade foram propostos dois códigos VHDL.

| A | B | S |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 | 

- Utilizando o Quartus,
	- Crie projetos para cada um desses códigos.
	- Compile esses dois códigos.

#### Código 1
```vhdl
	library ieee;
	use ieee.std_logic_1164.all;

	entity exercicio_1a is
		port(a: IN bit_vector(0 to 3);
			 b: IN bit_vector(0 to 3);
		     s: OUT bit_vector(0 to 3));
	end entity;

	architecture a of exercicio_1a is
	begin
	  s(0) <= (NOT a(0)) AND (NOT b(0));
	  s(1) <= (NOT a(1)) AND b(1);
	  s(2) <= a(2) AND (NOT b(2));
	  s(3) <= NOT (a(3) AND b(3));
	end architecture;
```

#### Código 2
```vhdl
	library ieee;
	use ieee.std_logic_1164.all;

	entity exercicio_1b is
		port(a: IN std_logic;
			 b: IN std_logic;
		     s: OUT std_logic);
	end entity;

	architecture a of exercicio_1b is
	begin
	  s <= a nand b;
	end architecture;
```

## Exercício 2

- Depois de compilados os códigos do exercício anterior e feitas as devidas correções (se
necessário):
	- execute a simulação para cada um dos e analise os resultados.
- Os resultados corresponderam ao esperado, na tabela verdade do exercício 1 ?


## Exercício 3

![Imagem descritiva do exercício 3](https://github.com/itepifanio/vhdl/blob/master/img/aula6_exercicio3.png)

