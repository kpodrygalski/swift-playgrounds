import UIKit


// Create a function oddOne that takes an [Int] as input and outputs the index at which the sole odd number is located.
// This method should work with arrays with negative numbers. If there are no odd numbers in the array, then the method should output nil.

func oddOne(_ arr: [Int]) -> Int? {
    arr.firstIndex { $0 % 2 != 0 }
//    if let index = arr.firstIndex(where: { $0 % 2 != 0 }) {
//        return index
//    }
//    return nil
}

oddOne([2, 4, 6, 7, 10])
