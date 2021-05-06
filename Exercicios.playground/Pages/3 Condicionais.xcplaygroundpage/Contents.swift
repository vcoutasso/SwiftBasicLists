import UIKit

let DEBUG = 1
/*:
 # Lista 3: Condicionais
 ### 1. Dois valores [🐝]
 Crie um programa que leia dois valores (considere que não serão lidos valores iguais) e escreva-os em ordem crescente.
*/
func ascending(a: Int, b: Int) {
    print("\(min(a, b)), \(max(a, b))")
}

if DEBUG == 1 { ascending(a: 3, b: 2) }
/*:
 ### 2. Alugue o carro  [🐝]
 Depois de um trimestre pesado no trabalho você decide tirar umas férias com seus amigos. Então você reserva um vôo para você e seus amigos e tenta deixar toda a bagunça do trabalho pra trás.
 
 Você vai precisar alugar um carro para conseguir se locomover nessas férias. O gerente do aluguel de carros faz algumas boas ofertas.

 Alugar o carro custa $40 por dia. Se você alugar por 7 dias ou mais, você ganha $50 de desconto no total. Alternativamente, se você alugar o carro por 3 ou mais dias, você ganha $20 de desconto no total.

 Escreva um código que dá o valor total para diferentes dias.
*/
func totalRent(days: Int) {
    let total = 40 * days
    let discount = days >= 7 ? 50 : days >= 3 ? 20 : 0
    print("Total rent: \(total - discount)")
}

if DEBUG == 1 { totalRent(days: 2) }
/*:
 ### 3. CNH  [🐝]
 Crie um programa que leia o ano atual e o ano de nascimento de uma pessoa. O programa deve escrever uma mensagem que diga se ela poderá ou não tirar a carteira de habilitação nesse ano.
 */
func cnh(currentYear: Int, birthYear: Int) {
    print("Você\(currentYear - birthYear >= 18 ? "" : " não") pode tirar a CNH esse ano!")
}

if DEBUG == 1 { cnh(currentYear: 2021, birthYear: 2005) }
/*:
 ### 4. Maior diferença [🐝]
 Escreva um programa que, dados dois números inteiros diferentes, mostre na tela o maior deles, assim como a diferença existente entre ambos.
 */
func biggestDiff(a: Int, b: Int) {
    print("Biggest:\(max(a, b)) Diff:\(abs(a - b))")
}

if DEBUG == 1 { biggestDiff(a: 4, b: 9) }
/*:
 ### 5. Maior entre 2 valores [🐝]
 Crie um programa que leia dois valores e escreva qual é o maior. Caso sejam iguais, escrever que são iguais.
 */
func biggest(a: Int, b: Int) {
    print("\(max(a,b) != min(a,b) ? "O maior é \(max(a, b))" : "Os dois são iguais")")
}

if DEBUG == 1 { biggest(a: 2, b: 3) }
/*:
 ### 6. Média aritmética simples [🐝]
 Ler as notas da 1ª e 2ª avaliações de um aluno. Calcular a média aritmética simples e escrever uma mensagem que diga se o aluno foi ou não aprovado (considerar que nota igual ou maior que 6 o aluno é aprovado). Escrever também a média calculada.
 */
func mean(a: Double, b: Double) {
    print("O aluno \((a + b) / 2 >= 6 ? "" : "não " )foi aprovado!")
}

if DEBUG == 1 { mean(a: 8, b: 6) }
/*:
 ### 7. Oi customizado  [🐝]
 Crie uma função que nos dá uma mensagem de olá customizada. Essa função recebe dois parâmetros: *nome* e *chefe*. Ambos os parâmetros receberão nomes de pessoas.

 ![Tabela 1](L3_E7.png)

 */
func hello(name: String, boss: String) {
    print("Oi, \(name == boss ? "chefe" : "pessoa")")
}

if DEBUG == 1 { hello(name: "vinicius", boss: "vinicius") }
/*:
 ### 8. Positivo ou negativo [🐝]
 Crie um programa que Leia um valor e escreva se é positivo ou negativo (considere o valor zero como positivo).
 */
func isPositive(a: Int) {
    print(a >= 0 ? "Positivo" : "Negativo")
}

if DEBUG == 1 { isPositive(a: 7) }
/*:
 ### 9. Venda de Maçãs [🐝]
 As maçãs custam R$ 1,30 cada se forem compradas menos de uma dúzia, e R$ 1,00 se forem compradas pelo menos 12. Escreva um programa que leia o número de maçãs compradas, calcule e escreva o custo total da compra.
 */
func apples(qty: Int) {
    let price = qty < 12 ? 1.30 : 1
    print("Preço das maças: \(price * Double(qty))")
}

if DEBUG == 1 { apples(qty: 12) }
/*:
 ### 10. Vogal ou Consoante [🐝]
 Faça um programa que verifique se uma letra digitada é vogal ou consoante.
 */
func isConsonant(ch: Character) {
    print("aeiou".contains(ch) ? "Vogal" : "Consoante")
}

if DEBUG == 1 { isConsonant(ch: "s") }
/*:
 ### 11. Categoria dos nadadores [🐝🐝]
 Elabore um algoritmo que dada a idade de um nadador classifica-o em uma das seguintes
 categorias:
 - infantil A = 5 - 7 anos
 - infantil B = 8 - 10 anos
 - juvenil A = 11-13 anos
 - juvenil B = 14-17 anos
 - adulto = maiores de 18 anos
 */
func swimmers(age: Int) {
    switch age {
    case 5...7:
        print("Infantil A")
    case 8...10:
        print("Infantil B")
    case 11...13:
        print("Juvenil A")
    case 14...17:
        print("Juvenil B")
    default:
        print("Adulto")
    }
}

if DEBUG == 1 { swimmers(age: 12) }
/*:
 ### 12. Dia do mês [🐝🐝]
 Escreva um programa receba o número do mês do ano (um número entre *1* e *12*) e imprima o número de dias desse mês. (Considere fevereiro sempre com 29 dias)
 */
func days(month: Int) {
    switch month {
    case 4, 6, 9, 11:
        print("30 dias")
    case 2:
        print("29 dias")
    default:
        print("31 dias")
    }
}

if DEBUG == 1 { days(month: 3) }
/*:
 ### 13. FizzBuzz [🐝🐝]
 Faça um programa que recebe um número e:

 - Se ele for divisível por 3, printa "Fizz"
 - Se ele for divisível por 5, printa "Buzz"
 - Se ele for divisível por 3 e 5, printa "FizzBuzz", na mesma linha
 - Se não for nenhum caso acima, printa o próprio número
 */
func fizzbuzz(n: Int) {
    let a = 3, b = 5
    var output = ""
    
    if n % a == 0 { output += "Fizz" }
    if n % b == 0 { output += "Buzz" }
    
    print(output.isEmpty ? "\(n)" : output)
}

if DEBUG == 1 { fizzbuzz(n: 14) }
/*:
 ### 14. Jornalistas [🐝🐝]
 A Rede Globo apresenta diariamente, em TV aberta, os seguintes telejornais:
- Bom Dia Brasil, apresentado por Chico Pinheiros e Ana Paula Araujo
- Jornal Hoje, apresentado por Maria Julia Coutinho
- Jornal Nacional, apresentado por William Bonner e Renata Vasconcellos
- Jornal da Globo, apresentado por Christiane Pelajo e Willian Waack

 Crie um algoritmo que leia apenas o sobrenome de um dos dois apresentadores e diga a
 qual telejornal ele está vinculado. Caso o nome digitado não esteja na lista acima, mostrar a
 mensagem “Apresentador desconhecido”.
 */
func tv(surname: String) {
    switch surname {
    case _ where "Chico Pinheiros".contains(surname), _ where "Ana Paula Araujo".contains(surname):
        print("Bom Dia Brasil")
    case _ where "Maria Julia Coutinho".contains(surname):
        print("Jornal Hoje")
    case _ where "William Bonner".contains(surname), _ where "Renata Vasconcellos".contains(surname):
        print("Jornal Nacional")
    case _ where "Christiane Pelajo".contains(surname), _ where "Willian Waack".contains(surname):
        print("Jornal da Globo")
    default:
        print("Apresentador desconhecido")
    }
}

if DEBUG == 1 { tv(surname: "Coutinho") }
/*:
 ### 15. Maior entre 3 valores [🐝🐝]
 Ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles.
 */
func max3(a: Int, b: Int, c: Int) {
    print(max(a, max(b, c)))
}

if DEBUG == 1 { max3(a: 3, b: 4, c: 5) }
/*:
 ### 16. Par ou Impar [🐝🐝]
 Faça uma função que recebe um inteiro, e retorna "par" se o número é par e "impar" caso contrário.
 */
func imparPar(num: Int) -> String {
    return num % 2 == 0 ? "Par" : "Impar"
}

if DEBUG == 1 { print(imparPar(num: 4)) }
/*:
 ### 17. Raiz Quadrada [🐝🐝]
 Leia um número fornecido pelo usuário. Se esse número for positivo (considere 0 positivo), calcule a raiz quadrada do número. Se o número for negativo, mostre uma mensagem dizendo que o número é inválido.
 *Dica: pesquise sobre a função ```squareRoot()``` na documentação oficial da Apple.*
 */
func sqRoot(num: Int) {
    print(num > 0 ? Double(num).squareRoot() : "Número inválido")
}

if DEBUG == 1 { sqRoot(num: -1) }
/*:
 ### 18. 3 valores ordenados [🐝🐝🐝]
 Crie um programa que leia 3 valores (considere que não serão informados valores iguais) e escreva todos em ordem.
 */
func sort(a: Int, b: Int, c: Int) {
    var arr = [a, b, c]
    arr.sort()
    for n in arr { print(n, terminator: " ") }
    print()
}

if DEBUG == 1 { sort(a: 10, b: 23, c: 5) }
/*:
 ### 19. Comissão de vendas [🐝🐝🐝]
 Uma empresa paga a seus funcionários R$ 1,00 de comissão para cada produto vendido, entretanto, se forem vendidos mais de 250 produtos, o valor aumenta para R$ 1,50. Se a quantidade for superior a 500 produtos, o valor da comissão sobe para R$ 2,00. Monte um programa para ler o nome de um funcionário e a quantidade de produtos que ele vendeu. Exiba o nome do funcionário e o total de comissão que ele vai receber.
 */
func comission(qty: Int, name: String) {
    print(name, qty > 250 ? qty > 500 ? 2 * Double(qty) : 1.5 * Double(qty) : 1 * Double(qty))
}

if DEBUG == 1 { comission(qty: 251, name: "Fulano") }
/*:
 ### 20. É final de semana? [🐝🐝🐝]
 Crie uma enumeração do tipo String  que represente todos os dias da semana. Os cases de  segunda a sexta devem ter valor "dia de semana". Sábado e domingo devem ter valor "fim de semana".

 Crie uma função que receba um dia da semana no tipo dessa enumeração, e printe a mensagem: "Bora trabalhar" se for dia de semana e "Bora pra praia" se for fim de semana.
 */
enum DayOfTheWeek {
    case Monday, Tuesday, Wednesdaay, Thursday, Friday, Saturday, Sunday
}

func isWeekend(day: DayOfTheWeek) {
    switch day {
    case .Saturday, .Sunday:
        print("Bora pra praia")
    default:
        print("Bora trabalhar")
    }
}

if DEBUG == 1 { isWeekend(day: .Sunday) }
/*:
 ### 21. Tômperos do Jacquin [🐝🐝🐝🤯]
 Jacquin tem um gosto muito particular para temperos.

 - Se em seu prato há só feijão, ele coloca sal.
 - Se no seu prato só há arroz, ele coloca pimenta.
 - Se em seu prato tem batata, sozinha ou acompanhada de outra coisa, ele sempre coloca azeite também.
 - Se há apenas feijão e arroz, ele não coloca tempero nenhum.
 - Mas se no prato tem feijão, arroz e batata, Jacquin coloca os três temperos: sal, pimenta e azeite.
 - Por fim, sempre que houver ou batata, ou arroz com feijão, ele adiciona oregano, mas não quando há os três alimentos juntos.

 Ajude Jacquin em sua logística alimentar construindo uma função que receba como parâmetros três booleanos, representando "temFeijão", "temArroz" e "temBatata" e que printe quais tômperos serão usados no prato.
 */
func tompero(temFeijao: Bool, temArroz: Bool, temBatata: Bool) {
    if temArroz && temFeijao && !temBatata { print("Sem tempero") }
    else if temArroz && temFeijao && temBatata { print("Coloca sal, pimenta e azeite") }
    else {
        if temFeijao && !(temArroz || temBatata) { print("Coloca sal") }
        if temArroz && !(temFeijao || temBatata) { print("Coloca pimenta") }
        if temBatata { print("Coloca azeite") }
        if temBatata || (temArroz && temFeijao) { print("Coloca oregano") }
    }
}

if DEBUG == 1 { tompero(temFeijao: true, temArroz: true, temBatata: true)}
