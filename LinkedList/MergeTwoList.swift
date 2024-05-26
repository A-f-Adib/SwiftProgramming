func mergeTwoList(_ l1 : Node?, _l2: Node?) -> Node? {

    var list1 = l1
    var list2 = l2

    var result : Node? = Node(data: -1)
    var head = result

    while list1 != nil && list2 != nil {
        if list1!.data < list2!.data {
            result!.next = list1
            list1 = list1!.next
        } else {
            result!.next = list2
            list2 = list2!.next
        }
        result = result!.next
    }

    if list1 != nil {
        result!.next = list1
    } else {
        result!.next = list2
    }

    head = head!.next
    return head
}

class Node {
  var data : Int
  var next : Node?

  init(data: Int) {
    self.data = data
  }
}

//Input:
var list1 = Node(data: 1)
list1.next = Node(data: 3)

var list2 = Node(data: 1)
list2.next = Node(data: 2)
list2.next!.next = Node(data: 3)
list2.next!.next!.next = Node(data: 4)
