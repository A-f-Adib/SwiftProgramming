func addTwoNum(_ num1: ListNode?, _ num2: ListNode?) -> ListNode? {
    var l1 = num1
    var l2 = num2

    var carry = 0
    var result : ListNode? = ListNode(-1)
    var head = result


    return head!.next
}

public class ListNode {
    public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
 }