
   
    func hIndex(_ citations: [Int]) -> Int {
        
        var finalValue = 0
        let sortedArray : [Int] = citations.sorted(by: >)

        for (index, value) in sortedArray.enumerated() {
            if value >= index + 1 {
                finalValue = index + 1
               
            } 
        }
         return finalValue
    }

// Output:
print(hIndex([3,0,7,2,5]))