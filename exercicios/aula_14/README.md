## Exercício 1
- Implemente um deslocador de um bit para uma
entrada chamada ENTRA de 8 bits.
- Este circuito deve possuir um seletor chamado de
DESLOCA que indicará se o deslocamento:
	- será feito para a direita,
	- será feito para a esquerda, ou
	- se não será feito nenhum deslocamento.

## Exercício 2
- Implementar uma ULA que realize as operações
entre as entradas A e B, de 8 bits cada, de acordo
com a tabela abaixo:

| M | S1 | S0 |   Operação  |
|---|----|----|-------------|
| 0 | 0  | 0  | F = A + B   |
| 0 | 0  | 1  | F = A - B   |
| 0 | 1  | 0  | F = A + 1   |
| 0 | 1  | 1  | F = A       |
| 1 | 0  | 0  | F = A AND B |
| 1 | 0  | 1  | F = A OR B  |
| 1 | 1  | 0  | F = A XOR B |
| 1 | 1  | 1  | F = NOT B   |

- Na implementação da ULA:
	- NÃO será possível usar a biblioteca ARITH
	- Considere os seguintes componentes:
		- Multiplexador 8 x 1;
		- Componente lógico: usando 3 seletores;
		- Somador completo de 1 bit;
		- ULA:
			- Usará um componente lógico;
			- Usará ? somador(es) de ? bit(s).
