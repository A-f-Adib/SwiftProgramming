
public class ListNode {
    public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }

func detectCyclePoint(_ head: ListNode?) -> ListNode?  {
   
    var slow = head
    var fast = head

   
  return nil
}


//input:
var list = ListNode(2)
list.next = ListNode(3)
let four = ListNode(4)
list.next!.next = four
list.next!.next!.next = ListNode(5)
list.next!.next!.next!.next = ListNode(6)
list.next!.next!.next!.next!.next = four

//output:
print(detectCyclePoint(list)!.val)