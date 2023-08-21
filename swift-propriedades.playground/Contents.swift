class Account{
    var statement = 0.0 {
        willSet{
            print("Novo saldo: \(newValue)")
        }
        // É possível renomear a variável dessa forma
        didSet(saldoAntigo){
            print("Saldo antigo: \(saldoAntigo)")
        }
    }
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    // Pertence a class e não a outra instancia, por isso só pode ser acessado através da class
    static var transferenceTax = 0.1
    
    var debt: Bool {
        return statement < 0
    }
    
    func withdraw (_ value: Double){
        statement  -= value
    }

    func deposit (_ value: Double){
        statement += value
    }
}

// Extension --------

extension Account{
    func transfer (_ destiny: Account, _ value: Double ){
        withdraw(value)
        destiny.deposit(value)
    }
}

// Example
func caracterCount(_ text: String) -> Int{
    return text.count
}
var text = "Wesley"
caracterCount(text)

// Usando extension
extension String{
    func caracterCountString() -> Int {
        return self.count
    }
}
print(text.caracterCountString())

// Podemos utilizar nesses casos o Self (com "s" maiúsculo)
extension Int {
    func addNumberSelf(_ number: Self) -> Self { // O Self refere-se ao tipo da extension ser igual ao retorno
        return number + self
    }
}
let number = 7
let addResultSelf = number.addNumberSelf(10)
print(addResultSelf) // 17

// É a mesma coisa que escrever dessa forma
extension Int {
    func addNumber(_ number: Int) -> Int {
        return number + self
    }
}
let numberSeven = 7
let addResult = numberSeven.addNumber(10)
print(addResult) // 17
// Extension --------

var wesleyAccount = Account(name: "Wesley")
wesleyAccount.withdraw(70)
print(wesleyAccount.statement)
print(wesleyAccount.debt)
wesleyAccount.deposit(100)
print(wesleyAccount.statement)
print(wesleyAccount.debt)
// Pertence a class e não a outra instancia, por isso só pode ser acessado através da class
print(Account.transferenceTax)

var iracemaAccount = Account(name: "Iracema")
wesleyAccount.transfer(iracemaAccount, 20)
print(wesleyAccount.statement)
print(iracemaAccount.statement)


// IMC
struct Person {
    let name: String
    let old: Int
    private(set) var height: Double
    let weight: Double

    // Somente a class pode acessar
  private var imc: Double {
    return weight / (height * height)
  }

  var adult: Bool {
    return old >= 18
  }
}

let person = Person(name: "Olavo", old: 59, height: 1.63, weight: 73)
// print(person.imc) - Da erro, impossível acessar
print(person.height) // Pode ler, mas não pode alterar
// person.height = 1.80 // Erro, não pode alterar


// Employee
class Employee {
  var name: String
  var wage: Double {
    willSet {
      if newValue > wage {
        print("Parabéns! Você recebeu um aumento no salário.")
      } else if newValue == wage {
        print("Vish! Parece que não houve uma promoção dessa vez.")
      }
    }

    didSet {
      if wage < oldValue {
        print("O novo salário não pode ser menor do que era anteriormente.")
        wage = oldValue
      }
    }
  }

  init(name: String, wage: Double) {
    self.name = name
    self.wage = wage
  }
}

let employee = Employee(name: "Daniel", wage: 1000)
employee.wage = 1000
employee.wage = 2000
employee.wage = 1000
print(employee.wage)
