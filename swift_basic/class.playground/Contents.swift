import UIKit

class Vehicle {
    var currentSpeed: Double = 0.0
    var description: String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()
someVehicle.currentSpeed = 1.0
print(someVehicle.description)

someVehicle.makeNoise()

class Bicycle: Vehicle {
    var hasBasket: Bool = false
    
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true

someBicycle.currentSpeed = 15.0
print(someBicycle.description)
print(someBicycle.hasBasket)

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
    override var description: String {
        return "Traveling at \(currentSpeed) mile per hour, number of passenger : \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 21.0

print("Tandem : \(someTandem.description)")

class Train : Vehicle {
    override func makeNoise() {
        print("Cho Cho")
    }
}

let someTrain = Train()

someTrain.makeNoise()

class Car : Vehicle {
    var gear = 1
    
    override init() {
        print("Car")
    }
    init(newGear:Int){
        self.gear = newGear
    }
}

let someCar = Car()

let someCar2 = Car(newGear: 5)
print(someCar2.gear)



