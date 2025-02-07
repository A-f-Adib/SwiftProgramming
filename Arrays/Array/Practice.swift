
   
    func hIndex(_ citations: [Int]) -> Int {
        
        var finalValue = 0
        let sortedArray : [Int] = citations.sorted(by: >)

        for (index, value) in sortedArray.enumerated() {
            if value >= index + 1 {
                finalValue = index + 1
               
            } 
        }
         return finalValue
    }


  
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

// Output:
print(hIndex([3,0,7,2,5]))