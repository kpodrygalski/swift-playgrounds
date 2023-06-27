import UIKit

protocol Appendable {
//  Generic type of our Item -> If we pass String our function append will know that item should be of type String
    associatedtype Item
    var collection: [Item] { get set }
    func append(_ item: Item)
}

class CustomArray: Appendable {
    typealias Item = String
    var collection: [String] = []
    
    func append(_ item: String) {
        collection.append(item)
    }
}
