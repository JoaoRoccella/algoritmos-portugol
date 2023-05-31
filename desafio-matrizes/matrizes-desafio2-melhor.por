/*
 * Desafios de Matrizes
 * 
 * Desafio 2 - Solução (melhor abordagem)
 * 
 * Acrescente uma função ao seu programa que faça a contagem 
 * e totalização das vogais e consoantes do seu nome.
 */

programa
{
	/* A biblioteca Util tem métodos que vão nos ajudar a
	 * parametrizar as condições de parada de cada 'para'
	 * de forma automatizada. Usaremos os métodos:
	 * 
	 * Util.numero_linhas(matriz) = retorna o número de 
	 * linhas de uma matriz;
	 * 
	 * Util.numero_colunas(matriz) = retorna o número de 
	 * colunas de uma matriz;
	 * 
	 * Util.numero_elementos(vetor) = retorna o número de
	 * elementos de um vetor;
	 */ 
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro 
			quantidadeVogais = 0, 
			quantidadeConsoantes = 0

		// Matriz com o nome que será analizado
		caracter meuNome[4][8] = 
			{
				{'J', 'o', 'ã', 'o', ' ', ' ', ' ', ' '},
				{'M', 'a', 'r', 'c', 'o', 's', ' ', ' '},
				{'R', 'o', 'c', 'c', 'e', 'l', 'l', 'a'},
				{'A', 'l', 'v', 'e', 's', ' ', ' ', ' '}
			}

		/* Vetor com as vogais para comparação. Note que não é
		 *  preciso declarar o tamanho dele, pois na própria
		 *  inicialização ele assumirá o tamanho correspondente
		 *  à quantidade de elementos atribuídos a ele. */
		caracter vogais[] = {'A','Á','À','Ã','a','á','à','ã','E',
			'É','Ê','e','é','ê','I','Í','Ì','i','í','ì','O','Ó',
			'Ô','Õ','o','ó','ô','õ','U','Ú','Ù','u','ú', 'ù'}
		
		/* Vetor com as consoantes para comparação. Note que não 
		 *  é preciso declarar o tamanho dele, pois na própria
		 *  inicialização ele assumirá o tamanho correspondente
		 *  à quantidade de elementos atribuídos a ele. */
		caracter consoantes[] = {'B','b','C','c','D','d','F','f',
			'G','g','H','h','J','j','K','k','L','l','M','m','N',
			'n','P','p','Q','q','R','r','S','s','T','t','V','v',
			'W','w','X','x','Y','y','Z','z','Ç','ç'}
			
		// percorrendo cada linha (cada subconjunto)
		para (inteiro i = 0; i < Util.numero_linhas(meuNome); i++) 
		{
			// percorrendo cada elemento do subconjunto (cada coluna)
			para (inteiro j = 0; j < Util.numero_colunas(meuNome); j++) 
			{
				// Se a letra atual não for um espaço...
				se (meuNome[i][j] != ' ') 
				{
					// ...escreve a letra.
					escreva(meuNome[i][j])
				}

				// Compara a letra atual com cada elemento do vetor vogais[]
				para (inteiro k = 0; k < Util.numero_elementos(vogais); k++)
				{
					// Se a letra atual for igual ao elemento comparado...
					se (meuNome[i][j] == vogais[k]) 
					{
						// ...incrementa o contador das vogais...
						quantidadeVogais++
						pare // ... e sai deste laço imediatamente.
						
					}
				}

				// compara a letra atual com cada elemento do vetor consoantes[]
				para (inteiro k = 0; k < Util.numero_elementos(consoantes); k++)
				{
					// se a letra atual for igual ao elemento comparado...
					se (meuNome[i][j] == consoantes[k]) 
					{
						// ...incrementa o contador das vogais...
						quantidadeConsoantes++
						pare // ...e sai deste laço imediatamente
					}
				}
			
			}
			escreva(" ")
		}

		escreva("\n\n")
		escreva("Quantidade de vogais: ", quantidadeVogais, "\n")
		escreva("Quantidade de consoantes: ", quantidadeConsoantes, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 72; 
 * @PONTOS-DE-PARADA = 69, 92, 79;
 * @SIMBOLOS-INSPECIONADOS = {quantidadeVogais, 30, 3, 16}-{quantidadeConsoantes, 31, 3, 20}-{i, 60, 16, 1}-{j, 63, 17, 1}-{k, 73, 18, 1}-{k, 86, 18, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */