programa {
	
	funcao inicio() {

		// posições		 1ª    2ª    3ª     4ª    5ª
		real notaAluno[5] = {5.0,  6.0,  4.0,  10.0,  7.0}
		// índices		 i0    i1    i2     i3    i4

		// Por convenção, chamamos o contador do 'para' de 'i'; 
		// leia assim: "para i de 0 até 5 passo 1"
		para (inteiro i = 0 ; i < 5 ; i ++) {
			
			// Lembre-se de que o primeiro valor do contador é 0,
			// para que ele acesse a 1ª posição do vetor.
			// Por isso, somamos +1 para exibir o número do aluno;
			
			escreva("Nota do aluno ", i + 1 , ": ", notaAluno[i], "\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 565; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */