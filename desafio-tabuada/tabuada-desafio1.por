/* 
 * Desafio 1 
 * 
 * Desenvolva um programa que apresente a tabuada do número 7
 * de 0 até 100 (inclusive), mas apenas dos números multiplicadores 
 * múltiplos de 3;
 * 
 * Em linguagem de algoritmo:
 * "Para 'multi' de 0 até 100 passo 3, 
 *  escreva MULTI ' x ' multi ' = ' MULTI * multi"
 * 
 * Desafio 2
 * 
 * Seguindo o enunciado anterior, faça com que o programa apresente
 * a mensagem "Este número é par" sempre que o resultado for par, 
 * ou seja, divisível por 2 (resto da divisão por 2 é igual a 0);
 * 
 * Desafio 3
 * 
 * Especialize os desafios 1 e 2 utilizando funções, uma para cada
 * operação: tabuada() e numeroPar(). lembre-se de que uma função
 * pode chamar a outra, passando parâmetros e obtendo retornos.
 * 
 */

programa {
	
	funcao inicio() {

		inteiro MULTIPLICANDO = 7
		inteiro produto

		escreva("** Tabuada do 7, de 0 até 100, passo 3 ** \n\n")

		para (inteiro multiplicador = 0 ; multiplicador <= 100 ; multiplicador += 3) {

			produto = MULTIPLICANDO * multiplicador
			
			escreva(MULTIPLICANDO, " x ", multiplicador," = ", produto, " \n")
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1099; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */