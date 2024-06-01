


func detectCyclePoint(_ head: ListNode?) -> ListNode?  {
   
    var slow = head
    var fast = head

    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next

        if slow === fast {
          
          slow = head

         while  slow!.val != fast!.val {
            slow = slow!.next
            fast = fast!.next
         }
        return slow
           
        }
    }
  return nil
}

var list = ListNode(2)
list.next = ListNode(3)
let four = ListNode(4)
list.next!.next = four
list.next!.next!.next = ListNode(5)
list.next!.next!.next!.next = ListNode(6)
list.next!.next!.next!.next!.next = four

print(detectCyclePoint(list)!.val)