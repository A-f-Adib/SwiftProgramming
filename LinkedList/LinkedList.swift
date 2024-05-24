
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

    //For searching
    func find(key: Int) -> Node? {
        var curr = head

        while curr != nil && curr!.data != key {
            curr = curr!.next
        }
        return curr
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

let list = LinkedList()
list.insert(data: 10)
list.insert(data: 9)
list.insert(data: 8)
list.printList()
// list.append(data: 11)
// list.printList()

let found = list.find(key: 11)
print("Search data: \(found?.data ?? -1 )")