
class Node<T> {
    var  data : T
    var next : Node?

    init(data: T) {
        self.data = data
    }
}

class Stack<T> {
    var head : Node<T>?
    var count = 0
    var isEmpty: Bool {
        return count == 0
    }

    func push(_ data : T) {
        count += 1
        let node = Node(data : data)
        if head == nil {
            head = node
            return
        }

        let temp = head
        head = node
        head!.next = temp
    }

   func pop() -> T? {
        count -= 1
        let temp = head
       if head != nil {
         head = head!.next
       }

       return temp!.data
    }

    func peek() -> T {
        return head!.data
    }
}

//test cases:

var queue = QueueStack<Int>()
for i in 0...10 {
  queue.enqueue(i)

}

while !queue.isEmpty {
    print(queue.dequeue()!)
}