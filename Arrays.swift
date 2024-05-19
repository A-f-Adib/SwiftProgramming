//Q1. two sum problem

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
//  print(twoSum([1,5,4], 6))

 //-------------------------------------------------------------------------------------------
//Q2. Contains duplicate (217)

func ConDup(_ nums: [Int]) -> Bool {
	var dict = [Int : Int]()
	
	for item in nums {
		if dict[item] != nil {
			 return true
		} else {
			dict[item] = 1
		}
	}
	 return false
}
//print(ConDup([0,3,0,1,4,2]))

//------------------------------------------------------------------------------------

// Q3. Contains duplicae II (219)

func ConDupTwo(_ nums: [Int], _ k: Int) -> Bool {
	var dict = [Int : Int]()
	var minDis = Int.max

	for (index, item) in nums.enumerated() {
		if dict[item] != nil {
			let prevIndex = dict[item]!
			let gap = index - prevIndex
			minDis = min(gap, minDis)

		} else {
			dict[item ] = index
		}
	}
	if minDis <= k {
		return true
	}
	return false
} 
// print(ConDupTwo([1,2,3,1,2,3], 3))
// print(ConDupTwo([1,0,1,1], 1))
//------------------------------------------------------------------------------------------------

//Q4. Remove Duplicate
func RemoveDup(_ nums:  [Int] ) -> Int {
	if nums.isEmpty { return 0 }
	
	var nums = nums
	var index = 1
	for i in 1..<nums.count {
		if nums[i-1] != nums[i] {
		   nums[index] = nums[i]
		   index += 1
		}
	}
	// print("\(nums)")
	return index
	
}
//--------------------------------------------------------------------------------------------

 // Solution 2: 
func removeDuplicates(_ nums: [Int]) -> Int {
        var emptyArray = [Int]()
        var currentNumber: Int? = nil
        var nums = nums
        
        for (index, value) in nums.enumerated() {
            if currentNumber == nil || currentNumber != value {
                currentNumber = nums[index]
                emptyArray.append(currentNumber!)
            }
        }
        
        nums = emptyArray
        return nums.count
}
// print(removeDuplicates([1,1,2]))
// print(RemoveDup([1,1,2]))

//-----------------------------------------------------------------------------------------------

// Q5. Remove Duplicates II

func removeDups2(_ nums: [Int]) -> Int {

	if nums.count <= 2 { return nums.count }
	var nums = nums
	var index = 1

	for i in 2..<nums.count {
		if nums[index - 1] != nums[index] || nums[i] != nums[index] {
			index += 1
			nums[index] = nums[i]
		}
		print("\(i)", nums)
	}
	return index + 1
}

print(removeDups2([1,1,1,2,2,3]))