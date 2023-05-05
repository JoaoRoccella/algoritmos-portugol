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
 * 5. Caso seja digitada uma opção inválida de voto, o programa deve informar
 * que a opção é inválida e apresentar novamente as opções válidas de voto, sem
 * contabilizar o voto inválido;
 * 
 * 6. Crie um passo extra de confirmação para que o analista responsável pela 
 * configuração da urna escolha liberá-la para votação ou corrigir o nome de
 * algum candidato (o programa deve exibir, portanto, os nomes dos candidatos
 * cadastrados para conferência antes dessa opção de liberar ou digitar 
 * novamente);
 * 
*/

programa 
{
	funcao inicio() 
	{
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */