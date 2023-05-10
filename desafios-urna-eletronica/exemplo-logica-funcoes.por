programa
{
	inclua biblioteca Sons
	inclua biblioteca Util
		
	funcao inicio()
	{
		
		//voto no candidato 1
		somConfirmacao(2)
		escreva("O som foi executado 1 vez\n")

		//voto no candidato 2
		somConfirmacao(2)
		escreva("O som foi executado 2 vezes\n")

		//voto no candidato 3
		somConfirmacao(2)
		escreva("O som foi executado 3 vezes\n")
	
	// fim da função inicio()
	}

	funcao vazio somConfirmacao(inteiro tempoInformado) 
	{
		
		//inteiro tempoDeEsperaSom = tempoInformado * 1000
		inteiro somDeConfirmacao = Sons.carregar_som("audio/confirma-urna.mp3")

		Sons.reproduzir_som(somDeConfirmacao, falso)

		Util.aguarde(tempoInformado * 1000)
	}

	
	
// fim do programa	
}






/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = 32, 18, 19, 10, 11, 28, 14, 30, 15;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */