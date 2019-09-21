## Exercício 1

- Implemente em VHDL um Subtrator:
	- Esse subtrator deve usar complemento de 2.
	- Os dois operandos são de 4 bits.
	- Não é permitido usar o pacote ARITH na realização da soma ou subtração.
	- Pode ser usada descrição estrutural.

## Exercício 2

- Implemente uma calculadora de 8 bits que efetue as
operações de soma e subtração.

	- Entradas:
		- A , B : palavras binárias de 8 bits cada.
		- OP : bit que indica se será feito soma ou subtração.
	- Saídas:
		- S : palavra binária de 8 bits ( pode ser A + B ou A − B )
		- Luz1 , Luz2 :
			- Luz1 acende (Luz1 = 1) se for uma soma e
			- Luz2 acende (Luz2 = 1) se for uma subtração.
	- Operação:
		- Circuito combinacional que permite selecionar qual das duas operações será realizada.
