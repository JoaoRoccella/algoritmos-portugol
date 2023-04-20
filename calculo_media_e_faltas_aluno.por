programa {
	funcao inicio() {
		real primeiraNota, segundaNota, terceiraNota, media
		real quantidadeAulas, quantidadeFaltas, percentualFaltas
		cadeia nomeDoAluno

		escreva("Digite o nome do aluno: ")
		leia(nomeDoAluno)
		
		limpa()
		escreva("Digite a quantidade total de aulas: ")
		leia(quantidadeAulas)

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
		escreva("O percentual de faltas do aluno(a) é: ", percentualFaltas, "% \n")

		se(media >= 5 e percentualFaltas <= 25.0) {
			escreva("O aluno ", nomeDoAluno, " foi APROVADO!")
		}
		senao {
			escreva("O aluno ", nomeDoAluno, " foi REPROVADO!")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 825; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */