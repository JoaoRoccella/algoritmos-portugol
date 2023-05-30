programa {
	
	funcao inicio() {

		// Cada elemento da matriz possui dois índices
		// de referência ("i" e "j")
		
		inteiro matriz[2][3] = { {100,101,102}, {210,211,212} }

		// i = linha; j = coluna
		// i0,j0  i0,j1  i0,j2 
		//  100    101    102
		//  210    211    212
		// i1,j0  i1,j1  i1,j2
		
		para (inteiro i = 0; i <= 1; i ++) {

			para (inteiro j = 0; j <= 2; j ++) {

				escreva(matriz[i][j], "  ")
				
			}
			escreva("\n\n")		
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */