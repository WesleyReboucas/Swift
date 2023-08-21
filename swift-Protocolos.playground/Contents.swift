protocol Account {
    var statement: Double { get set }
    
    func deposit(_ value: Double)
    func withdraw(_ value: Double)
}

class CheckingAccount: Account{
    var statement: Double = 0.0
    
    func deposit(_ value: Double) {
        statement += value
    }
    
    func withdraw(_ value: Double) {
        statement -= value
    }
}
