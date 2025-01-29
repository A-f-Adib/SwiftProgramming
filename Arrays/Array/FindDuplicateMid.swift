/*
287. Find the Duplicate Number

Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
There is only one repeated number in nums, return this repeated number.
You must solve the problem without modifying the array nums and using only constant extra space.

Example 1:
Input: nums = [1,3,4,2,2]
Output: 2

Example 2:
Input: nums = [3,1,3,4,2]
Output: 3

Example 3:
Input: nums = [3,3,3,3,3]
Output: 3
*/


//Slow and fast pointer approach-> assume the array with index as linkedlist
 func findDuplicate(_ nums: [Int]) -> Int {
        
        var slow = nums[0]
        var fast = nums[0]

        repeat {
            slow = nums[slow]
            fast = nums[nums[fast]]
        } while slow != fast

        slow = nums[0]

        while slow != fast {
            slow = nums[slow]
            fast = nums[fast]
        }

        return slow
}

//Test cases:
print(findDuplicate([1,3,4,2,2]))
print(findDuplicate([3,1,3,4,2]))
print(findDuplicate([4,4,4,4,4]))