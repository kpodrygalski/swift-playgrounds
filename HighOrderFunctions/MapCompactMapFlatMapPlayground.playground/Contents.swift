import UIKit


// MARK: Model
struct User {
    let name: String
    let age: Int
}

// MARK: Map -> Transform each object in array. Map can return nil.
// MARK: Arrays
let numbers = [1, 2, 3, 4, 5, 6]
let doubledNumbers = numbers.map({ $0 * 2 }) // $0 -> means --> number from array

let pairs = [[1,5], [7,9], [11, 15]]
let sums = pairs.map({ $0[0] + $0[1] })

let groups = [[1,3,9,11], [5, 7]]
let groupSum = groups.map { (group) -> Int in
    var sum = 0
    for num in group {
        sum += num
    }
    return sum
}

let stringValues = ["1", "two", "3", "4", "five"]
let names = stringValues.map({ Int($0) })

let users: [User] = [
    User(name: "Curly", age: 15),
    User(name: "Larry", age: 21),
    User(name: "Moe", age: 18),
]

let userNames = users.map({ $0.name })

// MARK: Dictionaries & Sets
let tempAvgC: [String:Double] = [
    "Spring": 13,
    "Summer": 22,
    "Fall": 14,
    "Winter": 7
]

let tempAvgF = tempAvgC.map({ [$0: $1 * 9 / 5 + 32]})

let dataDict: [String:Int] = ["Curly": 18, "Larry": 22, "Moe": 7]
let newUsers = dataDict.map { User(name: $0, age: $1) }

let fahrTemps: Set = [-40, 0, 32, 90, 212]
let celsTemp = Set(fahrTemps.map({ ($0 - 32) * 5 / 9 })) // Set<Int>

// MARK: Compact Map & Flat Map
// MARK: Compact Map returns nonoptional values when transforming.
let intValues = stringValues.compactMap({ Int($0) })

// MARK: Flat Map
// MARK: Receive a single-level collection

let flatValues = groups.flatMap({ $0 })
