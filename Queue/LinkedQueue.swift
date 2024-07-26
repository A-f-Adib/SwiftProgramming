class  Node {
    var data : Int
    var next: Node?

    init(_ data : Int) {
        self.data = data
    }     
}

class LinkedQueue {
    private var head : Node?
    private var tail : Node?
    private var length = 0
    
}