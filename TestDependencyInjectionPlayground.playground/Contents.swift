import UIKit

protocol ConverterProtocol {
    var currencyRate: Double { get }
    var valueToConvert: Double { get set }
    
    func convert() -> Double
}

class Converter: ConverterProtocol {
    var currencyRate: Double
    var valueToConvert: Double
    
    init(currencyRate: Double, valueToConvert: Double) {
        self.currencyRate   = currencyRate
        self.valueToConvert = valueToConvert
    }
    
    func convert() -> Double {
        return valueToConvert * currencyRate
    }
}

class TestApp {
    let converter: ConverterProtocol
    
    init(converter: ConverterProtocol) {
        self.converter = converter
    }
}

let converterInst = Converter(currencyRate: 1.23, valueToConvert: 100)
converterInst.currencyRate = 3.21

let testA = TestApp(converter: converterInst)
print(String(format: "%.2f", testA.converter.convert()))
