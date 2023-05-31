/*
 * Desafios de Matrizes
 * 
 * Desafio 2
 * 
 * Acrescente uma função ao seu programa que faça a contagem 
 * e totalização das vogais e consoantes do seu nome.
 */

programa
{
	
	funcao inicio()
	{
		inteiro 
			quantidadeVogais = 0, 
			quantidadeConsoantes = 0
			
		caracter meuNome[3][8] = 
			{
				{' ', ' ', 'J', 'o', 'ã', 'o', ' ', ' '},
				{' ', 'M', 'a', 'r', 'c', 'o', 's', ' '},
				{'R', 'o', 'c', 'c', 'e', 'l', 'l', 'a'}
			}

		para (inteiro i = 0; i < 3; i++) 
		{

			para (inteiro j = 0; j < 8; j++) 
			{

				escreva(meuNome[i][j])

				se (	meuNome[i][j] == 'a' ou 
					meuNome[i][j] == 'ã' ou 
					meuNome[i][j] == 'á' ou 
					meuNome[i][j] == 'à' ou 
					meuNome[i][j] == 'e' ou 
					meuNome[i][j] == 'é' ou 
					meuNome[i][j] == 'ê' ou 
					meuNome[i][j] == 'i' ou
					meuNome[i][j] == 'í' ou  
					meuNome[i][j] == 'o' ou 
					meuNome[i][j] == 'ô' ou
					meuNome[i][j] == 'õ' ou  
					meuNome[i][j] == 'u' ou
					meuNome[i][j] == 'ú' 
					) {
					
					quantidadeVogais++ 
					
				} senao se (meuNome[i][j] != ' ') {
					
					quantidadeConsoantes++
					
				} 
			
				
			}
			escreva("\n")
		}

		escreva("\n")
		escreva("Quantidade de vogais: ", quantidadeVogais, "\n")
		escreva("Quantidade de consoantes: ", quantidadeConsoantes, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */