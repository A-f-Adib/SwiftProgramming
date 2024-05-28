func addTwoNum(_ num1: ListNode?, _ num2: ListNode?) -> ListNode? {
    var l1 = num1
    var l2 = num2

    var carry = 0
    var result : ListNode? = ListNode(-1)
    var head = result

    while l1 != nil || l2 != nil {

        if l1 != nil {
            carry = carry + l1!.val
            l1 = l1!.next
        }

        if l2 != nil {
            carry = carry + l2!.val
            l2 = l2!.next
        }

        result!.next = ListNode(carry % 10)
        carry = carry / 10
        result = result!.next
    }

    if carry > 0 {
        result!.next = ListNode(carry)
    }

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