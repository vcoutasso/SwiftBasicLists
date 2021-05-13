/*:
 # Lista 6: Algoritmos e Refatoração - Parte 1
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
     
 
 
 ----------
 ### 1. Bandeirinhas 1: 10000 Emojis [🐝]
 Uma emoji vale mais do que 1000 palavras. E quanto vale 10 mil emojis?

 Abaixo, temos um código que printa uma string com 100 corações vermelhos.

    print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️")

 Dá muito trabalho fazer 10 mil emojis de coração dessa forma (e muuuito mais trabalho conta-los).

 Refaça o código de forma que tenhamos uma função que retorne uma ```String``` feita de uma quantidade arbitrária de um mesmo emoji. Use o resultado da função para printar exatamente 10 mil emojis.
 */
// código aqui

/*:
 ### 2. Bandeirinhas 2: Bandeirinhas de Coração [🐝🐝]
 Abaixo temos 99 emojis printados em 10 linhas. Refatore o código para uma função que, dado um número arbitrário, printe essa quantidade de emojis em linhas com no máximo 10 emojis cada. Linhas ímpares serão formadas por corações vermelhos, linhas pares serão feitas de corações azuis.

 ````
 print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 1
 print("💙💙💙💙💙💙💙💙💙💙") // linha 2
 print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 3
 print("💙💙💙💙💙💙💙💙💙💙") // linha 4
 print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 5
 print("💙💙💙💙💙💙💙💙💙💙") // linha 6
 print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 7
 print("💙💙💙💙💙💙💙💙💙💙") // linha 8
 print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 9
 print("💙💙💙💙💙💙💙💙💙")   // linha 10
 ````
 `
 */
 // código aqui

/*:
### 3. Bandeirinhas 3: Bandeirinhas de Emoji [🐝🐝]
 Altere a função desenvolvida no problema anterior (Bandeirinhas de Coração) para garantir que, ao chamar a função, o programador possa passar alguns parâmetros adicionais:

 - O emoji das linhas ímpares
 - O emoji das linhas pares
 - O tamanho das linhas

 Dica: Emoji será sempre uma ```String``` e será passado para os parâmetros entre aspas, como qualquer outro caractere (i.e.: "⚡️").
*/
// código aqui

/*:
### 4. Refatoração: Fatores de um número [🐝🐝]
 Esse código abaixo computa os fatores de um determinado número.
 Os fatores de um número são os divisores do número que não deixam resto.

 *Exemplo*
 - 6 é divisível por 6, 3, 2 e 1 sem deixar resto ou casas decimais.
 - Como 6 / 4 == 2,5 sabemos que 4 não é um fator de 6.
 
 * Callout(Para refatorar):
    ````let x=29
    var r3:[Int]
    r3=[Int]()
    for i in (1...x   + 1){if x % i == 0{ r3.append(i)   }
    }
    print(r3)
 
*/
// código aqui

/*:
### 5. Refatoração: Menor Múltiplo Comum [🐝🐝]
 Refatore o código abaixo. Esse código calcula o mínimo múltiplo comum (MMC).

 O mínimo múltiplo comum (MMC) corresponde ao menor número inteiro positivo, diferente de zero, que é múltiplo ao mesmo tempo de dois ou mais números.

 * Callout(Para refatorar):
     ```
     let xx=2
     let yy=7
     var g = 0
     if xx > yy {
     g = xx
     }else { g=yy }

     var common: Int = 0
     var t = true
     while t {
         if g   % xx == 0 && g %  yy == 0 {
            common=g
            break
         }
         g += 1
     }

    print(common)
    ```
*/
// código aqui

/*:
### 5. Refatoração: Menor Múltiplo Comum [🐝🐝]
 Refatore o código abaixo. Esse código calcula o mínimo múltiplo comum (MMC).

 O mínimo múltiplo comum (MMC) corresponde ao menor número inteiro positivo, diferente de zero, que é múltiplo ao mesmo tempo de dois ou mais números.
 
 * Callout(Para refatorar):
    ````
     let xx=2
     let yy=7
     var g = 0
     if xx > yy {
     g = xx
     }else { g=yy }

     var common: Int = 0
     var t = true
     while t {
         if g   % xx == 0 && g %  yy == 0 {
            common=g
            break
         }
         g += 1
     }

     print(common)
     ````
 */
// código aqui

/*: 
### 6. Refatoração: Mínimo Divisor Comum [🐝🐝]
 Esse código abaixo computa o máximo divisor comum entre dois números.  Refatore-o.

 * Callout(Para refatorar):
    ````
     let xxx=12
     let yyy=27
     var comum = 0
     var s = 0
     if xxx > yyy{
         s = yyy}
         else{
             s = xxx}
             for i in (1..<s   + 1){
     if xxx%i == 0 && yyy%i==0{
         comum = i
     }
             }
     print(comum)
     ````
*/
// código aqui

/*:
### 7. Refatoração: Sequência de números primos [🐝🐝]
 Refatore o código a baixo. Esse código apresenta todos os números primos que estão abaixo de um determinado valor.

 * Callout(Para refatorar):
     ````
     var upper = 5
     var r = [Int]()

     for n in (2..<upper+1)  {
     var x  =     true
     for i in          (2..<n)  {
             if n % i == 0 {
                 x=false
     break
         }
     };       if  x   == true{
             r.append(n)}
     }

     var r2 = r

     print(r2)
    ````
 */
// código aqui

/*:
### 8. Refatoração: Sort Ascendente [🐝🐝]
Esse código abaixo ordena os valores de uma lista de forma ascendente. Refatore.
 
 * Callout(Para refatorar):
     ```
     var l=[2,3,1]
     for i in (0..<l.count) {
         for j in (i+1..<l.count){
             if l[i]>l[j]{
                let tmp =  l[i]
                l[i] =  l[j]
                l[j] = tmp
             }
         }
     }
       
     print(l)
     ```
*/
// código aqui

/*:
### 9. Bandeirinhas 4: 3 Tipos de Bandeira [🐝🐝🐝]
 Altere a função anterior para que haja 3 linhas diferentes, sempre na mesma ordem. Como no exemplo abaixo, que printa 85 emojis em linhas de tamanho 10.

 Independente da quantidade de linhas....

 - As linhas 1, 4, 7, 10, etc deverão conter um emoji.
 - As linhas 2, 5, 8, 11, etc deverão contar outro emoji.
 - Linhas 3, 6, 9, 12, etc Deverão conter outro emoji.

 * Callout(Para refatorar):
    ```
     print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 1
     print("💙💙💙💙💙💙💙💙💙💙") // linha 2
     print("💛💛💛💛💛💛💛💛💛💛") // linha 3
     print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 4
     print("💙💙💙💙💙💙💙💙💙💙") // linha 5
     print("💛💛💛💛💛💛💛💛💛💛") // linha 6
     print("♥️♥️♥️♥️♥️♥️♥️♥️♥️♥️") // linha 7
     print("💙💙💙💙💙💙💙💙💙💙") // linha 8
     print("💛💛💛💛💛")            // linha 9
    ```
*/
// código aqui

