import UIKit
import Foundation

let DEBUG = 1
/*:
 # Lista 1: Constantes e Variáveis
 ### 1. Escreva um algoritmo que leia um valor e escreva o seu antecessor e sucessor. [🐝]

    func antecessorESucessor(...) {}
 */
func predecessorAndSuccessor(n: Int) {
    print("Predecessor: \(n-1)\nSuccessor: \(n+1)")
}

if DEBUG == 1 { predecessorAndSuccessor(n: 1) }
/*:
 ### 2. Um aplicativo mostra uma mensagem de boas vindas ao usuário, "Olá, Fulano!", na sua tela inicial. Dado o nome do usuário, escreva um algoritmo que monte a mensagem de boas vindas a ser exibida. [🐝]
    
    func printaMensagem(...) {}
 */
func greetings(name: String) {
    print("Greetings, \(name)!")
}

if DEBUG == 1 { greetings(name: "Vinicius") }
/*:
 ### 3. Crie um programa que permita fazer a conversão cambial entre Reais e Dólares. Leia o valor em Reais e a taxa cambial. [🐝]
    func converteRealParaDolar(...) {}
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
 ### 4. Faça um algoritmo que leia uma medida em metros e converta para centímetros. [🐝]
    func converteMetrosParaCentimetros(...) {}
 */
func metersToCentimeters(m: Double) {
    let cm = m * 100
    print("\(m) meters equals \(cm) centimeters")
}

if DEBUG == 1 { metersToCentimeters(m: 1.50) }
/*:
 ### 5. Ler uma temperatura em graus Fahrenheit e apresenta-la convertida em graus Celsius. [🐝]
 A fórmula de conversão é C = ( F – 32 ) / 1.8, sendo F a temperatura em Fahrenheit e C a temperatura em Celsius.

    func converteFParaC(...) {}
 */
func fahrenheitToCelsius(fahrenheit: Double) {
    let celsius = (fahrenheit - 32) / 1.8
    print("\(fahrenheit) ºF equals \(String(format: "%.4f", celsius)) ºC")
}

if DEBUG == 1 { fahrenheitToCelsius(fahrenheit: 100) }
/*:
 ### 6. O custo de um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem do distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que o percentual do distribuidor seja de 28% e os impostos de 45%, escrever um algoritmo para ler o custo de fábrica de um carro, calcular e escrever o custo final ao consumidor. [🐝]
    func custoAoConsumidor(...) {}
 */
func retailPrice(manufacturingCost: Double, profitMarginPercentage: Double, taxPercentage: Double) {
    if profitMarginPercentage < 0 || profitMarginPercentage > 1 || taxPercentage < 0 || taxPercentage > 1 {
        print("Percentages should be values between 0 and 1!")
        return
    }
    
    let price = manufacturingCost + (manufacturingCost * profitMarginPercentage) + (manufacturingCost * taxPercentage)
    let formatedPrice = String(format: "%.2f", locale: Locale.current, price)
    
    print("Retail price is \(formatedPrice) units of money.")
}

if DEBUG == 1 { retailPrice(manufacturingCost: 45000, profitMarginPercentage: 0.28, taxPercentage: 0.45) }

/*:
 ### 7. Calcular a quantidade dinheiro gasta por um fumante. Dados: o número de anos que ele fuma, o nº de cigarros fumados por dia e o preço de uma carteira. (Considere que cada carteira tem 20 cigarros) [🐝]
    func dinheiroGasto(...) {}
 */
func moneyBurned(overYears: Double, qtyPerDay: Int, packPrice: Double) {
    let wasted = (Double(qtyPerDay) * 365.0 * overYears * packPrice) / 20.0
    print("Congratulations! A grand total of \(wasted) units of money wasted over \(overYears) years smoking cigarettes!")
}

if DEBUG == 1 { moneyBurned(overYears: 10, qtyPerDay: 5, packPrice: 5) }
/*:
 ### 8. Faça um algoritmo que leia três notas de um aluno, calcule e escreva a média final deste aluno. [🐝]
    func mediaFinal(notas: ...) {}
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
 ### 9. A pontuação de um jogo é a quantia de pontos anteriores de um jogador, somada com os pontos ganhos na última partida. Dado o nome do jogador, a quantia de pontos anteriores e os pontos da última partida, escreva um algoritmo que mostre os pontos finais dessa pessoa no formato "Fulano: x pontos". [🐝]
    func printaPontuacao(...) {}
 */
func currentScore(name: String, previousScore: Double, updateBy: Double) {
    let score = previousScore + updateBy
    print("\(name) has \(score) points")
}

if DEBUG == 1 { currentScore(name: "Fulano", previousScore: 8.7, updateBy: 21) }
/*:
 ### 10. Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste. Calcular e escrever o valor do novo salário. [🐝]
    func reajusteSalarial(...) {}
 */
func newWage(currentWage: Double, adjustment: Double) {
    let wage = currentWage + (currentWage * adjustment)
    print("New wage is \(wage) units of money")
}

if DEBUG == 1 { newWage(currentWage: 4000, adjustment: 0.225) }
/*:
 ### 11. Uma revendedora de carros usados paga a seus funcionários vendedores um salário fixo por mês, mais uma comissão também fixa para cada carro vendido e mais 5% do valor das vendas por ele efetuadas. Escrever um algoritmo que leia o número de carros por ele vendidos, o valor total de suas vendas, o salário fixo e o valor que ele recebe por carro vendido. Calcule e escreva o salário final do vendedor. [🐝]
    func salarioDoVendedor(...) {}
 */
func salesmanSalary(baseSalary: Double, comissionPerSale: Double, carsSold: Int, totalSales: Double) {
    let salary = baseSalary + (comissionPerSale * Double(carsSold)) + totalSales * 0.05
    print("Salesman salary is \(salary)")
}

if DEBUG == 1 { salesmanSalary(baseSalary: 3000, comissionPerSale: 100, carsSold: 3, totalSales: 60000)}
/*:
 ### 12. Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores. [🐝]
    func percentualDeVotos(...) {}
 */
func percentageOfVoters(totalVoters: Int, whiteVotes: Int, nullVotes: Int, validVotes: Int) {
    let whitePercentage = Double(whiteVotes) / Double(totalVoters) * 100
    let nullPercentage = Double(nullVotes) / Double(totalVoters) * 100
    let validPercentage = Double(validVotes) / Double(totalVoters) * 100
    
    print("Percentage of white votes: \(whitePercentage)%\nPercentage of null votes: \(nullPercentage)%\nPercentage of valid votes: \(validPercentage)%")
}

if DEBUG == 1 { percentageOfVoters(totalVoters: 10000, whiteVotes: 397, nullVotes: 469, validVotes: 8209) }
/*:
 ### 13. Faça um algoritmo que leia o raio de um círculo, calcule e mostre sua área. [🐝]
    func areaDoCirculo(raio:...) {}
 */
func circleArea(radius: Double) {
    let radius = Double.pi + pow(radius, 2)
    print("Circle area: \(radius) units of area")
}

if DEBUG == 1 { circleArea(radius: 2) }
/*:
 ### 14. Calcule quantos azulejos são necessários para cobrir uma parede. É necessário conhecer a altura e largura da parede e a altura e largura dos azulejos. [🐝🐝]
    func quantidadeDeAzulejos(_:, _:) {}
 */
func tileAmountRequired(wallWidth: Double, wallHeight: Double, tileWidth: Double, tileHeight: Double) {
    let wallArea = wallWidth * wallHeight
    let tileArea = tileWidth * tileHeight
    let amountRequired = wallArea / tileArea
    print("A total of \(amountRequired) \(tileWidth)x\(tileHeight) tiles are required to cover a \(wallWidth)x\(wallHeight) wall")
}

if DEBUG == 1 { tileAmountRequired(wallWidth: 450, wallHeight: 300, tileWidth: 15, tileHeight: 15) }
/*:
 ### 15. Faça um algoritmo que leia a duração em segundos de um evento (por exemplo, um jogo de futebol) e printe o equivalente em horas, minutos e segundos. [🐝🐝]
    func converteSegundos(...) {}
 */
func convertTime(time: Int) {
    let h = time / 3600
    let m = (time % 3600) / 60
    let s = (time % 3600) % 60
    print("\(time) seconds equals \(h)h \(m)m \(s)s")
}

if DEBUG == 1 { convertTime(time: 27005) }
/*:
 ### 16. Repita o exercício "Média de notas" considerando que a média é ponderada e que os pesos das notas são 2, 3 e 5.
    func mediaFinalPonderada(...) {}
 */
func weightedScore(scores: [Double], weights: [Double]) {
    if scores.count > 0 || weights.count == scores.count {
        if scores.min()! < 0 || scores.max()! > 10 {
            print("Scores should be values between 0 and 10!")
            return
        }
        
        let totalWeight = weights.reduce(0, +)
        if totalWeight <= 0 { return }
        
        let score = zip(scores, weights)
            .map { $0 * $1 }
            .reduce(0, +) / totalWeight
        
        print("Student's final score is \(String(format: "%.1f", score))")
    }
}

if DEBUG == 1 { weightedScore(scores: [9.8, 9.2, 7.5], weights: [2, 3, 5]) }

/*:
 ### 17. Dado duas variáveis A e B, troque o valor armazenado nas duas e mostre os valores finais nessas variáveis.
 Dica: use uma variável auxiliar.
 
    func trocaEPrinta(a:..., b:...) {}
 */
func swapValues<T>(a: inout T, b: inout T) {
    (a, b) = (b, a)
    print("a = \(a), b = \(b)")
}

if DEBUG == 1 { var a = 1; var b = 2; swapValues(a: &a, b: &b) }
/*:
 ### 18. Robson quer sacar um determinado valor em um caixa eletrônico. Sabendo que o caixa dispõe de notas de 1, 2, 5, 10, 20, 50 e 100 bolsoguedes, e que ele sempre dá o menor número possível de cédulas, faça um algoritmo que retorne o número de notas de cada valor que serão fornecidas, dado o valor total a ser sacado. [🐝🐝🐝]
    func numeroDeNotas(...) {}
 */
func banknotes(amount: Int) {
    let availableNotes = [100, 50, 20, 10, 5, 2, 1]
    var amountLeft = amount
    
    for noteValue in availableNotes {
        let qty = amountLeft / noteValue
        if qty > 0 {
            print("\(qty) notes of \(noteValue)")
            amountLeft = amountLeft % (qty * noteValue)
        }
    }
}

if DEBUG == 1 { banknotes(amount: 739) }
/*:
 ### 19. Usando APENAS operadores básicos (isso é, soma, subtração, multiplicação, divisão, resto, etc) e sem laços de repetição ou funções prontas de bibliotecas, determine se um número de 5 dígitos é ou não palíndromo. [🐝🐝🐝🤯]
 P.S: um número é palíndromo se ele é igual a si mesmo, invertido (ou seja, lido de trás pra frente). Exemplos: 1221 é um palíndromo, 131 também. Mas 1552 não é palíndromo.
    
    func isPalindrome(...) -> ... {}
 */
func isPalindrome(n: UInt) -> Bool {
    if n < 10 { return true }
    
    var d: UInt = 10
    
    while 10 * d <= n { d *= 10 }
    
    if n / d == n % 10 {
        return isPalindrome(n: ((n % d) - (n % 10)) / 10)
    }
    
    return false
}

if DEBUG == 1 { print(isPalindrome(n: 12321)) }
/*:
 ### 20. Construa as funções que retornam os resultados para as operações entre A e B de cada uma das 3 tabelas. [🐝🐝🐝🤯]
 Dado:
 
 ![Tabela 1](L1_E20_T1.png)

 ![Tabela 2](L1_E20_T2.png)
 
 ![Tabela 3](L1_E20_T3.png)

 */
/*:
       func tabelaUm(a: Bool, b: Bool) -> Bool {
          //seu código aqui
       }

       func tabelaDois(a: Bool, b: Bool) -> Bool {
          //seu código aqui
       }

       func tabelaTres(a: Bool) -> Bool {
          //seu código aqui
       }
 */
// 1
func andGate(a: Bool, b: Bool) -> Bool {
    return a && b
}

// 2
func orGate(a: Bool, b: Bool) -> Bool {
    return a || b
}

// 3
func notGate(a: Bool) -> Bool {
    return !a
}
