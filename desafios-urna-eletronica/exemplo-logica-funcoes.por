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
		
		inteiro tempoDeEsperaSom = tempoInformado * 1000
		inteiro somDeConfirmacao = Sons.carregar_som("audio/confirma-urna.mp3")

		Sons.reproduzir_som(somDeConfirmacao, falso)

		Util.aguarde(tempoDeEsperaSom)
	}

	
	
// fim do programa	
}






/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 58; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tempoInformado, 24, 37, 14}-{somDeConfirmacao, 28, 10, 16};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */