  
func canJump(_ nums: [Int]) -> Bool {
    
    var farthest = 0
    
    for (index, value) in nums.enumerated() {

     if  index > farthest {
          return false
     }

     farthest = max(farthest, index + value)

     if farthest >= nums.count - 1 {
          return true
     }
    }
    return true
}

//Test cases:
print(canJump([1,2,3,0,5]))
print(canJump([3,2,1,0,5]))
