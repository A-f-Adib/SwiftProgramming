
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


//input:


//output:
print(detectCyclePoint(list)!.val)