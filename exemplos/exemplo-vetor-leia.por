programa {
	
	funcao inicio() {

		real notaAluno[5]
		
		inteiro quantidadeDeNotas

		escreva("Imprima a quantidade de notas: ")
		leia(quantidadeDeNotas)

		para (inteiro contador = 0 ; contador < quantidadeDeNotas ; contador++) {
			
			escreva("Nota do aluno ", contador+1, ": ")
			leia(notaAluno[contador])
			escreva("\n")
		
		}

		para (inteiro contador = 0 ; contador < quantidadeDeNotas ; contador++) {
			
			escreva("Nota do aluno ", contador+1,": ", notaAluno[contador], "\n")
		
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 37; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */