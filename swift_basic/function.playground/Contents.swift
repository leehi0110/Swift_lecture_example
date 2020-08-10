import UIKit

func sayHello () {
    print("Hello")
}

sayHello()

func sayHello2 (name: String) {
    print("Hello \(name)")
}

sayHello2(name: "choi")

func sayHello3(name: String) -> String {
    return "Hello " + name
}

print(sayHello3(name: "Lee"))

func sayHello4 (name: String = "Park") {
    print("Hello \(name)")
}

sayHello4(name: "Kim")

func sayHello5(insertYourName name: String,internationalAge age:Int) {
    print("\(name) is \(age) years old.")
}

sayHello5(insertYourName: "Lee", internationalAge: 18)

func sayHello6(_ name: String, _ age: Int) -> String {
    return "\(name) is \(age) years old."
}

print(sayHello6("Park", 18))
