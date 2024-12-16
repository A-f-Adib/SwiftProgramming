

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var numMap = [Int: Int]()
    
    for i in 0..<nums.count {

        let complement = target - nums[i] 
        
        if let index = numMap[complement] { // Check if the complement is already in the map

            return [index, i] // Return the indices of the two numbers
        }
        
        numMap[nums[i]] = i // Store the current number and its index
    }
    
    return [] 
}

 print(twoSum([1,5,4], 6))