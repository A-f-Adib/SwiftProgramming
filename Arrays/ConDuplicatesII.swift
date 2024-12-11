 
 func ConDupsII(_ nums : [Int], key: Int) -> Bool {

    var dict : [Int : Int] = [:]

    for (index, num) in nums.enumerated() {

        if let lastIndex = dict[num],  index - lastIndex <= key {
            return true
        }
        dict[num] = index
    }

   return false
 }

 print(ConDupsII([1,2,3,1], key: 3))
 print(ConDupsII([1,0,1,1], key: 1))
 print(ConDupsII([1,2,3,1,2,3], key: 2))