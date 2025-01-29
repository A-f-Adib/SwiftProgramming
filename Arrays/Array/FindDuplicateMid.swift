
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