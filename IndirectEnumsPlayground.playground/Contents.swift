import UIKit

//    Indirect allow us to hold recursively hold a reference to another enum case

indirect enum State {
    case on(Int)
    case off(Int)
    case other(State)
}

let bulb = State.other(State.on(10))

// Linked List
// 1 -> 2 -> 3 -> 4 -> 5

// head = 1
// nodes: [2, 3, 4]
// tail = 5

indirect enum LinkedListNode {
    case head(value: Int, node: LinkedListNode)
    case tail(value: Int)
    case node(value: Int, next: LinkedListNode)
}

let myNode = LinkedListNode.head(value: 1, node: LinkedListNode.node(value: 2, next: LinkedListNode.node(value: 3, next: LinkedListNode.node(value: 4, next: LinkedListNode.tail(value: 5)))))
