import UIKit

//Given a 2D ( nested ) list ( array, vector, .. ) of size m * n, your task is to find the sum of the minimum values in each row.
//
//For Example:
//
//[ [ 1, 2, 3, 4, 5 ]        #  minimum value of row is 1
//, [ 5, 6, 7, 8, 9 ]        #  minimum value of row is 5
//, [ 20, 21, 34, 56, 100 ]  #  minimum value of row is 20
//]
//So the function should return 26 because the sum of the minimums is 1 + 5 + 20 = 26.
//
//Note: You will always be given a non-empty list containing positive values.
//

let dataSet: [[Int]] = [[2,8,5,4,3], [8,3,4,5,6]]

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
//    var mins: [Int] = []
//
//    numbers.forEach { arrayRow in
//        if let minValue = arrayRow.min() {
//            mins.append(minValue)
//        }
//    }
//
//    return mins.reduce(0, +)
    return numbers.compactMap{$0.min()}.reduce(0, +)
}

sumOfMinimums(dataSet)
