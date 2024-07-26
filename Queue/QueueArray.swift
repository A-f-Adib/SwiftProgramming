
struct  QueueArray {

    private var arr : [Int]

    var isEmpty : Bool {
        return arr.isEmpty
    }

    var peek : Int? {
        return arr.first
    }

    init() {
        arr = []
    }

    mutating func enqueue(_ data : Int) {
        arr.append(data)
    }

    mutating func dequeue() -> Int {
        return arr.isEmpty ? -1 : arr.removeFirst()
    }

    mutating func clear() {
        return arr.removeAll()
    }
}

// test cases:

var queue = QueueArray()

for i in 0...10 {
    queue.enqueue( i)
}

while !queue.isEmpty {
    print("\(queue.dequeue())")
    
}