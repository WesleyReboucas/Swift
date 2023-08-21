// Variáveis ----------------------------------------------------------------------

typealias Studant = String

var initialLetterName: Character = "W"
var name: Studant = "Wesley"
var surname: Studant = "Wes"
var old: Int = 25
var tall: Double = 1.70
var isLike: Bool  =  true
print("Olá, meu nome começa com a letra \(initialLetterName), me chamo \(name), tenho \(old) anos, tenho \(tall) metros de altura e se eu gosto, bom a resposta é \(isLike)")


var celsius: Double = 26.0
var fahrenheit: Double = celsius * 9/5 + 32
print("Hoje a temperatura é de \(celsius) celsius ou \(fahrenheit) fahrenheit")

// Laços ----------------------------------------------------------------------

var student1: Int = 10
var student2: Int = 10
var student3: Int = 7
var torutgaClass: Int = (student1+student2+student3)/3

torutgaClass <= 6 ? print("A média da turma Tortuga é ruim: \(torutgaClass)") : print("A média da turma Tortuga é boa: \(torutgaClass)")
if torutgaClass >= 9 {
    print("Vai voar para o próximo ano!")
}
else if  torutgaClass >= 7 && torutgaClass <= 8{
    print("Vai passar para o próximo ano :)")
}
else{
    print("Infelizmente a turma NAO vai passar :(")
}

var closedRange = 10...20
var semiOpenRange = 10..<20 // Não inclue o 20

var number = Int.random(in: 0...20)
switch number {
    case 0...10: print("Número entra 0 e 10")
    case 10..<20: print("Número entre 10 e 20")
default: print("Número maior que 20")
}
switch number {
    case let x where x % 2 == 0: print("O número \(number) é par")
    case _ where number % 2 != 0: print("O número \(number) é impar")
default: break
}

var animal = "tigre"
switch animal {
case "Cachorro", "Gato", "Papagaio": print("\(animal) é um animal doméstico")
case "Leão", "Jacaré", "Tigre": print("\(animal) é um animnal selvagem")
default: print("Tipo do animal desconhecido")
}

for i in 1...2{ // Pode usar "_" caso não use a variável "i" dentro do For
    print("[\(i)] Amo Swift")
}

var result = 1
var count = 0
repeat {
    result += 3
    count += 1
} while(count < 5)
print(result)

for i in 1...3 {
  if i % 2 == 0 {
    print(i)
  }
}

// Funções ----------------------------------------------------------------------
var number1 = 70
var number2 = 30

func  add(number1: Int, number2: Int ){
    var result = number1 + number2
    print("\(number1) + \(number2) é igual a \(result)")
}

func subtract(_ number1: Int, _ number2: Int){
    var result = number1 - number2
    print("\(number1) - \(number2) é igual a \(result)")
}

func divide(n1 number1: Int, n2 number2: Int){
    var result = number1 / number2
    print("\(number1) / \(number2) é igual a \(result)")
}

func multiply(_ number1: Int, _ number2: Int) -> Int {
    var result = number1 * number2
    return result
}

add(number1: number1, number2: number2)
subtract(number1, number2)
divide(n1: number1, n2: number2)
var multiplyNumber = multiply(number1, number2)
print("\(number1) / \(number2) é igual a \(multiplyNumber)")

// copy-in copy-out - Alterar valor do parametro através da função

func addNumber(_ number: inout Int) {
    number += 1
    print(number)
}
var value = 10
addNumber(&value)
print(value) // 11


// Opcionais ----------------------------------------------------------------------

// Forçar o desembrulho
var name1: String?
name = "Wesley"

if name1 != nil {
  print(name1!)
}

// Optional Binding
var optionalName: String?
var optionalLastName: String?
optionalName = "Wesley"
optionalLastName = "Reboucas"

if let name = optionalName, let lastName = optionalLastName {
  print(name)
  print(lastName)
}

// Optional Chaining
if let firstCaractere = name1?.first {
  print(firstCaractere)
}

// Guard let
func authenticator(name: String?, password: String?) {
  guard let name = name, let password = password else { return }
  print(name)
  print(password)
}

authenticator(name: "Wes", password: "1234")

// Nil coalescing operator
var optionalName1: String?
optionalName = "Wesley"
print(optionalName ?? "Inexistente")

func prime(_ number: Int) -> Bool {
   let start = 2
   for i in start..<number {
       if number % i == 0 {
                 return false
             }
   }
   return true
}
prime(6) // false
prime(7) // true

func showName(name: String?) {
    guard let name = name else {
        print("Nome não identificado")
        return
    }
    print(name)
}
showName(name: "Wesley")
showName(name: nil)

func splitBill(_ total: Double, _ numberPeople: Int) -> Double {
  let valueWithTax = total * 1.1
  return valueWithTax / Double(numberPeople) // É necessário transformar em Double pois não é possível fazer uma divisão Double com Int, precisa ser Double e Double ou Int e Int
}

let totalForWitch = splitBill(120, 4)
print(totalForWitch)

// Coleções ----------------------------------------------------------------------

var gradeArray: [Double] = [9.0, 8.0, 7.5, 6.1, 7.3, 2.9, 3.7]
var emptyArray = Array<String>()
gradeArray[0]

gradeArray.isEmpty
emptyArray.isEmpty

gradeArray.count
gradeArray.min()
gradeArray.max()
gradeArray.contains(9.0)
gradeArray.firstIndex(of: 8.0)

gradeArray.append(10)
gradeArray += [5.6]
gradeArray.insert(3.6, at: 1)
print(gradeArray)

var removeAndGetFirstArray = gradeArray.removeFirst()
var removeAndGetLastArray = gradeArray.removeLast()
var removeAndGetEspecificElementArray = gradeArray.remove(at: 3)

print(removeAndGetFirstArray)
print(removeAndGetLastArray)
print(removeAndGetEspecificElementArray)
print(gradeArray)

for grade in gradeArray{
    print(grade)
}

for i in 0..<gradeArray.count{
    print(gradeArray[i])
}

for (index, element) in gradeArray.enumerated(){
    print("Posição: \(index) - Elemento: \(element)")
}

var familyName: Set<String> = ["Olavo", "Iracema", "Wesley", "Eloisy"] // Desordenado, não há index, não permite duplicatas

familyName.contains("Wesley")
familyName.insert("Victoria")
familyName.remove("Wesley")

// Tuplas
typealias Coordinates = (x: Int, y: Double, z: Double)
var coordinates: Coordinates = (x: 3, y:  5.7, z: 9.3)
coordinates.0
coordinates.1
coordinates.2
coordinates.x
coordinates.y
coordinates.z

var user = (name: "Wesley", old: 25)
user.name
user.old

var (name3, old3) = user // Para ignorar alguma variável => var (_, old3) = user
print(name3)
print(old3)

// Dicionários ----------------------------------------------------------------------

var points = [
    "Victoria": 13,
    "Wesley": 17,
    "Eloisy": 14
]

var people: [String: Int] = [:]
people.reserveCapacity(5)

print(points["Wesley"])
points.isEmpty
points.count

points["Iracema"] = 22
print(points)

points["Victoria"] = 25
print(points)

points.updateValue(25, forKey: "Wesley")
print(points)
points.updateValue(22, forKey: "Olavo") // Quando não há o valor, ele cria
print(points)

points["Wesley"] = nil
print(points)
points.removeValue(forKey: "Victoria")
print(points)

for (name, points) in points {
    print("O usuário \(name) fez \(points) pontos")
}

for name in points.keys {
    print("Olá \(name)")
}

for points in points.values {
    print("\(points) pontos")
}

func calculateArithmeticMean(_ grades: [Double]) -> Double {
    var addGrades = 0.0
    let elementsCount = grades.count
    for grade in grades {
        addGrades += grade
    }
    return addGrades / Double(elementsCount)
}

var eloisyGrades = [7.1,  9.2,  7.3,  3.2]
let arithmeticMean = calculateArithmeticMean(eloisyGrades)

func showState(_ states: [String: String]) {
    for state in states.values {
        if state.count > 8 {
            print(state)
        }
    }
}

let states = ["BA": "Bahia",
               "CE": "Ceará",
               "RN": "Rio Grande do Norte"]
showState(states)
