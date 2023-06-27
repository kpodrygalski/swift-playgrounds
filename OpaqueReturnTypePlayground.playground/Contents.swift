import UIKit

protocol Vehicle {
    associatedtype Identifier
    var id: Identifier { get }
}

struct Car: Vehicle {
    let id: String = UUID().uuidString
}

struct Bicycle: Vehicle {
    let id: Int = Int.random(in: 1...100)
}

let carOne: Car = Car()
let bikeOne: Bicycle = Bicycle()

func getFavouriteVehicle() -> some Vehicle {
    return Car()
}

print(getFavouriteVehicle())

print(carOne)
print(bikeOne)
