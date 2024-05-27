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
            } while  slow!.val != fast!.val

            print("count: \(count)")
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

var result = detectCycleLength(list)
print(result)