/*
Given an array nums containing n distinct numbers in the range [0, n], return the only
 number in the range that is missing from the array.

Example 1:
Input: nums = [3,0,1]
Output: 2

Explanation:
n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number 
in the range since it does not appear in nums.

Example 2:
Input: nums = [0,1]
Output: 2
Explanation:
n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number 
in the range since it does not appear in nums.
*/

func missingNumber(_ nums: [Int]) -> Int {

  
    let n = nums.count
    let expectedSum = n * (n + 1) / 2
    // let actualSum = nums.reduce(0, +)
    var actualSum = 0
      for num in nums {
         actualSum += num
      }
    return expectedSum - actualSum
}



//test cases:
print(missingNumber([3,0,1]))
print(missingNumber([0,1]))
print(missingNumber([9,6,4,2,3,5,7,0,1]))