  
func canJump(_ nums: [Int]) -> Bool {
        
         var finalPosition = nums.count - 1
      

    for index in stride(from: nums.count - 2, through: 0, by: -1) {
       
        
         if index + nums[index] >= finalPosition {

            finalPosition = index
         }
       
       
    }
     return finalPosition == 0
}

//Test cases:
print(canJump([1,2,3,0,5]))
print(canJump([3,2,1,0,5]))
