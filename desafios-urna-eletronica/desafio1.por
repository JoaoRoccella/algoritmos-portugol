/*
 * Simulação de uma urna eletrônica
 * Autor: João Roccella
 * Conceitos: fluxograma, variáveis, leia, escreva, limpa, escolha-caso,
 * faca-enquanto, se, inicialização, operadores lógicos, precedência
 * 
 * Crie um programa que simule o funcionamento de uma urna eletrônica 
 * (utilizando uma estrutura de repetição para permitir múltiplas votações). 
 * 
 * O programa deve apresentar as seguintes opções de voto (utilizando a 
 * estrutura escolha-caso):
 *   
 * 1 -> Candidato 1
 * 2 -> Candidato 2
 * 3 -> Candidato 3
 * 5 -> Voto em branco
 * 8 -> Voto nulo
 * 0 -> Encerrar a votação
 *   
 * O programa deve solicitar ao usuário que digite o número do seu voto e 
 * armazenar a opção de voto em uma variável. 
 * 
 * Se o usuário escolher uma das opções de candidato, o programa deve 
 * incrementar o contador de votos do respectivo candidato. 
 * 
 * Se o usuário escolher a opção voto em branco, o programa deve incrementar 
 * o contador de votos em branco. 
 * 
 * Se o usuário escolher a opção voto nulo, o programa deve incrementar o 
 * contador de votos nulos. 
 * 
 * Se o usuário escolher a opção encerrar a votação, o programa deve sair 
 * do loop e exibir o resultado final da votação (quantidade e percentual de
 * votos de cada candidato, votos em branco, votos nulos e candidato ganhador,
 * com o seu total de votos e percentual acrescidos os votos em branco).
 *   
 * O programa deve continuar a permitir a votação até que o usuário escolha 
 * a opção para encerrar a votação.
 * 
*/

programa
{
	inclua biblioteca Tipos --> tp //não é obrigatório para o desafio
	
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

		
		// determinar o ganhador
		se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato1
			votosTotaisGanhador = votosCandidato1 + votosBranco
		} senao 
		se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
			
			nomeGanhador = nomeCandidato2
			votosTotaisGanhador = votosCandidato2 + votosBranco
		} senao
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
 * @POSICAO-CURSOR = 1598; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */