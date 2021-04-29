import UIKit

let DEBUG = 1
/*:
 # Lista 2: Funções
 ### 1. Faça uma função que exiba o quadrado de um número dado. [🐝]
*/
func square(num: Int) {
    print(" ---\n| \(num) |\n ---")
}

if DEBUG == 1 { square(num: 5) }
/*:
 ### 2. Crie uma função que exiba o refrão:  [🐝]
 *"I said, ooh, I'm blinded by the lights No, I can't sleep until I feel your touch I said, ooh, I'm drowning in the night Oh, when I'm like this, you're the one I trust"*
*/
func printChorus() {
    print("I said, ooh, I'm blinded by the lights No, I can't sleep until I feel your touch I said, ooh, I'm drowning in the night Oh, when I'm like this, you're the one I trust")
}

if DEBUG == 1 { printChorus() }
/*:
 ### 3. Faça uma função que receba a idade de uma pessoa em 3 parâmetros: anos, meses e dias. A função deve calcular e exibir a idade da pessoa expressa apenas em dias. Considere todos os anos com 365 dias e todos os meses com 30 dias. [🐝]
*/
func daysOld(years: Int, months: Int, days: Int) {
    print(years * 365 + months * 30 + days, "days")
}

if DEBUG == 1 { daysOld(years: 22, months: 0, days: 25)}
/*:
 ### 4. A pontuação de um jogo é a quantia de pontos anteriores de um jogador, somada com os pontos ganhos na última partida. Dado o nome do jogador, a quantia de pontos anteriores e os pontos da última partida, escreva uma função que receba esses parâmetros e mostre os pontos finais dessa pessoa no formato "Fulano: x pontos". [🐝]
*/
func currentScore(name: String, previousScore: Double, updateBy: Double) {
    let score = previousScore + updateBy
    print("\(name) has \(score) points")
}

if DEBUG == 1 { currentScore(name: "Fulano", previousScore: 8.7, updateBy: 21) }
/*:
 ### 5. Faça um programa, com uma função que necessite de três argumentos, e que forneça a soma desses três argumentos. [🐝]
*/
func sum(a: Int, b: Int, c: Int) {
    print(a + b + c)
}

if DEBUG == 1 { sum(a: 1, b: 2, c: 3) }
/*:
 ### 6. Escreva uma função que receba a largura e altura de um retângulo, calcule e exiba a área e o perímetro desse retângulo. [🐝]
*/
func triangleAreaAndPerimeter(width: Int, height: Int) {
    let area = Double(width * height) / 2.0
    let c = sqrt(pow(Double(width), 2.0) + pow(Double(height), 2.0))
    let perimeter = Double(width + height) + c
    print("Area:", area, "\nPerimeter:", perimeter)
}

if DEBUG == 1 { triangleAreaAndPerimeter(width: 4, height: 3) }
/*:
 ### 7. Faça uma função que retorne o antecessor do número passado pelo parâmetro. [🐝🐝]
*/
func predecessor(n: Int) -> Int {
    return n-1
}

if DEBUG == 1 { print(predecessor(n: 1)) }
/*:
 ### 8. Faça uma função que receba como parâmetro uma medida em metros e converta-a para centímetros. [🐝🐝]
*/
func metersToCentimeters(m: Double) -> Double {
    return m * 100
}

if DEBUG == 1 { print(metersToCentimeters(m: 1.50)) }
/*:
 ### 9. Crie um programa e uma função que permita fazer a conversão cambial entre Reais e Dólares. A função deve receber como parâmetros: o valor em reais e a taxa cambial. [🐝🐝]
*/
struct Currency: Codable {
    let code: String
    let alphaCode: String
    let numericCode: String
    let name: String
    let rate: Double
    let date: String
    let inverseRate: Double
}

struct Entry: Codable {
    let brl: Currency
}

func brlToUsd(amount: Double) {
    guard let url = URL(string: "http://www.floatrates.com/daily/usd.json") else {
        print("Oops, something went wrong with the URL :(")
        return
    }
    
    let sem = DispatchSemaphore.init(value: 0)
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in defer { sem.signal() }
        guard
            error == nil,
            let data = data
        else {
            print(error ?? "Unknown error")
            return
        }
        let decoder = JSONDecoder()
        do {
            let parsedData = try decoder.decode(Entry.self, from: data)
            let convertedAmount = amount * parsedData.brl.inverseRate
            
            print("\(amount) BRL equals \(String(format: "%.4f", convertedAmount)) USD")
        }
        catch {
            print(error)
        }
    }
    task.resume()
    sem.wait()
}

if DEBUG == 1 { brlToUsd(amount: 42.00) }
/*:
 ### 10. Escreva uma função que receba como parâmetros a largura e altura de um retângulo, calcule e retorne o comprimento da diagonal desse retângulo. *(Pitágoras)* [🐝🐝]
*/
func hypotenuse(a: Double, b: Double) -> Double {
    return sqrt(pow(a, 2) + pow(b, 2))
}

if DEBUG == 1 { print(hypotenuse(a: 3, b: 4)) }
/*:
 ### 11. Faça uma função que implemente o cálculo do IMC, índice de massa corporal. [🐝🐝]
*/
func imc(weight: Double, height: Double) -> Double {
    return weight / pow(height, 2)
}

if DEBUG == 1 { print(imc(weight: 80, height: 1.80)) }
/*:
 ### 12. Faça um programa que calcule e exiba a média de três notas de um estudante, usando uma função para o cálculo dessa média. [🐝🐝]
*/
func finalScore(scores: [Double]) {
    if scores.count > 0 {
        if scores.min()! < 0 || scores.max()! > 10 {
            print("Scores should be values between 0 and 10!")
            return
        }
        
        let average = scores.reduce(0.0, +) / Double(scores.count)
        
        print("Student's final score is \(String(format: "%.1f", average))")
    }
}

if DEBUG == 1 { finalScore(scores: [9.8, 9.2, 7.5]) }
/*:
 ### 13. Implemente o cálculo do raio de um círculo para uma dada área. [🐝🐝]
*/
func circleArea(radius: Double) -> Double {
    return Double.pi + pow(radius, 2)
}

if DEBUG == 1 { print(circleArea(radius: 2)) }
/*:
 ### 14. Faça uma função que retorne a raiz quadrada de um número dado. [🐝🐝]
 * Callout(Dica):
 Pesquise a função ````squareRoot()````.
*/
func squareRoot(x: Double) -> Double {
    return x.squareRoot()
}

if DEBUG == 1 { print(squareRoot(x: 2)) }
/*:
 ### 15. Faça uma função que retorne o sucessor do número passado como parâmetro. [🐝🐝]
*/
func successor(n: Int) -> Int {
    return n + 1
}

if DEBUG == 1 { print(successor(n: 5)) }
/*:
 ### 16. Escreva uma função que receba como parâmetros: o número total de eleitores de um município e o número de votos nulos. Calcule e retorne o percentual que os votos brancos representam. [🐝🐝]
*/
func percentageOfVoters(totalVoters: Int, whiteVotes: Int, nullVotes: Int, validVotes: Int) -> Double {
    return Double(whiteVotes) / Double(totalVoters) * 100
}

if DEBUG == 1 { percentageOfVoters(totalVoters: 10000, whiteVotes: 397, nullVotes: 469, validVotes: 8209) }
/*:
 ### 17. De acordo com a ANVISA, a ingestão diária aceitável de mercúrio (Hg) para um ser humano é de 0,1 micrograma/kg de massa corporal. Implemente uma função que receba a massa (em kg) de uma pessoa e retorne a massa (em g) (arredondada para o inteiro mais próximo) de peixe que ela pode ingerir num dia, sabendo que há 0,4 mg de mercúrio/kg do peixe. [🐝🐝🐝]
*/
func howMuchMercuryFromFishCanISafelyIngest(weight: Double) -> Int {
    let dailyMaximum = (0.1 * weight) / 1e6
    let hgPerKgOfFish = 0.4 / 1e3
    return Int(round(dailyMaximum / hgPerKgOfFish * 1.0e3))
}

if DEBUG == 1 { print(howMuchMercuryFromFishCanISafelyIngest(weight: 80)) }
/*:
 ### 18. Implemente uma função que recebe um número inteiro positivo n e retorne o n-ésimo número da sequência de fibonacci. [🐝🐝🐝🤯]
* Callout(Atenção):
A sequência de fibonacci começa em 0; e o retorno se n ≤ 0 deve ser 0.
*/
func fibonacci(at n: Int) -> Int {
    if n <= 0 { return 0 }
    
    return n + fibonacci(at: n-1)
}

if DEBUG == 1 { print(fibonacci(at: 5)) }
/*:
 ### 19. Implemente uma função que calcule o produto de todos os números inteiros naturais até um dado número n. [🐝🐝🐝🤯]
 */
func product(upTo n: Int) -> Int {
    if n <= 0 { return 0 }
    if n == 1 { return 1 }
    
    return n * product(upTo: n-1)
}

if DEBUG == 1 { print(product(upTo: 5)) }
/*:
 ### 20. Implemente uma função que calcule a soma de todos os números inteiros naturais até um dado número n. [🐝🐝🐝🤯]
 */
func sum(upTo n: Int) -> Int {
    return n * (n+1) / 2
}

if DEBUG == 1 { print(sum(upTo: 10)) }
