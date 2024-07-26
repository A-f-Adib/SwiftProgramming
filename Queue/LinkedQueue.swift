class  Node {
    var data : Int
    var next: Node?

    init(_ data : Int) {
        self.data = data
    }     
}

class LinkedQueue {
    private var head : Node?
    private var tail : Node?
    private var length = 0

    func enqueue(_ data : Int) {
        length += 1
        let node = Node(data)
        if head == nil {
            head = node
            tail = node
            return
        }
        tail!.next = node
        tail = node
    }

    func dequeue() -> Node? {
        if head == nil {
            return nil
        }
        length -= 1
        let node = head
        head = head!.next
        return node
    }

    func peek() -> Node? {
        return head
    }

    var isEmpty : Bool {
        return length == 0
    }
}

// test cases:

var queue = LinkedQueue()

for i in 0...10 {
    queue.enqueue(i)
}

print("peek element: \(queue.peek()!.data)")

while !queue.isEmpty {
    print("\(queue.dequeue()!.data)")
}

