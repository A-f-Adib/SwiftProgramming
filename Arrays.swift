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
// sol-2
func removeDups(_ nums: inout [Int]) -> Int {
        var i = 0
        for num in nums {
            if i < 2 || num != nums[i - 2] {
                nums[i] = num
                i += 1
            }
        }
        return i
}
//print(removeDups2([1,1,1,2,2,3]))
//-------------------------------------------------------------------------------------------------

//Q6. Remove Element
func RemoveElement(_ nums : [Int], _ val: Int) -> Int {
	let nums = nums
	if nums.count <= 0 { return nums.count } 

    var emptyArray = [Int]()
	for num in nums {
		if num != val {
			emptyArray.append(num)
		}
	}
	print(emptyArray)
	return emptyArray.count

}
// print(RemoveElement([0,1,2,2,3,0,4,2], 2))
// print(RemoveElement([3,2,2,3], 3))
//-------------------------------------------------------------------------------------------

//Q7. Remove zeros
func removeZeros(_ nums: [Int] ) -> [Int] {
	
	var nums = nums
	var index = 0

	for num in nums {
		if num != 0 {
			nums[index] = num
			index += 1
		}
	}
	while index < nums.count {
		nums[index] = 0
		index += 1
	}
	return nums
}
//print(removeZeros([0,1,2,3,0,5,6]))
//---------------------------------------------------------------------------------------

//Q8. FizzBuzz
func fizzBuzz(_ num: Int) -> [String] {
        
        var result = [String]()

        for i in 1...num {
		 if (i % 3 == 0 && i % 5 == 0) {
			result.append("FizzBuzz")
		}
		  else if i % 3 == 0 {
			result.append("Fizz")
		} else if i % 5 == 0 {
			result.append("Buzz")
		} else{
			result.append("\(i)")
		}
	}
    return result
    }

// print(fizzBuzz(15))
//-----------------------------------------------------------------------------------------------

//Q9. Palindromic string
func PalindromicString(_ str: String) -> Bool {
	let arr = Array(str)
	var i = 0
	var j = arr.count - 1

	while i <= j {
		if arr[i] == arr [j] {
			i += 1
			j -= 1
		} else {
			return false
		}
	}
	return true
}
// print(PalindromicString("fool"))
//------------------------------------------------------------------------------------------------

//Q10. First unique character in a string

func firstUniqueC(_ str : String) -> Int {
	let arr = Array(str)
	var dict = [Character : Bool ]()

	for item in arr {
		if dict[item] != nil {
			dict[item] = false
		} else {
			dict[item] = true
		}
	}

	for (index, item) in arr.enumerated() {
		if dict[item] == true {
			return index
		}
	}
	return -1

}
// print(firstUniqueC("abcbda"))
//------------------------------------------------------------------------------

//Q11. Valid Palindrome II

func PalindromicString2(_ s: String) -> Bool {
let arr = Array(s)

return internalFunc()
}

func internalFunc() -> Bool {

}
 print(PalindromicString2("deeeem"))
