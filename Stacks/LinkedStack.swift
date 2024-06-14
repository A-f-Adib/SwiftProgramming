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
        head = Node(data)
        head?.next = temp
        length += 1
    }
}