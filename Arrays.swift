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
 print(twoSum([1,5,4], 6))

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
// print(ConDup([0,3,0,1,4,2]))


