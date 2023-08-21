// Para impedir uma classe de herdar outra: "final class exemple { ..."
class Account{
    var statement = 0.0
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func withdraw (_ value: Double){
        statement  -= value
    }

    func deposit (_ value: Double){
        statement += value
    }
}

class SavingsAccount: Account {
    var haveDebitCard: Bool
    func ApplyForDebit(){
        haveDebitCard =  true
        print("Cartão de débito: Aprovado!")
    }
    
    // Sobrescrever o método da class pai
    override func withdraw(_ value: Double) {
        statement -= value + 7
    }
    
    // Alterar o init() da class filha para que não aja conflito com o init() da class pai
    // Parametrizar as variáveis da class pai para a class filha
    init(name: String, haveDebitCard: Bool){
        self.haveDebitCard = haveDebitCard
        // Instanciar o init() da class pai dentro do init() da class filha
        super.init(name: name)
    }
}
// Necessário alterar o init da class filha para que não aja conflito com o init da class pai
var savingsAccount = SavingsAccount(name: "Wesley", haveDebitCard: false) // name: class pai + haveDebitCard: class filha
savingsAccount.deposit(100)
savingsAccount.withdraw(13)
print(savingsAccount.statement)


class CheckingAccount: Account {
    func ApplyForLoan (_ value: Double){
        print("Empréstimo de: \(value) reais: Aprovado!")
        super.deposit(value)
    }
    
    // Sobrescrever o método da class pai
    override func withdraw(_ value: Double) {
        statement -= value + 10
    }
}
var checkingAccount = CheckingAccount(name: "Wesley")
checkingAccount.deposit(100)
checkingAccount.ApplyForLoan(8000)
checkingAccount.withdraw(40)
print(checkingAccount.statement)

func showStatement(_ account: Account){
    if account is CheckingAccount{
        print("Tipo da conta: Conta Corrente ")
    }
    
    // Para ter acesso aos atributos de uma class filha especifica
    // Necessário "desembrulhar" o opcional gerado pelo Typecasting "?"
    // Utilizando "if let" ou "guard let"
    if let checkingAccount = account as? CheckingAccount {
        checkingAccount.ApplyForLoan(700)
    }
    guard let savingsAccount = account as? SavingsAccount else { return }
    print(savingsAccount.haveDebitCard)
}

showStatement(checkingAccount)
showStatement(savingsAccount)

// ----- Employee -----
class Employee {
  var name: String
  var wage: Double

  init(name: String, wage: Double) {
    self.name = name
    self.wage = wage
  }
}

class Manager: Employee {
  var departament: String
  init(name: String, wage: Double, departament: String) {
    self.departament = departament
    super.init(name: name, wage: wage)
  }
}

class Saller: Employee {
  func CommissionPercentage(_ numberSales: Int) -> Double {
    return (0.1 * 50.0 * Double(numberSales)) + self.wage
  }
}

func typeVerification(_ employee: Employee) {
  if let manager = employee as? Manager {
    print("O(a) empregado(a) \(manager.name) é um(a) gerente e está no departamento \(manager.departament).")
  } else if let saller = employee as? Saller {
    print("O(a) empregado(a) \(saller.name) é um(a) vendedor(a).")
  } else {
    print("O(a) empregado(a) \(employee.name) é de um outro tipo.")
  }
}

let saller = Saller(name: "Olavo", wage: 2300)
let manager = Manager(name: "Iracema", wage: 4000, departament: "RH")
typeVerification(saller)
typeVerification(manager)
