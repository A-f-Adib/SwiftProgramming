 
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

// Input:
var stack = Stack()

stack.push(10)
stack.push(8)
stack.push(6)
stack.push(4)
stack.push(2)

//OutPut:
 print("Top Element: \(stack.peek()!.data)")
 
while !stack.isEmpty() {
    print(stack.pop()!.data)
   
}