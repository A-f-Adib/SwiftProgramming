
func reorderList(_ head: ListNode?) {

    guard head != nil || head!.next != nil else { return }

        //Find the mid of the list
        var slowPtr = head
        var fastPtr = head

        while fastPtr != nil && fastPtr!.next != nil {
            slowPtr = slowPtr!.next
            fastPtr = fastPtr!.next!.next
        }


    //Reverse the second mid
        var curr = slowPtr?.next
        var prev : ListNode?
        slowPtr?.next = nil

        while curr != nil {
             let next = curr?.next
             curr?.next = prev
             prev = curr
             curr = next
        }


    //Merge two list
     var first = head
     var second = prev

     while second != nil {

        let temp1 = first?.next
        let temp2 = second?.next

        first?.next = second
        second?.next = temp1

        first = temp1
        second = temp2
     }
}


// Example Usage
func printList(_ head: ListNode?) {
    var current = head
    while let node = current {
        print(node.val, terminator: " -> ")
        current = node.next
    }
    print("nil")
}

let head = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
let solution: () = reorderList(head)
printList(head) // Output: 1 -> 5 -> 2 -> 4 -> 3 -> nil




public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
