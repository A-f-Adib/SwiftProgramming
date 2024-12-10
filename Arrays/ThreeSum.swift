 
 func threeSum(_ nums: [Int]) -> [[Int]] {

        var result: Set<[Int]> = [] 
        let nums = nums.sorted()

        for i in 0..<nums.count - 2 {
            var left = i + 1
            var right = nums.count - 1

            while left < right {
                let sum = nums[i] + nums[left] + nums[right]

                if sum == 0 {
                    result.insert(Array(arrayLiteral: nums[i],nums[left],nums[right]))
                    left += 1
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }

            }
        }

        return Array(result)
 }


 print(threeSum([-1,0,1,2,-1,-4]))
 print(threeSum([0,1,1]))
 print(threeSum([0,0,0]))