
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
        if left  == right {
            return head
        } 

         var head = head
        var l = 1
        
        var leftPointer: ListNode?
        var nextPointer: ListNode? = head
        while (l < left) {
            leftPointer = nextPointer
            nextPointer = nextPointer?.next
            l += 1
        }
      
       var rightPointer: ListNode?
        var lastPointer: ListNode? = nextPointer
        while ( l <= right) {
            rightPointer = lastPointer
            lastPointer = lastPointer?.next
            
            l += 1
        }
        
        
        leftPointer?.next = nil 
        rightPointer?.next = nil


      // reverse list
        var prev: ListNode? = nil
        var next: ListNode? = nextPointer
        
        while (next != nil) {
            let forward = next?.next
            next?.next = prev
            prev = next
            next = forward
        }

          if left == 1 {
            head = prev
            nextPointer?.next = lastPointer
        } else {
            leftPointer?.next = prev
            nextPointer?.next = lastPointer
        }
        
        return head
          
}

