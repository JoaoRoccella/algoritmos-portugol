/*
 * Simulação de uma urna eletrônica
 * Desafio 0
*/

programa
{
	/* 
	 *  A inclusão da biblioteca "Tipos" não é obrigatória para o desafio,
	 *  mas fará a conversão do valor inteiro dos contadores para que o 
	 *  cálculo dos percentuais (reais) seja feito sem que os contadores
	 *  precisem ser declarados como tipo real.
	*/
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		inteiro 
			codigoVoto,
			votosTotais = 0, 
			votosCandidato1 = 0, 
			votosCandidato2 = 0, 
			votosCandidato3 = 0,
			votosBranco = 0, 
			votosNulo = 0,
			votosTotaisGanhador = 0
		
		real 
			percentualVotosCandidato1 = 0.0, 
			percentualVotosCandidato2 = 0.0,
			percentualVotosCandidato3 = 0.0,
			percentualVotosBranco = 0.0,
			percentualVotosNulo = 0.0,
			percentualGanhador = 0.0
		
		cadeia
			nomeCandidato1 = "Celso Portioli",
			nomeCandidato2 = "Luciano Huck",
			nomeCandidato3 = "Pedro de Lara",
			nomeGanhador = ""
			
		logico 
			opcaoInvalida = falso
			
		// Laço responsável pela votação
		faca {
			
			limpa()
			
			se (opcaoInvalida) {
				escreva("** Opção inválida! \n\n")
				opcaoInvalida = falso
			}
			
			escreva("** Opções de voto: \n\n")
			escreva("1 | ", nomeCandidato1, "\n")
			escreva("2 | ", nomeCandidato2, "\n")
			escreva("3 | ", nomeCandidato3, "\n")
			escreva("5 | Voto em branco \n")
			escreva("8 | Voto nulo \n")
			escreva("0 | Encerrar a votação \n\n")
	
			escreva("Digite agora o código do seu voto: ")
			leia(codigoVoto)
	
			escolha(codigoVoto) {
				caso 0:
					pare
				caso 1:
					votosCandidato1++
					votosTotais++
					pare
				caso 2:
					votosCandidato2++
					votosTotais++
					pare
				caso 3:
					votosCandidato3++
					votosTotais++
					pare
				caso 5:
					votosBranco++
					votosTotais++
					pare
				caso 8:
					votosNulo++
					votosTotais++
					pare
				caso contrario:
					opcaoInvalida = verdadeiro
			}
		} enquanto (codigoVoto != 0)

		
		// determinar o ganhador, sem situação de empate
		se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato1
			votosTotaisGanhador = votosCandidato1 + votosBranco
		} 
		
		se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato2
			votosTotaisGanhador = votosCandidato2 + votosBranco
		} 
		
		se (votosCandidato3 > votosCandidato1 e votosCandidato3 > votosCandidato2) {
			
			nomeGanhador = nomeCandidato3
			votosTotaisGanhador = votosCandidato3 + votosBranco
		} 
		
		
		limpa()
		escreva("** Resultado da apuração desta urna\n\n")
		
		// Esta condição evita a divisão por 0 caso a votação seja encerrada sem nenhum voto
		se (votosTotais != 0) {
			
			percentualGanhador = (tp.inteiro_para_real(votosTotaisGanhador) / tp.inteiro_para_real(votosTotais)) * 100.0
		
			escreva("Votos totais: ", votosTotais, "\n")
			
			escreva("Votos no candidato ",nomeCandidato1, ": ", votosCandidato1, " (", 
				tp.inteiro_para_real(votosCandidato1) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato2, ": ", votosCandidato2, " (", 
				tp.inteiro_para_real(votosCandidato2) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato3, ": ", votosCandidato3, " (", 
				tp.inteiro_para_real(votosCandidato3) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos em branco: ", votosBranco, " (", 
				tp.inteiro_para_real(votosBranco) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos nulos: ", votosNulo, " (", 
				tp.inteiro_para_real(votosNulo) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n\n")
				
		} senao {
			
			escreva("** Nenhum voto registrado\n")
			
		}

		
		escreva("** Ganhador nesta urna\n\n")
		escreva(nomeGanhador, " com ", votosTotaisGanhador, " votos (", 
			percentualGanhador, "%) somados os votos em branco\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2588; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
