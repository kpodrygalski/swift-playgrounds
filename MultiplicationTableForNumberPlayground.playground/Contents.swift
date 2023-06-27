import UIKit

func multi_table(_ number: Int) -> String {
    var result: String = ""
    let multipleBy: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        
    for value in multipleBy {
        result += "\(value) * \(number) = \(value * number)\n"
    }
    print(result)
    return result
}

multi_table(5)
