import UIKit

func bmi(_ weight: Int, _ height: Double) -> String {
    let result = Double(weight) / pow(height, 2)
    print(result)
    
    if result <= 18.5 {
        return "Underweight"
    } else if result <= 25.0 {
        return "Normal"
    } else if result <= 30 {
        return "Overweight"
    } else {
        return "Obese"
    }

}

bmi(50, 1.80)

