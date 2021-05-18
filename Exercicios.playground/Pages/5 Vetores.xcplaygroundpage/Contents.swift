import UIKit
/*:
 # Lista 5: Vetores (Arrays / Listas)
 ### 1. Contando as vogais [🐝]
 Faça uma função que receba uma lista de caracteres e diga quantas vogais existem nessa lista. A função deve imprimir no console todas as vogais e retornar a quantidade.
 */
func vowelCount(string: String) -> Int {
    let vowels = string.lowercased().filter { "aeiou".contains($0) }
    print(vowels)
    return vowels.count
}

print(vowelCount(string: "Uma string qualquer com algumas vogais"), "vogais")
/*:
 ### 2. Conte os saguis [🐝]
 Joana levou seu irmãozinho para um passeio na floresta para ver os saguis. Joana sabe que existe um certo número de saguis lá (n) mas seu irmãozinho é muito novo e, para apreciar o número inteiro, ele tem que começar a contar de 1.

 Como uma boa irmã, Joana vai sentar e contar com ele. Dado um número (n), crie uma função que popule e retorne um array com todos os números até n e incluindo n, mas excluindo zero.
 */
func marmosetCount(n: Int) -> [Int] {
    Array(1...n)
}

print(marmosetCount(n: 10))
/*:
 ### 3. Primeiro item  [🐝]
    Dada uma lista de inteiros, imprima o primeiro elemento.
 */
func firstItem(list: [Int]) -> Int {
    list.count > 0 ? list.first! : -1
}

print(firstItem(list: Array(1...3)))
/*:
 ### 4. Soma de listas [🐝]
 Dadas duas listas de tamanho igual, retorne uma nova lista com a soma índice por índice das outras duas listas
 */
func sumArrays(a: [Int], b: [Int]) -> [Int] {
    a.count == b.count ? zip(a, b).map { $0 + $1 } : []
}

print(sumArrays(a: Array(1...10), b: Array(11...20)))
/*:
 ### 5. Soma de Todos os Números [🐝]
 Escreva um programa que soma todos os números de uma lista de inteiros.
 */
func sumItems(arr: [Int]) -> Int {
    arr.reduce(0, +)
}

print(sumItems(arr: Array(1...10)))
/*:
 ### 6. Soma de Três Números [🐝]
 Escreva um programa que soma os três primeiros números de uma lista de inteiros. Assuma que a lista sempre terá tamanho maior ou igual a três
 */
func sumFirstThree(arr: [Int]) -> Int {
    arr.enumerated().map { idx, val in idx < 3 ? val : 0 }.reduce(0, +)
}

print(sumFirstThree(arr: []))
/*:
 ### 7. Soma, multiplicação e média [🐝]
 Faça uma função que receba uma lista de números inteiros, mostre a soma, a multiplicação e a média dos números.
 */
func sumProdAvg(arr: [Int]) {
    let sum = arr.reduce(0, +), prod = arr.reduce(1, *), avg = Double(sum) / Double(arr.count)
    print("Soma:", sum, "\tProduto:", prod, "\tMédia:", avg)
}

sumProdAvg(arr: Array(1...10))
/*:
 ### 8. Tem 0 no começo ou no final? [🐝]
 Dada uma lista de inteiros, retorne se o primeiro ou o último elemento é 0. Assuma que a lista sempre vai ter tamanho > 0.
 */
func startsOrEndsWithZero(arr: [Int]) -> Bool {
    arr.count > 0 ? arr.first! == 0 || arr.last! == 0 : false
}

print(startsOrEndsWithZero(arr: [0, 1, 2]))
/*:
 ### 9. Último item [🐝]
 Dada uma lista de inteiros, imprima o último elemento.
 */
func lastItem(list: [Int]) -> Int {
    list.count > 0 ? list.last! : -1
}

print(lastItem(list: Array(1...3)))
/*:
 ### 10. Acima da média 1 [🐝🐝]
 Faça uma função que receba uma lista com as notas finais de um grupo de estudantes. A função deve imprimir a média de notas da classe e quantos alunos possuem nota final superior à média do grupo.
 */
func aboveAvg(grades: [Double]) {
    let avg = grades.reduce(0, +) / Double(grades.count)
    print("Média:", avg, "Acima da média:", grades.filter { $0 > avg }.count)
}

aboveAvg(grades: [8.7, 9.3, 3.6, 6.2, 7.7, 10, 4.4, 0, 2.1, 0.8, 5.8, 7.0])
/*:
 ### 11. Mais Verdadeiros Ou Falsos? [🐝🐝]
 Dada uma lista do tipo `Bool` retorne se ela tem mais elementos verdadeiros ou falsos.
 Caso a lista esteja vazia ou o número de verdadeiros seja igual ao de falsos, retorne `true`
 */
func moreTrueThanFalse(arr: [Bool]) -> Bool {
    arr.filter { $0 == true }.count > arr.count / 2 ? true : false
}

print(moreTrueThanFalse(arr: [true, true, true, false]))
/*:
 ### 12. Palíndromo [🐝🐝]
 Faça uma função que verifica se uma String é um palíndromo ou não
 */
func isPalindrome(string: String) -> Bool {
    String(string.replacingOccurrences(of: " ", with: "").reversed()).lowercased() == string.replacingOccurrences(of: " ", with: "").lowercased()
}

print(isPalindrome(string: "socorram me subi no onibus em marrocos"))
/*:
 ###  13. Separando pares e ímpares [🐝🐝]
 Faça uma função que receba uma lista de números inteiros. A função deve armazenar os números pares dessa lista em uma segunda lista e os números ímpares em uma terceira lista. A função deve imprimir os valores das três listas.
 */
func evenOdd(arr: [Int]) {
    print(arr.filter { $0 % 2 == 0 }, arr.filter { $0 % 2 == 1 }, arr)
}

evenOdd(arr:Array(1...10))
/*:
 ### 14. Soma até X [🐝🐝]
 Dadas uma lista e um valor inteiro limite, diga quantos números da lista são necessários somar para que se chegue no valor limite.

 Caso a soma de todos os elementos da lista seja menor do que o valor limite, retorne nulo.
 */
func sumToX(arr: [Int], x: Int) -> Int? {
    var acc = 0
    for (idx, item) in arr.sorted().reversed().enumerated() {
        acc += item
        if acc >= x { return idx + 1 }
    }
    return nil
}

print(sumToX(arr: Array(1...10), x: 20) as Any)
/*:
 ### 15. Substitua todos os números [🐝🐝]
 Crie uma função chamada ReplaceAll que substitua todas as ocorrências de um número em uma lista, trocando-o por outro número. A função terá o seguinte formato:

 ````
 func replaceAll(array: [Int], antigo: Int, novo: Int) -> [Int] {
 ...
 }
 ````

 *Sugestão bônus para programadores avançados*

 É possível deixar essa função genérica, para receber qualquer tipo de dado. Que tal  dar uma investigada em como transformar essa função em uma função genérica? Depois, pode olhar também como foi resolvido no CodeWars.
 */
func replaceAll<T: Comparable>(array: [T], old: T, new: T) -> [T] {
    array.map { $0 == old ? new : $0 }
}

print(replaceAll(array: [1, 2, 3, 1, 2, 3, 3, 2, 1], old: 3, new: -1))
/*:
 ###  16. Tem menor? [🐝🐝]
 Dado uma lista de números e um elemento mínimo, retorne se a lista possuí um elemento menor que o mínimo recebido.
 */
func hasLesser(arr: [Int], than: Int) -> Bool {
    arr.count > 0 ? than < arr.min()! : false
}

print(hasLesser(arr: Array(1...10), than: 0))
/*:
 ### 17. Acima da média 2 [🐝🐝🐝]
 Modifique o exercício `Acima da Média 1` para que a função receba também uma segunda lista com o nome dos alunos. Agora a função deve mostrar, ao invés da quantidade, o nome dos alunos que possuem nota final superior à média.
 */
func aboveAvg2(grades: [Double], names: [String]) {
    if grades.count == names.count {
        let avg = grades.reduce(0, +) / Double(grades.count)
        print("Média:", avg, "Acima da média:", grades.filter { $0 > avg }.count)
        print("Alunos acima da média:")
        print(names.enumerated().filter { idx, name in grades[idx] > avg }.map { $1 })
    }
}

aboveAvg2(grades: [8.7, 9.3, 3.6, 6.2, 7.7, 10, 4.4, 0, 2.1, 0.8, 5.8, 7.0], names: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"])
/*:
 ### 18. Soma da Matriz [🐝🐝🐝]
 Faça uma função que receba uma matriz de inteiros e some todos os elementos dessa matriz (lista de listas)!
 
 */
func sumMatrix(matrix: [[Int]]) -> Int {
    matrix.map { $0.reduce(0, +) }.reduce(0, +)
}

print(sumMatrix(matrix: [[1, 2, 3], [3, 2, 1], [4, 5, 6]]))
/*:
 ### 19. Linha dos Triângulos Ímpares [🐝🐝🐝🤯]
 Dado um triângulo de números impares consecutivos, como por exemplo:
 ````
             1
          3     5
        7     9    11
    13    15    17    19
21    23    25    27    29
 ...
 ````
 Faça uma função que calcule a soma dos números de uma linha n desse triângulo (a primeira linha começa com o index 1) e.g.:

 ````
 rowSumOddNumbers(1) // 1
 rowSumOddNumbers(2) // 3 + 5 = 8
 ````

 ***Dica:*** pesquise sobre números triangulares.
*/
func triangles(n: Int) -> Int {
    let lastNumber: Int = Int(pow(Double(n), 2) + Double(n) - 1.0)
    let firstNumber: Int = Int(pow(Double(n - 1), 2) + Double(n - 1) - 1.0) + 2

    return stride(from: firstNumber, through: lastNumber, by: 2).reduce(0, +)
}

print(triangles(n: 0))
/*:
 ### 20. Ordenação de Vetor [🐝🐝🐝🤯]
 SEM USAR O  ```sort``` PADRÃO DO SWIFT, escreva uma função para ordenar um vetor de inteiros em ordem crescente.
 */
func selectionSort(arr: [Int]) -> [Int] {
    var sortedArray = arr
    
    for i in 0..<sortedArray.count-1 {
        var min = i
        
        for j in i+1..<sortedArray.count {
            if sortedArray[j] < sortedArray[min] {
                min = j
            }
        }
        
        sortedArray.swapAt(min, i)
    }
    
    return sortedArray
}

print(selectionSort(arr: Array(1...10).shuffled()))
