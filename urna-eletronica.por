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
 * armazenar a opção de voto em uma variável. Se o usuário escolher uma das 
 * opções de candidato, o programa deve incrementar o contador de votos do 
 * respectivo candidato. Se o usuário escolher a opção voto em branco, o 
 * programa deve incrementar o contador de votos em branco. Se o usuário 
 * escolher a opção voto nulo, o programa deve incrementar o contador de 
 * votos nulos. Se o usuário escolher a opção encerrar a votação, o programa 
 * deve sair do loop e exibir o resultado final da votação (quantidade e  
 * percentual de votos de cada candidato, votos em branco, votos nulos e 
 * candidato ganhador, com o seu total de votos e percentual acrescidos os 
 * votos em branco).
 *   
 * O programa deve continuar a permitir a votação até que o usuário escolha 
 * a opção para encerrar a votação.
 * 
 * Desafios extras:
 * 
 * 1. Complemente o código da urna eletrônica para que seja possível definir 
 * os nomes dos candidatos pela interface do usuário, utilizando leia(), da
 * mesma forma que uma urna eletrônica é configurada antes do início do turno 
 * de eleição;
 * 
 * 2. Crie um passo extra de confirmação para que seja preciso digitar s/n
 * para encerrar a votação da urna;
 * 
 * 3. Pense em uma maneira para que seja necessário digitar um pin (senha) de
 * 6 dígitos para encerrar a votação da urna, ao invés de apenas digitar "0".
 * Retire da apresentação das opções de voto a opção "0 -> Encerrar a votação";
 * 
 * 4. Utilize arredondamento para exibir os percentuais de votos com no máximo
 * duas casas decimais;
 * 
*/

programa 
{
	funcao inicio() 
	{
		inteiro 
			codigoVoto, 
			votosCandidato1 = 0, 
			votosCandidato2 = 0, 
			votosCandidato3 = 0,
			votosBrancos = 0, 
			votosNulos = 0
		
		real 
			percentualVotosCandidato1 = 0.0, 
			percentualVotosCandidato2 = 0.0,
			percentualVotosCandidato3 = 0.0,
			percentualVotosBrancos = 0.0,
			percentualVotosNulos = 0.0
		
		cadeia
			nomeCandidato1,
			nomeCandidato2,
			nomeCandidato3

		caracter 
			opcaoFim,
			opcaoInicio = 'L'
			
		logico 
			opcaoInvalida = falso,
			iniciaVotacao = falso
			

		// Configuração da Urna
		faca {

			limpa()
			
			se (opcaoInvalida) {
				escreva("** Opção inválida! **\n\n")
			}
			
			escreva("** Configuração da Urna Eletrônica **\n\n")
			
			escreva("Digite o nome do candidato 1: ")
			leia(nomeCandidato1)
			
			escreva("Digite o nome do candidato 2: ")
			leia(nomeCandidato2)
			
			escreva("Digite o nome do candidato 3: ")
			leia(nomeCandidato3)

			limpa()
			escreva("Candidatos configurados:\n\n")
			escreva("1 | ", nomeCandidato1, "\n")
			escreva("2 | ", nomeCandidato2, "\n")
			escreva("3 | ", nomeCandidato3, "\n\n")

			escreva("** LIBERAÇÃO DA URNA **\n\n")
			escreva("L | Liberar urna para votação\n")
			escreva("C | Configurar novamente\n\n")
			
			escreva("Digite a opção desejada: ")
			leia(opcaoInicio)

			se (opcaoInicio == 'L' ou opcaoInicio == 'l') {
				iniciaVotacao = verdadeiro
			} senao se (opcaoInicio != 'C' e opcaoInicio != 'c') {
				opcaoInvalida = verdadeiro
			}
			
			
		} enquanto (nao iniciaVotacao)
			
		// Votação
		faca {
			
			limpa()
			
			se (opcaoInvalida) {
				escreva("** Opção inválida! **\n\n")
			}
			
			escreva("Opções de voto:\n\n")
			escreva("1 | ", nomeCandidato1, "\n")
			escreva("2 | ", nomeCandidato2, "\n")
			escreva("3 | ", nomeCandidato3, "\n")
			escreva("6 | Voto em branco \n")
			escreva("9 | Voto nulo \n")
			escreva("0 | Encerrar a votação \n\n")
	
			escreva("Digite agora o código do seu voto: ")
			leia(codigoVoto)
	
			escolha(codigoVoto) {
				caso 0:
					limpa()
					escreva("Deseja realmente encerrar a votação? s/n\n")
					leia(opcaoFim)

					se (opcaoFim == 'n' ou opcaoFim == 'N') {
						codigoVoto = -1
					}
					pare
				caso 1:
					votosCandidato1++
					opcaoInvalida = falso
					pare
				caso 2:
					votosCandidato2++
					opcaoInvalida = falso
					pare
				caso 3:
					votosCandidato3++
					opcaoInvalida = falso
					pare
				caso 6:
					votosBrancos++
					opcaoInvalida = falso
					pare
				caso 9:
					votosNulos++
					opcaoInvalida = falso
					pare
				caso contrario:
					opcaoInvalida = verdadeiro
			}
		} enquanto (codigoVoto != 0)

		limpa()
		escreva("** Resultado da apuração desta urna **\n\n")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */