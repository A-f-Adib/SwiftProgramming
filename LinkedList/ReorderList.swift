func reorderList(_ head: ListNode?) {

    guard head != nil || head!.next != nil else { return }
        
        var slowPtr = head
        var fastPtr = head

        while fastPtr!.next != nil && fastPtr!.next!.next != nil {
            slowPtr = slowPtr!.next
            fastPtr = fastPtr!.next!.next
        }

        var mid = slowPtr
}


  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
