
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

    //For Deleting
    func delete(key : Int) -> Node? {

        if head == nil {
            return nil 
        }
        var curr = head
        var prev : Node?

        while curr != nil && curr!.data != key {
            prev = curr
            curr = curr!.next
        }

        if prev == nil && curr != nil {
            head = curr!.next
        } else if curr == nil {
            return nil
        } else {
            prev!.next = curr!.next
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

//Output:

let list = LinkedList()
print("LinkedList:")
list.insert(data: 10)
list.insert(data: 9)
list.insert(data: 8)
list.insert(data: 7)
list.append(data: 11)
list.printList()

let found = list.find(key: 10)
print("Search data: \(found?.data ?? -1 )")

let key = list.delete(key: 8)
print("After deleting:")
list.printList()
