/* 
 *  Exemplo de ordenação de três variáveis inteiras,
 *  com a possibilidade de empate da maior, para
 *  utilização em situações em que um ganhador tem
 *  que ser definido, como em uma eleição.
 *  
 *  Autor: João Roccella
 *  
*/

programa
{
	
	funcao inicio()
	{
		inteiro 
			a = 41,
			b = 41,
			c = 40

		se (a > b e a > c) {
			limpa()
			escreva("A ganhou")
		} senao 
		se (b > a e b > c) {
			limpa()
			escreva("B ganhou")
		} senao
		se (c > a e c > b) {
			limpa()
			escreva("C ganhou")
		} senao {
			limpa()
			escreva("Empate, não é possível definir um ganhador")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 590; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */