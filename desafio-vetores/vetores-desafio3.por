/*
 * Desafio 3
 * 
 * Desenvolva uma forma de ler cada caracter digitado
 * do seu nome antes de escrever na tela. Utilize um 
 * laço "para" e a função "leia".
*/

programa
{
	
	funcao inicio()
	{
		caracter nome[11]

		para (inteiro i = 0; i < 11; i++) {

			limpa()
			escreva("Digite um caracter: ")
			leia(nome[i])
			
		}

		para (inteiro i = 0; i < 11; i++) {
			
			escreva(nome[i])
			
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */