
  
 
func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        
         if head == nil {
            return head
        }
var dummyNode : ListNode?
 dummyNode?.next = head

 var leftPrev = dummyNode
 var curr = head

 for _ in 0..<left - 1 {
    leftPrev = leftPrev?.next
    curr = curr?.next
 }
   
   let subListHead = curr
    var preNode : ListNode? = nil

    for _ in 0...right - left {
      let nextNode = curr?.next
      curr?.next = preNode
      preNode = curr
      curr = nextNode
    }
    leftPrev?.next = preNode
    subListHead?.next = curr

    return dummyNode?.next

      
    }

