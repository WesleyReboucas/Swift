enum PaymentMethods {
    case pix
    case ticket
    case accountBalance
}

class Account {
    var statement = 0.0
    var name: String
    
    func withdraw(_ value: Double) -> withdrawResult {
        
        if value > statement {
            return .fail(error: "O valor é maior do que seu saldo")
        } else {
            statement -= value
            return .success(newValue: statement)
        }
    }
    
    func deposit(_ value: Double) {
        statement += value
    }
    
    func cardPayment(_ paymentType: PaymentMethods) {
        switch paymentType {
        case .pix: print("O pagamento será efetuado por pix")
        case .ticket: print("O pagamento será efetuado por boleto")
        case .accountBalance: print("O pagamento será efetuado por saldo em conta")
        //default: break
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

var wesleyAccount = Account(name: "Wesley")
wesleyAccount.cardPayment(.pix)
wesleyAccount.cardPayment(PaymentMethods.ticket)
wesleyAccount.deposit(100)
let result = wesleyAccount.withdraw(20)
switch result {
case .success(let newValue): print("O saque foi um sucesso, e o saldo é de \(newValue)")
case .fail(let error): print(error)
}

enum Month: String {
    case january = "jan", february, march, april, may, june, july, august, september, october, november, december
}

var january = Month.january
print(january.rawValue)
var february: Month = .february

enum Coin: Double {
    case oneCent = 0.01
    case fiveCents = 0.05
    case tenCents = 0.1
    case twentyFiveCents = 0.25
    case fiftyCents = 0.5
}

var fiveCentsCoin = Coin.fiveCents
print(fiveCentsCoin.rawValue)

enum withdrawResult {
    case success(newValue: Double)
    case fail(error: String)
}

// --------------- Area
protocol Area {
  var area: Double { get }
}

struct Square: Area {
  var side: Double
  var area: Double {
    return side * side
  }
}

struct Triangle: Area {
  var base: Double
  var height: Double
  var area: Double {
    return (base * height) / 2
  }
}

let square = Square(side: 7)
let triangle = Triangle(base: 4, height: 3)
square.area
triangle.area

// --------------- Moeda
enum Coin2: Int {
  case OneCent = 1
  case FiveCents = 5
  case TenCents = 10
  case TwentyFiveCents = 25
  case FiftyCents = 50
}

func countCoins(_ coins: [Coin2]) -> Int {
  var add = 0
  for value in coins {
    add += value.rawValue
  }
  return add
}

let moedas: [Coin2] = [.FiveCents, .OneCent, .FiveCents, .TwentyFiveCents, .FiftyCents, .TenCents]
countCoins(moedas) // 96

// Outro jeito
enum Coin3: Int {
    case OneCent = 1
    case FiveCents = 5
    case TenCents = 10
    case TwentyFiveCents = 25
    case FiftyCents = 50

  static func countCoins(_ coins: [Self]) -> Int {
    var add = 0
    for value in moedas {
      add += value.rawValue
    }
    return add
  }
}

let coins: [Coin3] = [.FiveCents, .OneCent, .FiveCents, .TwentyFiveCents, .FiftyCents, .TenCents]
Coin3.countCoins(coins)

// --------------- Lidando com opcionais
var value: Int?
// value = 9

switch value {
case .none: print("A opcional não possui nenhum valor.")
case .some(let value): print("O valor da opcional é \(value)")
}
