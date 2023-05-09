# Simulação de uma urna eletrônica

#### Autor: [João Roccella](https://github.com/JoaoRoccella)

#### Conceitos: fluxograma, variáveis, leia, escreva, limpa, escolha-caso, faca-enquanto, se/senao-se/senao, inicialização, operadores lógicos, precedência

## Enunciado (desafio 0):

Crie um programa que simule o funcionamento de uma urna eletrônica, utilizando uma estrutura de repetição para permitir múltiplas votações. 

**Dica:** Considere fortemente usar a estrutura **faca-enquanto**, já que o código precisará ser executado pelo menos uma vez antes de ser verificado se haverá uma nova repetição. 

1. O programa deve apresentar as seguintes opções de voto (utilizando uma estrutura escolha-caso):

```
| 1 | Candidato 1
| 2 | Candidato 2
| 3 | Candidato 3
| 5 | Voto em branco
| 8 | Voto nulo
| 0 | Encerrar a votação
```
  
2. O programa deve solicitar ao usuário que digite o número do seu voto e armazenar a opção de voto em uma variável. 

3. Se o usuário escolher uma das opções de candidato, o programa deve incrementar o contador de votos do respectivo candidato. 

4. Se o usuário escolher a opção voto em branco, o programa deve incrementar o contador de votos em branco. 

5. Se o usuário escolher a opção voto nulo, o programa deve incrementar o contador de votos nulos. 

6. Se o usuário escolher a opção encerrar a votação, o programa deve sair do laço e exibir o resultado final da votação: quantidade e percentual de votos de cada candidato, bem como de votos em branco, de votos nulos e candidato ganhador, com o seu total de votos e percentual **acrescidos os votos em branco**).
  
7. O programa deve continuar a permitir a votação até que o usuário escolha a opção para encerrar a votação.

## Desafios extras:

### 1. Configuração dos candidatos
Complemente o código da urna eletrônica para que seja possível definir os nomes dos candidatos pela interface do usuário, utilizando leia(), da mesma forma que uma urna eletrônica é configurada antes do início do turno de eleição;

### 2. Confirmação para encerrar 
Crie um passo extra de confirmação para que seja preciso digitar S ou N para encerrar a votação da urna;

**Dica:** utilize uma estrutura de decisão dentro do caso que trata a opção para encerrar a votação.

### 3. PIN
Pense em uma maneira para que seja necessário digitar um pin (senha) de 6 dígitos para encerrar a votação da urna, ao invés de apenas digitar "0". Retire da **apresentação das opções** de voto a opção para encerrar a votação";

**Dica:** note que já existe um "pin" sendo digitado para encerrar a votação;

### 4. Arredondamento
Utilize arredondamento para exibir os percentuais de votos com no máximo duas casas decimais; 

**Dica:** procure na documentação do Portugol uma biblioteca que possa te ajudar com essa função.

### 5. Opção inválida
Caso seja digitada uma opção inválida de voto, o programa deve informar que a opção é inválida e apresentar novamente as opções válidas de voto, sem contabilizar o voto inválido;

**Dica:** caso o voto não seja nenhuma das opções tratadas, defina uma condição nesse caso para que o laço seja reapresentado sem computar o voto inválido.

### 6. Confirmação para liberação
Crie um passo extra de confirmação para que o analista responsável pela configuração da urna escolha liberá-la para votação ou corrigir o nome de algum candidato (o programa deve exibir, portanto, os nomes dos candidatos cadastrados para conferência antes dessa opção de liberar ou digitar novamente);

**Dica:** você pode utilizar um novo laço faça-enquanto antes da votação para fazer a leitura dos nomes dos candidatos e pedir que o usuário confirme se deseja iniciar a votação ou digitar novamente os nomes dos candidatos.

### 7. Empate
Trate a situação de empate, em que não é apresentado um ganhador no resultado da votação na urna;

**Dica:** note que o caso de empate é a exceção à regra de haver um ganhador, seja ele qual for.

### 8. Som de confirmação
Adicione o som da urna eletrônica para confirmar cada voto válido;

**Dica:** procure uma biblioteca no portugol que possa te ajudar a executar essa função. Faça o download do audio de confirmação da urna eletrônica brasileira em mp3 neste mesmo repositório;

### 9. Delay
Faça com que o programa aguarde 2 segundos antes de liberar a tela para a próxima votação;

**Dica:** procure uma biblioteca no portugol que possa te ajudar a executar essa função.

### 10. Boletim de urna
Adicione ao boletim de urna (resultado da apuração) a informação de data e hora de início e data e hora de término da votação.

**Dica:** procure uma biblioteca no portugol que possa te ajudar a executar essa função. Procure criar esse código no formato de função, após a função inicio().
