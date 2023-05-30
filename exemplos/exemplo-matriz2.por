programa
{
	funcao inicio()
	{
		inteiro matriz[3][5] = 
		{ 
		// i = linha; j = coluna
			
		//     i0j0  i0j1  i0j2  i0j3  i0j4	
			{  21,   31,   41,   51,   61  }, 
		//	  i1j0  i1j1  i1j2  i1j3  i1j4
			{  55,   65,   75,   85,   95  }, 
		//     i2j0  i2j1  i2j2  i2j3  i2j4
			{  48,   58,   68,   78,   88  } 
		}
		
		para (inteiro i = 0; i < 3; i++) {
			
			para (inteiro j = 0; j < 5; j++) {

				escreva(matriz[i][j], " ")
				
			}
			escreva("\n")
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 472; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */