/*
Suppose an array of length n sorted in ascending order is rotated between 1 and n times. 
For example, the array nums = [0,1,2,4,5,6,7] might become:

[4,5,6,7,0,1,2] if it was rotated 4 times.
[0,1,2,4,5,6,7] if it was rotated 7 times.
Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the 
array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

Given the sorted rotated array nums of unique elements, return the minimum element of this array.
You must write an algorithm that runs in O(log n) time.


Example 1:

Input: nums = [3,4,5,1,2]
Output: 1
Explanation: The original array was [1,2,3,4,5] rotated 3 times.

Example 2:
Input: nums = [4,5,6,7,0,1,2]
Output: 0
Explanation: The original array was [0,1,2,4,5,6,7] and it was rotated 4 times.

*/

func findMin(_ nums: [Int]) -> Int {

    for i in 0..<nums.count {

         if nums.count == 1 {
                return nums[i]
        }
         else if nums[i] > nums[i + 1] {
            return nums[i + 1]
        }
         else if nums[nums.count - 1] > nums[i] {
            return nums[i]
        }
    }
    return 0
 }


 print(findMin([11,13,15,17]))
 print(findMin([4,5,6,7,0,1,2]))