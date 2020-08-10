import UIKit

var age: Int = 0

while age < 5 {
    age += 1
    print(age)
}

let names: Array<String> = ["Anna", "Brain", "Jack"]

for name in names {
    print(name)
}

let numberOfLegs: Dictionary<String, Int> = ["ant":6, "snake":0, "cheetah":4]

for (key, val) in numberOfLegs {
    print("\(key)'s have \(val) legs.")
}

for index in 1...5 {
    print("\(index) time 5 is \(index*5)")
}

for _ in 1...5 {
    print("hi")
}

let minutes = 60

for tickMark in 0..<minutes {
    print(tickMark)
}

let minutesInterval  = 5

for tickMark in stride(from: 0, to: minutes, by: minutesInterval){
    print(tickMark)
}

for tickMark in stride(from: 0, through: minutes, by: minutesInterval){
    print(tickMark)
}
