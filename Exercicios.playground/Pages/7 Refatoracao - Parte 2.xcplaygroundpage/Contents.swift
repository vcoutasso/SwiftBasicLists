/*:
 # Lista 7: Algoritmos e Refatoração - Parte 2
 -------
 
 * Callout(Dicas rápidas / thumb rules):*
     *Aplique as que forem possíveis*

     1. Idente o código.
 
     2. Espace o código. Há quebras de linha que facilitam a leitura?
 
     3. Entenda o que o código tenta fazer.
 
     4. Renomeie variáveis para legibilidade.
 
     5. Há funções que poderiam virar mais de uma? Refatore para cada função ter uma responsabilidade clara.
 
     6. Há código fora de funções? Transforme em uma ou mais funções, para facilitar legibilidade, generalização e reuso.
 
     7. Há código duplicado? Provavelmente pode virar funções.
 
     08. É possível criar/extrair variáveis que são reusadas em múltiplas partes do código? Se sim, crie/extraia.
     09. Há ```var``` que poderia ser ```let```?
     10. Há código que pode ser simplificado? Simplifique.
     
 -------
 ## 1. Continue a somar... [🐝🐝]
 ### Desafio

 Fazer um programa que solicita uma quantidade "n" de números naturais positivos a serem digitados e, em seguida, solicita a digitação desses "n" números. A saída do programa deve ser a soma de todas as combinações únicas possíveis destes números, dois a dois.

 **Exemplo 1:** se a entrada for dada por 3 número: 2, 3 e 4, a saída deverá ser a soma: 23 + 24 + 32 + 34 + 42 + 43 = 198

 ```
 Entrada: [2, 3, 4]

 Saída:
 198
 ```

 **Exemplo 2:** se a entrada for dada por 3 número: 2, 2 e 4, a saída deverá ser a soma: 22 + 24 + 42 = 88

 ```
 Entrada: [2, 2, 4]
 Saída:
 88
 ```

 ### Solução Para Refatorar

 ```swift
 func keepSumming(_ array: [Int]) {
   var pairs : [Int] = []
   var arraySize = array.count
   for i in 0..<arraySize {
 for j in 0..<arraySize {
  if i != j {
         var pair = array[i] * 10 + array[j]
         pairs.append(pair)
 }
   }
 }
   pairs = Array(Set(pairs))
   var sum = 0
   for i in pairs {
     sum += i}
   print(sum)
               }
 ```
 */
// código aqui

/*:## 2. Dupla Dinâmica [🐝🐝]
 ### Desafio
 Dada uma lista de números inteiros distintos, conte o número de pares de inteiros nos quais a diferença, em módulo, seja igual ao número **K** informado.

 ### **Formato de entrada**

 Lista de números inteiros e K

 ### **Formato de saída**

 Um inteiro que representa o número de pares de inteiros com diferença igual a **K** contidos na lista.

 ---

 **Exemplo de entrada**

 ```
 listaNum = [1, 5, 3, 4, 2]
 k = 2
 ```

 **Exemplo de saída**

 ```
 3

 ```

 **Explanação do exemplo**

 temos uma lista de 5 inteiros e queremos encontrar os pares entre eles cuja diferença seja **K** = 2

 Na lista dada na segunda linha temos 3 pares que satisfazem esta condição: (1,3), (5,3) e (4,2). Por este motivo, a saída é 3. Vale ressaltar novamente que o *módulo* da diferença está sendo considerado.

 ---

 ### Solução Para Refatorar

 ```swift
 func contaDuplas(lista: [Int], k: Int) -> Int {

 var c = 0

 for i in 0..<lista.count - 1 {
 for j in i + 1..<lista.count {
 if abs(lista[i] - lista[j]) == k {
 c = c + 1
 }
 }
 }
 return c
 }
 ```
 */
// código aqui

/*:## 3. A espiã e a mensagem secreta [🐝🐝]
 ### Desafio
 Uma espiã precisa gerar um algoritmo de criptografia para se comunicar com seus superiores: dada uma mensagem (apenas em letras maiúsculas e sem acento) e um número inteiro **n** positivo, trocar cada letra da mensagem pela letra que está *n* posições a sua frente. Trate isso de forma circular: se tivermos a letra 'Z' e n = 1, a letra de troca deveria ser 'A' e , caso n = 2,  'B'.

 ### **Formato de entrada**

 Um arquivo texto com 2 linhas: a primeira contém o número n e segunda, a mensagem a ser criptografada.

 A mensagem deve conter no máximo 1000 caracteres, todos em maiúsculas e sem acentos.

 **Obs**: Eventualmente a entrada pode conter erros.

 ### **Formato de saída**

 Escrever a mensagem de saída criptografada, de acordo com a entrada. No caso de algum erro no arquivo de entrada, a saída deve ser a string "ERRO" (sem aspas). **A saída não deve conter espaços antes ou depois do valor da resposta!**

 ### **Restrições**

 - O número n deve ser um inteiro positivo até o tamanho do alfabeto (0 <= n <= 26).
 - O tamanho da mensagem de entrada é, no máximo, 1000 caracteres.

 **Exemplo de Entrada 1**

 ```
 2
 ABAZ
 ```

 **Exemplo de Saída 1**

 ```
 CDCB
 ```

 **Exemplo de Entrada 2**

 ```
 4
 CESAR
 ```

 **Exemplo de Saída 2**

 ```
 GIWEV
 ```

 **Explicação dos exemplos**

 No primeiro exemplo, deslocam-se todas as letras 2 posições, como 'Z' é a última letra, temos que considerar o alfabeto como circular e trocar Z pela segunda letra que o sucede (Z, A, **B**).

 No segundo exemplo as letras são trocadas pelas letras que as sucedem de 4 posições.

 ### Solução para Refatorar

 ```swift
 let n = 4
 var m = "ABCDE"
 var a = ["a".uppercased(),"b".uppercased(),"c".uppercased(),"d".uppercased(),"e".uppercased(),"f".uppercased(),"g".uppercased(),"h".uppercased(),"i".uppercased(),"j".uppercased(),"k".uppercased(),"l".uppercased(),"m".uppercased(),"n".uppercased(),"o".uppercased(),"p".uppercased(),"q".uppercased(),"r".uppercased(),"s".uppercased(),"t".uppercased(),"u".uppercased(),"v".uppercased(),"w".uppercased(),"x".uppercased(),"y".uppercased(),"z".uppercased()]
 var shifteda5 = a

 for _ in (1...n)
  {
     let a = shifteda.removeFirst()
     shifteda.append(a)
         }

 var dec0Ded = ""
 for i in m {
     let idX = a.firstIndex(of: String(i))!
     dec0Ded += shifteda[idX]
         }
     
 print(dec0Ded)
 ```
 */
// código aqui

/*:## 4. Copa Pistola [🐝🐝]
 ### Desafio
 Relâmpago Marcão, corredor automobilístico de primeira, está fazendo simulações de quantos prêmios vai ganhar ao longo de sua carreira -- e também fazendo projeções para seus amigos.

 O simulador do sr. Relâmpago é bastante específico: dados o nome do corredor, a potência, o tipo do carro e os anos de corrida, o simulador devolve o total de prêmios previstos ao longo da carreira.

 Algumas regras devem ser seguidas:

 - Se o nome do corredor não é uma das opções válidas, o simulador deve retornar um número aleatório entre 10 e 20 -- o sr. Relâmpago quer ver seus amigos felizes;
 - Se o nome do corredor possuí um número, o número de prêmios deve ser acrescido desse número;
 - Existem quatro tipos de carro: `urbano`, `rural`, `corrida` e `empilhadeira`. Para cada um, a fórmula aplicada deve ser diferente:
     - se `urbano`: deve-se acrescer 5 + (número de anos * 0.5);
     - se `rural`: deve-se acrescer 0.05 * a potência;
     - se `corrida`: deve-se acrescer log2(potência) * anos;
     - se `empilhadeira`: deve-se acrescer 200.
 - Além disso, as seguintes regras tem prioridade:
     - se o número de anos for maior do que 100, o simulador deve falhar e retornar um número negativo;
     - se o carro tiver o nome "Relâmpago Marcão", o simulador deve somar 3000 no final.

 Os nomes de corredores conhecidos pelo simulador são:

 - Relâmpago Marcão
 - Sully
 - Doutor Hud
 - Filmore 15
 - Guidorizzi
 - Wazowski 5
 - Carro DINOCO
 - Godkong 1
 - Kingzilla 2

 ### Solução Para Refatorar

 ```swift
 enum estilocarro {
     case urbano
     case rural
     case corrida
     case empilhadeira
 }

 func simular(v1: String, v2: Double, pocotos: Double, estilo: estilocarro) -> Int {
     let v2Frac = 10
     if v2 <= Double(v2Frac * v2Frac) {
         if "Relâmpago Marcão" == v1
             || "Sully" == v1
             || "Doutor Hud" == v1
             || "Filmore 15" == v1
             || "Guidorizzi" == v1
             || "Wazowski 5" == v1
             || "Carro DINOCO" == v1
             || "Godkong 1" == v1
             || "Kingzilla 2" == v1 {
             
             var nameawards = Int(v1.filter({ $0.isNumber }).description) ?? 0
             
             var cartypeawards = 0
             switch estilo {
             case .urbano:
                 cartypeawards += (2 + 3) + Int(v2 * (5 * 0.1))
             case .rural:
                 cartypeawards += Int(0.05 * pocotos)
             case .corrida:
                 cartypeawards += Int(log2(pocotos) * v2)
             case .empilhadeira:
                 cartypeawards += (100 * 2)
             }
             
             if v1 != "Relâmpago Marcão" {
                 nameawards += 0
             } else {
                 nameawards += 3000
             }
             return nameawards + cartypeawards
         } else {
             return Int.random(in: 10...20)
         }
     } else {
         return -145123
     }
 }
 ```
 */
// código aqui

/*:## 5. Validação de CPF [🐝🐝🐝]
 ### Desafio
 Esse código abaixo valida se um CPF é válido ou não.

 As regras para validar um CPF pode ser encontrada aqui

 [https://dicasdeprogramacao.com.br/algoritmo-para-validar-cpf/](https://dicasdeprogramacao.com.br/algoritmo-para-validar-cpf/)

### Solução para Refatorar
 ```swift
 // Validação de CPF
 func validaCPF(cpf: String) -> Bool {
     let l = cpf.filter({ c in c.isNumber })
     let i = l.startIndex
     let u77 = 5
     let u75 = 3
     let u81 = 2
     let ns = l[l.index(i, offsetBy: u77 - u75 - u81)..<l.index(i, offsetBy: (u75 * 4) - u81 - 1)]
     var u = 0
     var p22 = 10
     for n in ns {
     if let nInt = Int(n.description) {
         u += (nInt * p22)
         p22 -= 1
     }
     }
     let ratio = ((u * 10) % 11) % 10
     let valid = l[l.index(i, offsetBy: 9)..<l.index(i, offsetBy: 11)]
     if Int(valid.first?.description ?? "") != nil, Int(valid.first?.description ?? "") == ratio {
         let pedaco = l[l.index(i, offsetBy: 0)..<l.index(i, offsetBy: 10)]
         var u2 = 0
         var p21 = 11
     for n in pedaco {
          if let nInt = Int(n.description) {
          u2 += (nInt * p21)
           p21 -= 1
     }
         }
         let prop = ((u2 * 10) % 11) % 10
         if Int(valid.last?.description ?? "") != nil, Int(valid.last?.description ?? "") == prop {
         return true
         }
         return false
     }
     return false
 }

 print(validaCPF(cpf: "529.982.247-25")) // True
 print(validaCPF(cpf: "123.456.789-10")) // False
 print(validaCPF(cpf: "496.055.962-45")) // True
 print(validaCPF(cpf: "933.524.623-99")) // True
 print(validaCPF(cpf: "640.128.790-06")) // True
 print(validaCPF(cpf: "444.333.111-43")) // False
 print(validaCPF(cpf: "333.222.456-15")) // False
 ```
 
 */
// código aqui

