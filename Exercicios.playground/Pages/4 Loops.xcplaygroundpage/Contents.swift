import UIKit
/*:
 # Lista 4: Loops (laços de repetição)
 ### 1. Sequência 1, 2, 3, PIM [🐝]
 Faça uma função que imprima os números entre 1 e 40, porém no lugar dos números múltiplos de 4 apareça a palavra PIM. Por exemplo: 1, 2, 3, PIM, 5, 6, 7, PIM e assim por diante. Resolva usando ```for```.
 */
// código aqui

/*:
 ### 2. Imprimir 100 números [🐝]
 Imprima todos os números de 0 até 100 (não incluso).
 */
 // código aqui

/*:
 ### 3. Imprimir 101 números [🐝]
 Imprima todos os números de 0 a 100, inclusive.
 */
 // código aqui

/*:
 ### 4. Intervalo entre dois números [🐝]
 Faça uma função que receba dois números inteiros e print todos os números inteiros que estão no intervalo compreendido por eles.
 */
 // código aqui

/*:
 ### 5. Pares entre 1 e 50 [🐝]
 Imprima todos os números pares entre 1 e 50 (inclusive).
 */
 // código aqui

/*:
 ### 6. Progressão Aritmética [🐝]
 Escreva uma função que receba um valor inicial A e uma razão R e imprima uma seqüência em P.A. contendo 10 valores.
 *Por exemplo: ```A = 100, R = 7```*
 *Imprime: ```100, 107, 114, 121, 128, 135, 142, 149, 156, 163```*
 */
 // código aqui

/*:
 ### 7. Soma dos números menores que N [🐝]
 Escreva um programa que encontre o somatório de todos os números de 1 até N. O número N vai ser sempre um inteiro maior que zero.
 */
 // código aqui

/*:
 ### 8. Tabuada [🐝]
 Faça uma função que receba um número e imprima no console a tabuada de 1 a 10 no número recebido.
 */
 // código aqui

/*:
 ### 9. While menor que 50 [🐝]
 Imprima os números de 1 a 50 usando a estrutura "while"
 */
 // código aqui

/*:
 ### 10. Caculadora de investimento [🐝🐝]
 Escreva uma função para calcular o rendimento de um investimento com base nos seguintes dados de entrada. Valor inicial, valor a ser depositado todos os meses, quantidade de meses e taxa de rendimento mensal.
 */
 // código aqui

/*:
 ### 11. Crescimento populacional [🐝🐝]
 Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de crescimento de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5%. Faça um programa que calcule e escreva o número de anos necessários para que a população do país A ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento.
 */
 // código aqui

/*:
 ### 12. Escada de # [🐝🐝]
 Escreva uma função para desenhar no console uma escada de # dada a quantidade de degraus
 * Callout(Exemplo: cinco degraus):
 
    \#
 
    \##
 
    \###
 
    \####
 
    \#####
 */
 // código aqui

/*:
 ### 13. Média (com while) [🐝🐝]
 Escreva, usando while, um programa para calcular a média de N números. O valor de N é dado pelo usuário.
 Para simular os números digitados pelo usuário, use o retorno da função:

```func getNumberFromUser() -> Int {```

   ```return Int.random(in: 1...10)```
 
```}```
 */
 // código aqui

/*:
 ### 14. Pirâmide de Sinuca [🐝🐝]
 Lembra da pirâmide ou triângulo feito com as bolas de bilhar que preparamos ao começar uma partida de sinuca? Para construir um triângulo clássico (de 5 níveis) você precisa de 15 bolas. Com 3 bolas, você pode construir um triangulo de 2 níveis, etc.

 Por exemplo,
 - ```pyramid(1) == 1```

 - ```pyramid(3) == 2```

 - ```pyramid(6) == 3```

 - ```pyramid(10) == 4```

 - ```pyramid(15) == 5```

 Escreva uma função que pega o numero de bolas (≥1) e calcula o máximo de níveis que é possível construir a pirâmide, como no exemplo acima.
 */
 // código aqui

/*:
 ### 15. Soma ímpares múltiplos de 3 [🐝🐝]
 Faça uma função que retorne a soma de todos os números ímpares que são múltiplos de três e que se encontram no conjunto dos números entre 1 e 500.
 */
 // código aqui

/*:
 ### 16. Alerte as ovelhas [🐝🐝🐝]
 Lobos foram reintroduzidos na Grã-Bretanha. Você pastoreia ovelhas e agora está sofrendo com lobos tentando se disfarçar de ovelha. Por sorte, você é excelente em perceber os lobos disfarçados.

 Avise a ovelha imediatamente na frente do lobo que ela está a beira de ser devorada pelo lobo. Lembre que você está na frente da fila, que fica no final do array / lista. Abaixo um esquema da fila, com um exemplo numerado e visual das posições das ovelhas.
 
 ![Tabela 1](L4_E16.png)

 
 Se o lobo for o animal mais próximo de você, retorne ```"Por favor, vá embora e pare de comer minhas ovelhas"```. Caso contrário, retorne ```"Hey! Ovelha número N! Você vai ser devorada pelo lobo!"``` onde N é a posição da ovelha exatamente na frente do lobo.

 **Nota:** sempre terá apenas um lobo na fila.

 ### **Exemplos**

 *Input: ```["sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]```*
 *Output: ```"Hey! Ovelha número 2! Você vai ser devorada pelo lobo!"```*

 *Input:```["sheep", "sheep", "wolf"]```*
 *Output:```"Por favor, vá embora e pare de comer minhas ovelhas"```*
 */
 // código aqui

/*:
 ### 17. Número Perfeito [🐝🐝🐝]
 Um número se diz perfeito se é igual à soma de seus divisores próprios. Divisores próprios de um número positivo N são todos os divisores inteiros positivos de N exceto o próprio N. Por exemplo, o número 6, seus divisores próprios são 1, 2 e 3, cuja soma é igual à 6.

 Faça uma função que receba um número e retorne true caso o número seja perfeito e false caso não seja.
 */
 // código aqui

/*:
 ### 18. Número Perfeito 2 [🐝🐝🐝]
 Agora que você já tem uma função que verifica se um número é perfeito (ver exercícios anterior), faça uma função que exibe todos os números perfeitos existentes entre 1 e 500.
 */
 // código aqui

/*:
 ### 19. É primo? [🐝🐝🐝]
 Implemente uma função que receba um número e retorne se é primo ou não.

*Nota: 0, 1 e números negativos não são primos.*
 */
 // código aqui

/*:
 ### 20. O Próximo Doubleton [🐝🐝🐝🤯]
 Nós vamos chamar um número natural de "número doubleton" se ele contém exatamente 2 digitos distintos. Por exemplo, 23, 35, 100, 12121 são números doubleton, e 123 e 9980 não são.

 Para qualquer número natural n (entre 1 a 1.000.000), você precisa encontrar o próximo número doubleton. Se n é um doubleton, retorne o próximo número doubleton maior que n.
 */
 // código aqui
