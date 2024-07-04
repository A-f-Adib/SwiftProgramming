
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
        return stack.isEmpty ? nil : stack.peek()
    }

    func getMin() -> Node? {
        return minStack.isEmpty ? nil : minStack.peek()
    }

}

//OutPut:

var stack = MinStack()

stack.push(19)
stack.push(16)
stack.push(18)
stack.push(21)
stack.push(15)
stack.push(20)

print(stack.top()!.data)
print(stack.getMin()!.data)
