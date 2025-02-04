
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
