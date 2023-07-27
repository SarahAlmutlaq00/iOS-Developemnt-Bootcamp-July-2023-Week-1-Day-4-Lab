import UIKit
//Task 1: Understanding Data Types
enum Gender {
    case male
    case female
    case other
}

struct Car {
    var make : String
    var model : String
    var year : Int
    
    
    func printSelfStruct(){
      
       print("make:\(make)model:\( model) year:\(year)")
    }
}

class Person {
    var name:String
    var age: Int
    var gender: Gender
    var car : Car
    
    init(
        name:String,
        age: Int,
        gender: Gender,
        car:Car){
            self.name=name
            self.age=age
            self.gender = gender
            self.car = car
        }
    
    func printSelfClass(){
        print("name:\(name) age:\( age) gender:\(gender) car:\(car)")
    }
}

var myEnum = Gender.female
var myEnum1 = Gender.male
print(myEnum.self)
print(myEnum1.self)
print("---------------------------------")
var myCar  = Car(make: "china " , model: "BMW ", year: 2021)
var myCar1  = Car(make: "Korea ", model: "kia ", year: 2023)
myCar.printSelfStruct()
myCar1.printSelfStruct()
print("---------------------------------")
var person = Person(name: "sarah", age: 13, gender:.female, car:myCar)
var person1 = Person(name: "turki", age: 20, gender:.male, car: myCar1)
person.printSelfClass()
person1.printSelfClass()

//Task 2: Memory Management

class BankAccount{
    var balance:Double
    init(balance :Double){
        self.balance=balance
    }

    func  depositMoney (deposit:Double){
        balance += deposit
        print("the balances after the deposit:\(balance)")
    }
    
    func withdrawMoney( withdraw :Double){
        if balance >= withdraw{
            balance -= withdraw
            print("the balances after the withdraw:\(balance)")
        }
        else{
            print("The process is rejected")
        }
    }
    
}
var banAccount1 = BankAccount(balance: 5000)
var banAccount2 = BankAccount(balance: 3000)
banAccount1.depositMoney(deposit: 500)
banAccount1.withdrawMoney(withdraw: 50)
banAccount2.depositMoney(deposit: 70)

//Extra Point 1: Error Handling

enum LoginError:Error{
    case invalidUsername
    case invalidPassword
}

func login(username:String , password:String) throws{
    if username.isEmpty{
        throw LoginError.invalidUsername
    }
    if password.isEmpty{
        throw LoginError.invalidPassword
    }
   return print("is Login")
}
do{
     try login(username: "sarah_Almutlaq", password: "84893c")
}
catch LoginError.invalidUsername{
   
    print("User invalid")
}
catch LoginError.invalidPassword{
    
    print("password invalid ")
}
catch{
    print(error)
}

do{
     try login(username: "Norah", password: "")
}
catch LoginError.invalidUsername {
    
    print("User invalid")
}
catch LoginError.invalidPassword {
    
    print("password invalid ")
}
catch{
    print(error)
}

