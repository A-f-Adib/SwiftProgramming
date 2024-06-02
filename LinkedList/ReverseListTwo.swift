

  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 



    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        
         if head == nil {
            return head
        }
        
       
        let i = left
        let j = right
       
        var curr = head
        var curr2 = curr?.next

        while curr?.val != i && curr2?.val != j {
          curr = curr?.next
          curr2 = curr2?.next

          if curr?.val == i {
          curr?.val = j
        } 
        if curr2?.val == j {
          curr2?.val = i
        } 
        }
      

        curr = head
        return curr


        
    }

var list = ListNode(2)
list.next = ListNode(3)
let four = ListNode(4)
list.next!.next = four
list.next!.next!.next = ListNode(5)
list.next!.next!.next!.next = ListNode(6)

let result = reverseBetween(list, 3, 5)
var curr = result
while curr != nil  {
    print(curr!.val)
    curr = curr!.next
}