programa
{
	
inclua biblioteca Calendario --> cal
	inclua biblioteca Texto
	inclua biblioteca Tipos
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro contador = 0

		cadeia dataHoraInicio = dataHoraAtual()
		
		faca {
			limpa()
			contador++
			escreva("Votação ", contador, " em andamento.\n")
			Util.aguarde(3000)
		} enquanto (contador < 5)
		
		cadeia dataHoraFim = dataHoraAtual()

		escreva("Inicio: ", dataHoraInicio, "\n")
		escreva("Fim   : ", dataHoraFim, "\n")
	}

	funcao cadeia dataHoraAtual()
	{
		retorne 
			Texto.preencher_a_esquerda('0', 2, Tipos.inteiro_para_cadeia(cal.dia_mes_atual(), 10)) + "/" + 
			Texto.preencher_a_esquerda('0', 2, Tipos.inteiro_para_cadeia(cal.mes_atual(), 10)) + "/" + 
			Texto.preencher_a_esquerda('0', 4, Tipos.inteiro_para_cadeia(cal.ano_atual(), 10)) + " " + 
			Texto.preencher_a_esquerda('0', 2, Tipos.inteiro_para_cadeia(cal.hora_atual(falso), 10)) + ":" + 
			Texto.preencher_a_esquerda('0', 2, Tipos.inteiro_para_cadeia(cal.minuto_atual(), 10)) + ":" + 
			Texto.preencher_a_esquerda('0', 2, Tipos.inteiro_para_cadeia(cal.segundo_atual(), 10))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
