import UIKit

// MARK: contains, forEach, sorted

// MARK: Model
struct Employee {
    let name: String
    let hourlyWage: Double
}


// MARK: Contains
let numbers = [107, 86, 51, 74, 91, 184, 68]
let containsNumSeventyFour = numbers.contains(74)

let employees: [Employee] = [
    Employee(name: "Mary", hourlyWage: 22.50),
    Employee(name: "Jack", hourlyWage: 17.50),
    Employee(name: "Sally", hourlyWage: 22.90),
    Employee(name: "Fred", hourlyWage: 12.50),
]

let needRaise = employees.contains(where: { $0.hourlyWage < 15 })

let testNumbers = [1, 2, 3, 4, 5, 6, 8, 9, 10]
testNumbers.forEach { (number) in
    number.isMultiple(of: 2) ? print("\(number) is even") : print("\(number) is odd")
}

let anotherTestNumber = [1, 2, nil, 4, nil, 6, nil, 7, nil, nil, 10]
anotherTestNumber.forEach { number in
    guard let number = number else { return }
    print("\(number) squared is: \(number * number)")
}

// MARK: Sorted
let unsortedNumbers = [10, 5, 2, 8 ,3, 9, 4, 7, 6, 1]
let sortedNumbers = unsortedNumbers.sorted()
//let reverseSortedNumber = unsortedNumbers.sorted { (num1, num2) -> Bool in
//    num1 > num2
//}
let reverseSortedNumber = unsortedNumbers.sorted { $0 > $1 }
let mostShortedSort = unsortedNumbers.sorted(by: <)
