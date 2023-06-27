import UIKit

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    let avg = (s1 + s2 + s3) / 3
    
    switch avg {
    case 90...100:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    case 60..<70:
        return "D"
    case 0..<60:
        return "F"
    default:
        return ""
    }
}

getGrade(90, 95, 93) // 92
