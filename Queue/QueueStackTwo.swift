

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