 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy : ListNode? = ListNode(-1)
        dummy?.next = head
        
        var firstPtr = dummy
        var secondPtr = dummy

        for _ in 0..<n {
            secondPtr = secondPtr?.next
        }

        while secondPtr?.next != nil {
            firstPtr = firstPtr?.next
            secondPtr = secondPtr?.next
        }

        firstPtr?.next = firstPtr?.next?.next
        return dummy?.next
}

//input:

//output:
let head = removeNthFromEnd(num1, 3)
 var curr = head
 while curr != nil {
    print(curr!.val)
    curr = curr!.next
 }