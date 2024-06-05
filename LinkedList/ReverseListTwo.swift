
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
 var dummyNode : ListNode
 dummyNode.next = head

 var leftPrev = dummyNode
 var curr = head

 for i in 0..<left - 1 {
    leftPrev = leftPrev.next
    curr = curr.next
 }
   
   var subListHead = curr
    var preNode : ListNode? = nil
    


      
    }

