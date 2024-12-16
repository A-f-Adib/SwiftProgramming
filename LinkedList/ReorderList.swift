func reorderList(_ head: ListNode?) {

    guard head != nil || head!.next != nil else { return }
        

        //Find the mid of the list
        var slowPtr = head
        var fastPtr = head

        while fastPtr!.next != nil && fastPtr!.next!.next != nil {
            slowPtr = slowPtr!.next
            fastPtr = fastPtr!.next!.next
        }


    //Reverse the second mid
        var curr = slowPtr
        var prev : ListNode?
        
        while curr?.next != nil {
             let next = curr?.next
             curr?.next = prev
             prev = curr
             curr = next
        }


}


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
