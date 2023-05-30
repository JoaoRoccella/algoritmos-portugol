/*  
 * Desafio 3
 * 
 * Especialize os desafios 1 e 2 utilizando funções, uma para cada
 * operação: tabuada() e numeroPar(). lembre-se de que uma função
 * pode chamar a outra, passando parâmetros e obtendo retornos.
 * 
 */

programa {
	
	funcao inicio() {

		inteiro MULTIPLICANDO = 7

		escreva("** Tabuada do ", MULTIPLICANDO,", de 0 até 100, passo 3 ** \n\n")

		tabuada(MULTIPLICANDO)

	}

	funcao vazio tabuada(inteiro multiplicando) {

		inteiro produto
		
		para (inteiro multiplicador = 0 ; multiplicador <= 100 ; multiplicador += 3) {

			produto = multiplicando * multiplicador
			
			escreva(multiplicando, " x ", multiplicador," = ", produto)

			se (numeroPar(produto)) {
				
				escreva(" -> Este número é par.")
				
			}

			escreva("\n")
		}
	}

	funcao logico numeroPar(inteiro numero) {
		
		retorne numero % 2 == 0
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */