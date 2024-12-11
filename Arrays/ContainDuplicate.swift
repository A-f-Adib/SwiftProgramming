 
 //Approach-1
 func containsDuplicate(_ nums: [Int]) -> Bool {

    var dict : [Int : Int] = [:]

    for num in nums {
      if let _ = dict[num] {
        return true
      } else {
        dict[num] = 1
      }
    }       
    return false
 }


 //approach-2
 func conDups(_ nums: [Int]) -> Bool {

    var set : Set<Int> = []

    for num in nums {
        if set.contains(num) {
            return true
        }
        else {
            set.insert(num)
        }
    }
    return false
 }

 print(conDups([0,3,0,1,4,2]))