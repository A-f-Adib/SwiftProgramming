
 public class Node {
     public var val: Int
     public var next: Node?
     public var random: Node?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
    	 self.random = nil
    }
 }


class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        

        var curr = head
        var newNode : Node?

        while curr != nil {
            newNode = curr.val
            newNode.next = curr.next
            curr.next = newNode
            curr = newNode.next
        }

        curr = head
        while curr != nil {
            if curr.random != nil {
                curr.next.random = curr.random.next
                curr = curr.next.next
            }
        }

        curr = head
        var newHead : Node? = head.next
        var newCurr = newHead
        while curr != nil {
            curr.next = newCurr!.next
            curr = curr.next
             if curr != nil {
                newCurr.next = curr.next
                newCurr = newCurr.next
             }
        }

        return newHead
    }
}