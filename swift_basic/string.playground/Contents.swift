import UIKit

var str = "Hello, playground \nnice to meet you\n\"I am beginner in swift\""

print("\(str)")
print("============")

var str2: String = """
Hello, playground
nice to meet you
\"I am beginner in swift
"""

print("\(str2)")

var emptystring: String = ""
var anotheremptyString: String = String()

if emptystring.isEmpty {
    print("Nothing in there")
}

let string1 = "hello"
let string2 = " there"

var welcome = string1 + string2

print(welcome)

var instruction = "look over"
instruction += string2

print(instruction)
print(instruction.count)
