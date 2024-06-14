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

// Input:
var stack = ArrayStack()

stack.push(5)
stack.push(4)
stack.push(3)
stack.push(2)
stack.push(1)

//OutPut:
 print("Top Element: \(stack.peek())")
 
while !stack.isEmpty() {
    print(stack.pop())
   
}
