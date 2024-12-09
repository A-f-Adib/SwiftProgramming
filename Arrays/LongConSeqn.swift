 func longestConsecutive(_ nums: [Int]) -> Int {
           
        let sett = Set(nums)
        var maxCounter = 0

        for num in sett {
            if !sett.contains(num - 1) {
                var counter = 1
                
                var tempNum = num
                while sett.contains(tempNum + 1) {
                    counter += 1
                    tempNum = tempNum + 1
                }
                if counter > maxCounter {
                    maxCounter = counter
                }
            }
        }
        return maxCounter
}

print(longestConsecutive([200,3,100,6,5,4]))