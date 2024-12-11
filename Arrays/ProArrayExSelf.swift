
//Approach-1:
 func productExceptSelf(_ nums: [Int]) -> [Int] {

    var left : [Int] =  Array(repeating: 1, count: nums.count)
    var right: [Int] =  Array(repeating: 1, count: nums.count)
    var ans : [Int] =  Array(repeating: 1, count: nums.count)


    for i in 1..<nums.count {
        left[i] = left[i - 1] * nums[i - 1]
    }       


    for i in stride(from: nums.count - 2, through: 0, by: -1) {
        right[i] = right[i + 1] * nums[i + 1]
    }

    for i in 0..<nums.count {
        ans[i] = left[i] * right[i]
    }
    return ans
 }


//Approach-2:
  func productExceptSelf2(_ nums: [Int]) -> [Int] {
        
        let n = nums.count
        var result = [Int](repeating: 1, count: n)
    
    // Calculate left products and store in result
    var leftProduct = 1
    for i in 0..<n {
        result[i] = leftProduct
        leftProduct *= nums[i]
    }
    
    // Calculate right products and update result
    var rightProduct = 1
    for i in (0..<n).reversed() {
        result[i] *= rightProduct
        rightProduct *= nums[i]
    }
    
    return result

}

 print(productExceptSelf([1,2,3,4]))