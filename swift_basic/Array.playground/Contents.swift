import UIKit

// mutable Array
var emptyArray = Array<String>()
var emptyArray2 = [String]()

print(emptyArray2.count)
print(emptyArray2)

emptyArray2.append("Anna")
emptyArray2.append("Alex")

print(emptyArray2)

var emptyArray3 = ["Anna", "Alex", "Brian", "Jack"]

emptyArray3 += ["Choi"]
emptyArray3 += ["Young"]
emptyArray3 += ["Jin"]

print(emptyArray3)

emptyArray3[4...6] = ["A","B", "C"]

print(emptyArray3)
print(emptyArray3.count)


// immutable Array

let emptyArray4 = ["Anna", "Alex", "Brian", "Jack"]

print(emptyArray4)
