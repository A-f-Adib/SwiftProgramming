
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