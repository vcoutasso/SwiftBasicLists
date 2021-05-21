import UIKit
/*:
 # Lista 8: Classes
 */
/*:
 ### 1. Círculo [🐝]
 Complete o pedaço de código abaixo.

 ```swift
 class Circulo {

     var raio: Double

     var perimetro: Double {
         0.0
     }

     var area: Double {
         0.0
     }

     init() {
     }

 }
 ```
 */
class Circle {
    var radius: Double
    
    var perimiter: Double { 2 * .pi * radius }
    
    var area: Double { .pi * radius * radius }
    
    init(radius: Double) {
        self.radius = radius
    }
}

let c = Circle(radius: 5)
print(c.area)
print(c.perimiter)
/*:
 ### 2. Notas da faculdade [🐝🐝]
 Crie uma classe `Estudante` que possa ser utilizada com o seguinte código:

 ```swift
 let estudante = Estudante(nome: "Velma Kelly", email: "velma.kelly@icloud.com")
 estudante.inscrever(emDisciplina: "Jazz 101")
 ```

 **Observação:** Caso o estudante tente se inscrever 2 vezes na mesma disciplina, exiba uma mensagem de erro.
 */
class Student {
    let name: String
    let email: String
    var enrolled: [String]
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
        enrolled = []
    }
    
    func enroll(in code: String) {
        if enrolled.contains(code) {
            print("Error! Already enrolled in \(code).")
        }
        else {
            enrolled.append(code)
            print("Enrolled in \(code).")
        }
    }
}

let velma = Student(name: "Velma Kelly", email: "velma.kelly@icloud.com")
velma.enroll(in: "Jazz 101")
velma.enroll(in: "Jazz 101")
/*:
 ### 3. Conta do Banco [🐝🐝]
 Crie uma class `ContaBancaria` que possua as seguintes propriedades/métodos (ações):

 - Nome do dono;
 - Número da conta;
 - Tipo da conta (`enum`);
 - Saldo;
 - Depositar;
 - Sacar.
 */
enum BankAccountTypes {
    case free
    case student
    case premium
    case enterprise
}

class BankAccount {
    let name: String
    let accNumber: String
    let accType: BankAccountTypes
    
    var balance = 0.0
    
    init(name: String, accNumber: String, accType: BankAccountTypes) {
        self.name = name
        self.accNumber = accNumber
        self.accType = accType
    }
    
    func deposit(amount: Double) {
        balance += amount
    }
    
    func withdraw(amount: Double) -> Double {
        guard amount <= balance else {
            print("Error! Withdrawal amount exceeds balance.")
            return 0
        }

        balance -= amount
        return amount
    }
}

let velmaAcc = BankAccount(name: "Velma Kelly", accNumber: "1234-0", accType: .premium)
velmaAcc.deposit(amount: 100.0)
velmaAcc.withdraw(amount: 20)
velmaAcc.withdraw(amount: 100)
