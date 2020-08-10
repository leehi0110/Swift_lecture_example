import UIKit
// mutable dictionary
var emptyDic = Dictionary<String,Int>()
var emptyDic2 = [String:Int]()

if emptyDic2.isEmpty {
    print("Nothing in dictionary")
}

print(emptyDic2.count)
print(emptyDic2)

emptyDic2["ant"] = 6
emptyDic2["snake"] = 0

print(emptyDic2.count)
print(emptyDic2)

var emptyDic3 = ["ant":6 ,"snake":0, "cheetah":4]

print(emptyDic3)

emptyDic3["human"] = 2
emptyDic3["snake"] = 1

print(emptyDic3["cheetah"]!)
print(emptyDic3)

// immutable dictionary

let emptyDic4 = ["ant":6 ,"snake":0, "cheetah":4]

print(emptyDic4)


