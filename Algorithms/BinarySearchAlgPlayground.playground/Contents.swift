import UIKit

let numbers: [Int] = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 34, 44, 58, 65]

func binarySearch(array: [Int], key: Int) -> Bool {
//    Check if array contains values
    if array.count == 0 { return false }
    
//    Helper variables
    let minIndex = 0 // min. index in array = 0
    let maxIndex = array.count - 1 // max. index in array = array.lastIndex || array.count - 1
    let midIndex = maxIndex / 2 // mid. index = maxIndex / 2
    let midValue = array[midIndex] // mid. value = array[midIndex]
    
//  if key is less then 1 we know the key will not be there and if is greeter then maxIndex key will also not be there
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not in the array.")
        return false
    }
    
//    if key is greeter then the mid. value we create new array which is a slice of our input array
//    slice = midIndex +1...maxIndex
//    and again we run the binary search (recursively)
    if key > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, key: key)
    }
    
//    if key is less then the mid. value we create new array which is a slice of our input array
//    slice = minIndex...midIndex - 1
//    and again we run the binary search (recursively)
    if key < midValue {
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, key: key)
    }
    
//    if key == midValue -> we found the value
    if key == midValue {
        print("\(key) found in the array.")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 10)
