programa 
{

	inclua biblioteca Matematica --> mat
	
	funcao inicio() 
	{
		real primeiraNota, segundaNota, terceiraNota, media
		real quantidadeAulas = 129.0, quantidadeFaltas, percentualFaltas
		cadeia nomeDoAluno

		escreva("Digite o nome do aluno: ")
		leia(nomeDoAluno)

		limpa()
		escreva("Digite a quantidade total de faltas do aluno ", nomeDoAluno, " : ")
		leia(quantidadeFaltas)

		limpa()
		escreva("Digite a primeira nota: ")
		leia(primeiraNota)

		limpa()
		escreva("Digite a segunda nota: ")
		leia(segundaNota)

		media = (primeiraNota + segundaNota) / 2
		percentualFaltas = (quantidadeFaltas / quantidadeAulas) * 100.0

		limpa()
		escreva("A média do aluno(a) ", nomeDoAluno, " é: ", media, "\n")
		escreva("O percentual de faltas do aluno(a) é: ", 
			mat.arredondar(percentualFaltas, 2), "% \n")

		se(media >= 5 e percentualFaltas <= 25.0) {
			escreva("O aluno ", nomeDoAluno, " foi APROVADO!")
		}
		senao se(percentualFaltas >= 25.0) {
			escreva("O aluno ", nomeDoAluno, " foi reprovado por FALTAS!")
		} 
		senao {
			escreva("O aluno ", nomeDoAluno, " foi reprovado por NOTA!")
		}
		
	} /* Fecha inicio() */
} /* Fecha programa */

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */