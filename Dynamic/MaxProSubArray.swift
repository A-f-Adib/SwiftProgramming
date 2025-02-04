
func maxProduct(_ nums: [Int]) -> Int {
       
        guard !nums.isEmpty else { return 0 }

        var ans = nums[0]
        var maxSoFar = nums[0]
        var minSoFar = nums[0]

        for i in 1..<nums.count {
            let curr = nums[i]

            let tmpMax = max(curr, maxSoFar * curr, minSoFar * curr)
            minSoFar = min(curr, maxSoFar * curr, minSoFar * curr)
            maxSoFar = tmpMax

            ans = max(ans, maxSoFar)
        }

        return ans
}

//Test cases:
print(maxProduct([2,3,-2,4]))
print(maxProduct([2,3,0,-2,-3,-5]))
print(maxProduct([5,-2,1,-3,2,4]))
