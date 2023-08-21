print("--- Struct ---")
// Não aceita constante "let"
struct CheckingAccount {
    var statement = 0.0
    var name: String
    
    mutating func withdraw(_ value: Double){
        statement -= value
    }
    
    mutating func deposit(_ value: Double){
        statement += value
    }
}

var checkingAccountWesley = CheckingAccount(name: "Wesley Rebouças")
checkingAccountWesley.deposit(1000)
print("[Struct] - Saldo Wesley: \(checkingAccountWesley.statement)")

var checkingAccountVictoria = CheckingAccount(name: "Victoria Souza")
var checkingAccountVictoria2 = checkingAccountVictoria
// Foi criado uma cópia, por isso não há alteração
checkingAccountVictoria.deposit(2000)
checkingAccountVictoria2.deposit(3000)
print("[Class] - Saldo Victoria: \(checkingAccountVictoria.statement)")
print("[Class] - Saldo Victoria: \(checkingAccountVictoria2.statement)")

print("--- Class ---")
// Aeita constante "let"
class CheckingAccountClass {
    var statement = 0.0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func withdraw(_ value: Double){
        statement -= value
    }
    
    func deposit(_ value: Double){
        statement += value
    }
}

var checkingAccountClassWesley = CheckingAccountClass(name: "Wesley Rebouças")
checkingAccountClassWesley.deposit(1000)
print("[Class] - Saldo Wesley: \(checkingAccountClassWesley.statement)")

let checkingAccountClassVictoria = CheckingAccountClass(name: "Victoria Souza")
let checkingAccountClassVictoria2 = checkingAccountClassVictoria
// O endereçamento de memória é o mesmo, por isso há alteração
checkingAccountClassVictoria.deposit(2000)
checkingAccountClassVictoria2.deposit(3000)
print("[Class] - Saldo Victoria: \(checkingAccountClassVictoria.statement)")
print("[Class] - Saldo Victoria: \(checkingAccountClassVictoria2.statement)")

// Calculator -----
struct Calculator {
  let number01: Double
  let number02: Double

  func add() -> Double {
    return number01 + number02
  }

  func subtract() -> Double {
    return number01 - number02
  }

  func divide() -> Double {
    return number01 / number02
  }

  func multiply() -> Double {
    return number01 * number02
  }
}

let calculator = Calculator(number01: 7, number02: 3)
print("Soma = \(calculator.add())")
print("Subtração = \(calculator.subtract())")
print("Divisão = \(calculator.divide())")
print("Multiplicação = \(calculator.multiply())")

// Restaurant -----
struct Restaurant {
  var name: String
  var typeFood: String
  var numbersOrders: Int = 0

  mutating func takeOrders() {
    self.numbersOrders += 1
  }

  func calculateTotalOrders() -> Double {
    return 35.0 * Double(self.numbersOrders)
  }
}

var restaurant = Restaurant(name: "Wesley's Home", typeFood: "Brazilian")
restaurant.takeOrders()
restaurant.takeOrders()
restaurant.calculateTotalOrders()

// Renctangle -----
class Renctangle {
  var base: Double
  var height: Double

  init(base: Double, height: Double) {
    self.base = base
    self.height = height
  }

  func calculateArea() -> Double {
    return base * height
  }

  func calculatePerimeter() -> Double {
    return base * 2 + height * 2
  }
}

let rectangle = Renctangle(base: 5, height: 17)
rectangle.calculateArea()
rectangle.calculatePerimeter()

