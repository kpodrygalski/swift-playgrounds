import UIKit

protocol Driving {
    func startDriving() -> ()
    func isDriving() -> Bool
    func stopDriving() -> ()
}


class Car: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return false
    }
    
    func stopDriving() {
        
    }
}

class Bicycle: Driving {
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return false
    }
    
    func stopDriving() {
        
    }
}

class SelectedVehicle {
    let vehicle: Driving
    
    init(vehicle: Driving) {
        self.vehicle = vehicle
    }
}

let selection = SelectedVehicle(vehicle: Car())
