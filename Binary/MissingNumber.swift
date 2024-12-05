
func missingNumber(_ nums: [Int]) -> Int {

  
    let n = nums.count
    let expectedSum = n * (n + 1) / 2
    // let actualSum = nums.reduce(0, +)
    var actualSum = 0
      for num in nums {
         actualSum += num
      }
    return expectedSum - actualSum
}



//test cases:
print(missingNumber([3,0,1]))
print(missingNumber([0,1]))
print(missingNumber([9,6,4,2,3,5,7,0,1]))