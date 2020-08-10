import UIKit

let possibleNumber: String = "123"
let convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
    print(convertedNumber!)
}

if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
}

var serverResponseCode: Int? =  404
serverResponseCode = nil

print(serverResponseCode)

