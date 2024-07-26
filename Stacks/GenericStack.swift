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

    
}