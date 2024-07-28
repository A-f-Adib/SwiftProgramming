
class QueueStack<T> {
    private var stack1 = Stack<T>()
    private var stack2 = Stack<T>()

    var isEmpty : Bool {
        return stack1.isEmpty
    }

    func enqueue (_ data: T) {
        while !stack1.isEmpty {
            stack2.push(stack1.pop()!)
        }

        stack1.push(data)

        while !stack2.isEmpty {
            stack1.push(stack2.pop()!)
        }
    }

    func dequeue() -> T? {
        return stack1.pop() ?? nil
    }

}



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