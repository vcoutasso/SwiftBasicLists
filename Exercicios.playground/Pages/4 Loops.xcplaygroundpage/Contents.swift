import UIKit

let DEBUG = 1
/*:
 # Lista 4: Loops (laços de repetição)
 ### 1. Sequência 1, 2, 3, PIM [🐝]
 Faça uma função que imprima os números entre 1 e 40, porém no lugar dos números múltiplos de 4 apareça a palavra PIM. Por exemplo: 1, 2, 3, PIM, 5, 6, 7, PIM e assim por diante. Resolva usando ```for```.
 */
func pim() {
    for i in 1...40 { print(i % 4 == 0 ? "PIM" : "\(i)", terminator: " ") }
    print()
}

if DEBUG == 1 { pim() }
/*:
 ### 2. Imprimir 100 números [🐝]
 Imprima todos os números de 0 até 100 (não incluso).
 */
func print100() {
    for i in 0..<100 { print(i, terminator: " ") }
    print()
}

if DEBUG == 1 { print100() }
/*:
 ### 3. Imprimir 101 números [🐝]
 Imprima todos os números de 0 a 100, inclusive.
 */
func print101() {
    for i in 0...100 { print(i, terminator: " ") }
    print()
}

if DEBUG == 1 { print101() }
/*:
 ### 4. Intervalo entre dois números [🐝]
 Faça uma função que receba dois números inteiros e print todos os números inteiros que estão no intervalo compreendido por eles.
 */
func interval(a: Int, b: Int) {
    for i in min(a, b)...max(a, b) { print(i, terminator: " ") }
    print()
}

if DEBUG == 1 { interval(a: 21, b: 11) }
/*:
 ### 5. Pares entre 1 e 50 [🐝]
 Imprima todos os números pares entre 1 e 50 (inclusive).
 */
func even50() {
    for i in 1...50 { print(i % 2 == 0 ? "\(i) " : "", terminator: "") }
    print()
}

if DEBUG == 1 { even50() }
/*:
 ### 6. Progressão Aritmética [🐝]
 Escreva uma função que receba um valor inicial A e uma razão R e imprima uma seqüência em P.A. contendo 10 valores.
 *Por exemplo: ```A = 100, R = 7```*
 *Imprime: ```100, 107, 114, 121, 128, 135, 142, 149, 156, 163```*
 */
func pa(a: Int, r: Int) {
    for i in 0..<10 { print(a + i * r, terminator: " ") }
    print()
}

if DEBUG == 1 { pa(a: 100, r: 7) }
/*:
 ### 7. Soma dos números menores que N [🐝]
 Escreva um programa que encontre o somatório de todos os números de 1 até N. O número N vai ser sempre um inteiro maior que zero.
 */
func sum(n: Int) {
    print((1...n).reduce(0, +))
    // let result = (n * (n + 1)) / 2
}

if DEBUG == 1 { sum(n: 10) }
/*:
 ### 8. Tabuada [🐝]
 Faça uma função que receba um número e imprima no console a tabuada de 1 a 10 no número recebido.
 */
func tabuada(n: Int) {
    for i in 1...10 { print(n * i, terminator: " ") }
    print()
}

if DEBUG == 1 { tabuada(n: 13) }
/*:
 ### 9. While menor que 50 [🐝]
 Imprima os números de 1 a 50 usando a estrutura "while"
 */
func while50() {
    var x = 1
    while x <= 50 {
        print(x, terminator: " ")
        x += 1
    }
    print()
}

if DEBUG == 1 { while50() }
/*:
 ### 10. Caculadora de investimento [🐝🐝]
 Escreva uma função para calcular o rendimento de um investimento com base nos seguintes dados de entrada. Valor inicial, valor a ser depositado todos os meses, quantidade de meses e taxa de rendimento mensal.
 */
func calc(vi: Double, dep: Double, m: Int, tx: Double) {
    var mnt = vi
    for _ in 1...m {
        mnt += mnt * tx
        mnt += dep
    }
    print("Montante:", mnt)
}

if DEBUG == 1 { calc(vi: 1000, dep: 200, m: 12, tx: 0.003) }
/*:
 ### 11. Crescimento populacional [🐝🐝]
 Supondo que a população de um país A seja da ordem de 80000 habitantes com uma taxa anual de crescimento de 3% e que a população de B seja 200000 habitantes com uma taxa de crescimento de 1.5%. Faça um programa que calcule e escreva o número de anos necessários para que a população do país A ultrapasse ou iguale a população do país B, mantidas as taxas de crescimento.
 */
func crescimento() {
    var popA = 80000.0
    var popB = 200000.0
    
    let txA = 0.03
    let txB = 0.015
    
    var year = 0
    
    while popA < popB {
        year += 1
        popA += popA * txA
        popB += popB * txB
    }
    
    print("Anos:", year)
}

if DEBUG == 1 { crescimento() }
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
func ladder(height: Int) {
    for i in 1...height { print(String(repeating: "#", count: i)) }
}

if DEBUG == 1 { ladder(height: 5) }
/*:
 ### 13. Média (com while) [🐝🐝]
 Escreva, usando while, um programa para calcular a média de N números. O valor de N é dado pelo usuário.
 Para simular os números digitados pelo usuário, use o retorno da função:

```func getNumberFromUser() -> Int {```

   ```return Int.random(in: 1...10)```
 
```}```
 */
func getNumberFromUser() -> Int { return Int.random(in: 1...10) }

func media(n: Int) {
    var media = 0
    for _ in 1...n { media += getNumberFromUser() }
    print(Double(media) / Double(n))
}

if DEBUG == 1 { media(n: 10) }
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
func pyramid(n: Int) {
    var nivel = 0
    var bolas = 0
    
    while bolas < n {
        nivel += 1
        bolas += nivel
    }
    
    print(nivel)
}

if DEBUG == 1 { pyramid(n: 10) }
/*:
 ### 15. Soma ímpares múltiplos de 3 [🐝🐝]
 Faça uma função que retorne a soma de todos os números ímpares que são múltiplos de três e que se encontram no conjunto dos números entre 1 e 500.
 */
func somaImpar3() {
    print(stride(from: 0, to: 500, by: 3).filter({ $0 % 2 == 1 }).reduce(0, +))
}

if DEBUG == 1 { somaImpar3() }
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
func lobo(fila: [String]) {
    let idx = fila.firstIndex(of: "wolf")!
    print(idx == fila.count - 1 ? "Por favor, vá embora e pare de comer minhas ovelhas" : "Hey! Ovelha número \(fila.count - idx - 1)! Você vai ser devorada pelo lobo!")
}

if DEBUG == 1 { lobo(fila: ["sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]); lobo(fila: ["sheep", "sheep", "wolf"] ) }
/*:
 ### 17. Número Perfeito [🐝🐝🐝]
 Um número se diz perfeito se é igual à soma de seus divisores próprios. Divisores próprios de um número positivo N são todos os divisores inteiros positivos de N exceto o próprio N. Por exemplo, o número 6, seus divisores próprios são 1, 2 e 3, cuja soma é igual à 6.

 Faça uma função que receba um número e retorne true caso o número seja perfeito e false caso não seja.
 */
func perfectNumber(n: Int) -> Bool {
    var sum = 0
    for i in 1..<n {
        sum += n % i == 0 ? i : 0
        if sum > n { return false }
    }
    return sum == n
}

if DEBUG == 1 { print(perfectNumber(n: 6)) }
/*:
 ### 18. Número Perfeito 2 [🐝🐝🐝]
 Agora que você já tem uma função que verifica se um número é perfeito (ver exercícios anterior), faça uma função que exibe todos os números perfeitos existentes entre 1 e 500.
 */
func perfectTo500() {
    for i in 1...500 {
        if perfectNumber(n: i) { print(i, terminator: " ") }
    }
    print()
}

if DEBUG == 1 { perfectTo500() }
/*:
 ### 19. É primo? [🐝🐝🐝]
 Implemente uma função que receba um número e retorne se é primo ou não.

*Nota: 0, 1 e números negativos não são primos.*
 */
func isPrime(n: Int) -> Bool {
    if n <= 1 { return false }
    
    for i in 2..<n {
        if n % i == 0 { return false }
    }
    
    return true
}

if DEBUG == 1 { print(isPrime(n: 6)) }
/*:
 ### 20. O Próximo Doubleton [🐝🐝🐝🤯]
 Nós vamos chamar um número natural de "número doubleton" se ele contém exatamente 2 digitos distintos. Por exemplo, 23, 35, 100, 12121 são números doubleton, e 123 e 9980 não são.

 Para qualquer número natural n (entre 1 a 1.000.000), você precisa encontrar o próximo número doubleton. Se n é um doubleton, retorne o próximo número doubleton maior que n.
 */
func isDoubleton(n: Int) -> Bool {
    var set: Set<Character> = []
    
    for ch in String(n) {
        set.insert(ch)
    }
    
    return set.count == 2
}

func nextDoubleton(n: Int) {
    for i in n+1...1000000 {
        if isDoubleton(n: i) {
            print(i, "é doubleton!")
            break
        }
    }
}

if DEBUG == 1 { nextDoubleton(n: 122) }
