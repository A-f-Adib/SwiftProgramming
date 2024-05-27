
public class ListNode {
    public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }

 
    func hasCycle(_ head: ListNode?) -> Bool {
         var slow = head  
         var fast = head 

        while fast != nil && fast?.next != nil {
            slow = slow?.next  
            fast = fast?.next?.next 

            if slow === fast {
                return true  
            }
        }

        return false  
    }

    
var list = ListNode(2)
list.next = ListNode(3)
let four = ListNode(4)
list.next!.next = four
list.next!.next!.next = ListNode(5)
list.next!.next!.next!.next = ListNode(6)
list.next!.next!.next!.next!.next = four

var result = hasCycle(list)
print(result)

