import UIKit

// MARK: Filter, Reduce, Remove All

// MARK: Model
struct Employee {
    let name: String
    let salary: Double
}

struct Person {
    let name: String
    let age: Int
}

// MARK: Reduce
// MARK: Arrays
var numbers = [1, 2, 3, 4, 5, 6]
// .reduce(startValue) { (accumulatedValue, value) -> T in ...}
//let sumOfNumbers = numbers.reduce(0) { (currentSum, number) -> Int in
//    currentSum + number
//}

let sumOfNumbers = numbers.reduce(0, +)
let procuct = numbers.reduce(1, *)

let numberGroups = [[2, 6, 8, 10], [18, 5, 11], [5, 15, 8, 11, 18]]
let groupSum = numberGroups.flatMap({ $0 }).reduce(0, +)

let employees: [Employee] = [
    Employee(name: "Mary", salary: 100_110),
    Employee(name: "Jack", salary: 50_000),
    Employee(name: "Sally", salary: 75_500),
    Employee(name: "Fred", salary: 48_900),
]

let totalSalaryAmount = employees.reduce(0.0) { $0 + $1.salary }

// MARK: Dictionaries

let employeeDict: [String:Double] = ["Mary": 100_000, "Jack": 50_000, "Sally": 75_500, "Fred": 48_900]
//let empTotalSalary = employeeDict.reduce(0.0) { (currentTotal, employeeTuple) -> Double in
//    currentTotal + employeeTuple.value
//}
let empTotalSalary = employeeDict.reduce(0.0) { $0 + $1.value }
let employeeNames = employeeDict.reduce("") { $0 + $1.key + " " }


// MARK: Sets
let weights: Set = [98.5, 102.7, 100.2, 88.4]
let sumOfWeights = weights.reduce(0, +)

let heavyWeight = weights.reduce(0) { $1 > 100 ? ($0 + $1) : $0 }

// MARK: Filter
let newNumbers = numbers.filter({ $0 < 5 })

let names = ["Alice", "Bert", "Allen", "Samantha", "Ted", "albert"]
let foundANames = names.filter({ $0.uppercased().prefix(1) == "A" })
let firstANames = names.filter({ $0.uppercased().prefix(1) == "A" }).first

let people: [Person] = [
    Person(name: "Curly", age: 16),
    Person(name: "Larry", age: 22),
    Person(name: "Moe", age: 12),
    Person(name: "Shemp", age: 25)
]

let adults = people.filter({ $0.age > 19 && $0.name.uppercased().prefix(1) == "L" })
let children = people.filter({ $0.age < 19 }).map({ $0.name })

// MARK: Filter and Dictionaries
let peopleDict: [String:Int] = ["Curly": 16, "Larry": 22, "Moe": 12, "Shemp": 25]
let adultDict = peopleDict.filter({ $0.value >= 19 })

// MARK: Filter and Sets
let lightWeights = weights.filter({ $0 < 100 })

// MARK: Remove All
//numbers.removeAll()
numbers.removeAll { $0 < 5 }

