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

    
}