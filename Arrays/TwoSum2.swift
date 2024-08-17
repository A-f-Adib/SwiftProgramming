
//UnSorted
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
	for i in 0..<(nums.count - 1) {
        let ni = nums[i]

	for j in (i + 1)..<nums.count   {
	    if ni + nums[j] == target {
	        return [i, j]
	    }
	}
    }
    return []
}

//Sorted
 func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
         
	 var dict = [Int: Int]()

        for i in 0..<numbers.count {
            let diff = target - numbers[i]

          
            if let index1 = dict[diff] {
                return [index1 + 1, i + 1]
            } else {
                dict[numbers[i]] = i
            }
        }

        return []
}

//test cases:

 print(twoSum([1,5,4], 6))
 print(twoSum2([1,4,5], 6))
 print(twoSum([2,7,11,15], 13))
 print(twoSum2([2,7,11,15], 13))