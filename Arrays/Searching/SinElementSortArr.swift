//The arr size will always be odd
//if mid is even index and mid == mid -1 then the element is in the left , else right
//if mid is odd index and mid == mid - 1 then the element is in the right , else left
//540

 func singleNonDuplicate(_ nums: [Int]) -> Int {

    let n = nums.count
    var start = 0
    var end = n - 1

    while start <= end {

        let mid = start + (end - start) / 2

        if mid == 0 && nums[mid] != nums[mid + 1] { return nums[mid] }
        if mid == n - 1 && nums[n - 1] != nums[ n - 2] { return nums[mid] }

        if nums[mid] != nums[mid - 1] && nums[mid] != nums[mid + 1] {
            return nums[mid]
        }

        if mid % 2 == 0 {
            if nums[mid] == nums[mid - 1] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        } else {
            if nums[mid] == nums[mid - 1 ] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
    }    
     return -1   
 }

 //Test cases:
 print(singleNonDuplicate([1,1,2,3,3,4,4,8,8]))