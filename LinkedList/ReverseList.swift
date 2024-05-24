class LinkedList {
    
    var head : Node?

    func insert(data: Int) {
        let newNode = Node(data: data)
        newNode.next = head
        head = newNode
    }

    func append(data: Int) {
        if head == nil {
            insert(data: data)
            return
        }

        var curr = head 
        while curr!.next != nil {
            curr = curr!.next
        }

        let newNode = Node(data: data)
        curr!.next = newNode
    }

    func printList(){
        var curr = head
        while curr != nil {
            print(curr!.data)
            curr = curr!.next
        }
    }
}

class Node {
  var data : Int
  var next : Node?

  init(data: Int) {
    self.data = data
  }
}


var list = LinkedList()
list.append(data: 1)
list.append(data: 2)
list.append(data: 3)
list.printList()