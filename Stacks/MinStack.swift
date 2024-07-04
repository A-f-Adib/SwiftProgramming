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

}