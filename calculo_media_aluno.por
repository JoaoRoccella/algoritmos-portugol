programa {
	funcao inicio() {
		real primeiraNota, segundaNota, terceiraNota, media
		cadeia nomeDoAluno

		escreva("Digite o nome do aluno: ")
		leia(nomeDoAluno)

		escreva("Digite a primeira nota: ")
		leia(primeiraNota)

		escreva("Digite a segunda nota: ")
		leia(segundaNota)

		escreva("Digite a terceira nota: ")
		leia(terceiraNota)

		media = (primeiraNota + segundaNota + terceiraNota) / 3

		limpa()
		escreva("A média do aluno ", nomeDoAluno, " é: ", media, "\n")

		se(media>=5) {
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
 * @POSICAO-CURSOR = 548; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */