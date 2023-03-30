import UIKit

var numbers: [Int] = []

// Fill out array with numbers from 1...100
for number in 1...100 {
    numbers.append(number)
}


/// Check numbers from array.
/// - Parameter numbers: Array of Int to check out.
/// - Returns: Print outs results from printResult function.
func fizzBuzz(of numbers: [Int]) -> () {
    for number in numbers {
        printResult(forNumber: number)
    }
}

/// Display information about number which is divided by 3, 5 or 15.
/// - Parameter number: Number to check.
/// - Returns: Print out Fizz, Buzz or FizzBuzz for given number under test.
func printResult(forNumber number: Int) -> () {
    if number % 5 == 0 && number % 3 == 0 {
        print("\(number) -> FizzBuzz")
    } else if number % 5 == 0 {
        print("\(number) -> Bazz")
    } else if number % 3 == 0 {
        print("\(number) -> Fizz")
    } else {
        print("\(number)")
    }
}

fizzBuzz(of: numbers)
