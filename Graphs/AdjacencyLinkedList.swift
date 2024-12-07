import Foundation

// Node class for Linked List
class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
        self.next = nil
    }
}

// Linked List for adjacency list
class LinkedList {
    var head: Node?
    
    // Add a node to the list
    func addNode(value: Int) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // Print the linked list
    func displayList() {
        var current = head
        while current != nil {
            print("\(current!.value)", terminator: " -> ")
            current = current!.next
        }
        print("nil")
    }
}

