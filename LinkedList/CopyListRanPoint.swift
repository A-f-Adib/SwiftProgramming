
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
 
   func copyRandomList(_ head: Node?) -> Node? {
        
        if head == nil {
            return head
        }
        
        var curr = head
        
    //step-1: make a new list copy inside the list
        while let val = curr?.val {
            let newNode = Node(val)
            newNode.next = curr?.next
            curr?.next = newNode
            curr = newNode.next
        }

    //step-2: pointing the random nodes 
        curr = head
        while curr != nil {
                curr?.next?.random = curr?.random?.next
                curr = curr?.next?.next
            
        }

    // step-3: seperate two lists
        curr = head
        let newHead : Node? = head?.next
        var newCurr = newHead
        while curr != nil {
            curr?.next = newCurr?.next
            curr = curr?.next
             if curr != nil {
                newCurr?.next = curr?.next
                newCurr = newCurr?.next
             }
        }

        return newHead
    }

//Input: 

//OutPut:
let result = copyRandomList( list)
var curr = result
while curr != nil  {
    print(curr!.val)
    curr = curr!.next
    // curr = curr!.random
    // print(curr!.val)
}