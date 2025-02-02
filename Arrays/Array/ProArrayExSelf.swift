/*
Given an integer array nums, return an array answer such that answer[i] is equal to the product 
of all the elements of nums except nums[i].
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:
Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
*/

//Approach-1:
 func productExceptSelf(_ nums: [Int]) -> [Int] {

    var left : [Int] =  Array(repeating: 1, count: nums.count)
    var right: [Int] =  Array(repeating: 1, count: nums.count)
    var ans : [Int] =  Array(repeating: 1, count: nums.count)


    for i in 1..<nums.count {
        left[i] = left[i - 1] * nums[i - 1]
    }       


    for i in stride(from: nums.count - 2, through: 0, by: -1) {
        right[i] = right[i + 1] * nums[i + 1]
    }

    for i in 0..<nums.count {
        ans[i] = left[i] * right[i]
    }
    return ans
 }


//Approach-2:
  func productExceptSelf2(_ nums: [Int]) -> [Int] {
        
        let n = nums.count
        var result = [Int](repeating: 1, count: n)
    
    // Calculate left products and store in result
    var leftProduct = 1
    for i in 0..<n {
        result[i] = leftProduct
        leftProduct *= nums[i]
    }
    
    // Calculate right products and update result
    var rightProduct = 1
    for i in (0..<n).reversed() {
        result[i] *= rightProduct
        rightProduct *= nums[i]
    }
    
    return result

}

 print(productExceptSelf([1,2,3,4]))