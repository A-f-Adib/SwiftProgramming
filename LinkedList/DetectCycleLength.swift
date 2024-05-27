public class ListNode {
    public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }

 func detectCycleLength(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head

    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next

        if slow === fast {
            var count = 0

            repeat {
                count += 1
                slow = slow!.next
            } while  slow === fast

            print(count: \(count))
            return true
        }
    }
    return false
 }