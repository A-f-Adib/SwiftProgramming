 
 func canJumpTwo(_ nums: [Int]) -> Int {
   
   var totalJumps = 0
   var coverage = 0
   var lastJump = 0
   let destination = nums.count - 1

   if nums.count == 1 { return 0 }

   for i in 0..<nums.count {

    coverage = max(coverage, i + nums[i])

        if i == lastJump {
            lastJump = coverage
            totalJumps += 1

            if coverage >= destination {
                return totalJumps
            }
        }
   }
   return totalJumps
}

//Test cases:
print(canJumpTwo([1,2,3,0,5]))
print(canJumpTwo([3,2,1,0,5]))

/***
step-1: first find the maximum coverage of first index
step-2: then find the maximum coverage of last coverage and count total jumps
step-3: return total jumps when the coverage is greate or equal then destination index.
***/
