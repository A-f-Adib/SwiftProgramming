class ArrayStack {

    private var stack = [Int]()

    func push(_ data: Int) {
        stack.append(data)
    }

    func pop() -> Int {
        return stack.isEmpty ? -1 : stack.removeLast()
    }

    func peek() -> Int {
        return stack.isEmpty ? -1 : stack.last!
    }

    func isEmpty() -> Bool {
        return stack.isEmpty
    }
}