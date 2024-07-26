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
}