 /*
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:
Input: nums = [1,2,3,1]
Output: true

Explanation:
The element 1 occurs at the indices 0 and 3.

Example 2:
Input: nums = [1,2,3,4]
Output: false
 */


 //Approach-1
 func containsDuplicate(_ nums: [Int]) -> Bool {

    var dict : [Int : Int] = [:]

    for num in nums {
      if let _ = dict[num] {
        return true
      } else {
        dict[num] = 1
      }
    }       
    return false
 }


 //approach-2
 func conDups(_ nums: [Int]) -> Bool {

    var set : Set<Int> = []

    for num in nums {
        if set.contains(num) {
            return true
        }
        else {
            set.insert(num)
        }
    }
    return false
 }

 print(conDups([0,3,0,1,4,2]))