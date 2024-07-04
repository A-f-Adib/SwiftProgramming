
class MinStack {
    private var stack : Stack
    private var minStack : Stack

    init() {
        stack = Stack()
        minStack = Stack()
    }

    func push(_ data: Int) {
        stack.push(data)

        if minStack.isEmpty() || data < minStack.peek()!.data {
            minStack.push(data)
        }
    }

    func pop() -> Node? {
        if stack.isEmpty() {
            return nil
        }

        let returnValue = stack.pop()!

        if let topMin = minStack.peek(), topMin.data == returnValue.data {
            let _ = minStack.pop()
        }
        return returnValue
    }

    func top() -> Node? {
        return stack.isEmpty() ? nil : stack.peek()
    }

    func getMin() -> Node? {
        return minStack.isEmpty() ? nil : minStack.peek()
    }

}

//Main Stack
class Node {
  var data : Int
  var next : Node?

  init(data: Int) {
    self.data = data
  }
}

class Stack {
    private var head : Node?
    private var length : Int

    init() {
        self.length = 0
    }

    func push(_ data : Int) {
        let temp = head
        head = Node(data: data)
        head?.next = temp
        length += 1
    }

    func pop() -> Node? {
        let temp = head
        head = head?.next
        length -= 1
        length = length < 0 ? 0 : length
        return temp
    }

    func peek() -> Node? {
        return head
    }

    func isEmpty() -> Bool {
        return length <= 0
    }
}

//OutPut:

var stack = MinStack()

stack.push(4)
stack.push(8)
stack.push(5)
stack.push(2)
stack.push(6)
stack.push(3)

print("Top element: \(stack.top()!.data)")
print("Min element: \(stack.getMin()!.data)")
