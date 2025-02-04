/*
152. Maximum Product Subarray

Given an integer array nums, find a 
subarray that has the largest product, and return the product.

The test cases are generated so that the answer will fit in a 32-bit integer.

Example 1:
Input: nums = [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

Example 2:
Input: nums = [-2,0,-1]
Output: 0
Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
*/


func maxProduct(_ nums: [Int]) -> Int {

    guard !nums.isEmpty else { return 0 } 
    
    var maxProduct = nums[0]  
    var minProduct = nums[0] 
    var result = nums[0]     
    
    for i in 1..<nums.count {
        let num = nums[i]
        
        // If num is negative, swap maxProduct and minProduct
        if num < 0 {
            swap(&maxProduct, &minProduct)
        }
        
        // Update maxProduct and minProduct
        maxProduct = max(num, num * maxProduct)
        minProduct = min(num, num * minProduct)
        
        // Update the result (biggest product found)
        result = max(result, maxProduct)
    }
    
    return result
}


//Test cases:
print(maxProduct([2,3,-2,4]))
print(maxProduct([2,3,0,-2,-3,-5]))
print(maxProduct([5,-2,1,-3,2,4]))
