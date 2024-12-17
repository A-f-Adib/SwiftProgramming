
   func containsDuplicate(_ nums: [Int]) -> Bool {
    
    let sorted = nums.sorted()

    for i in 0..<sorted.count {
        if sorted[i] == sorted[i + 1] {
            return true
        }
    }
    return false
    
    }
    print(containsDuplicate([7,1,5,3,6,4]))