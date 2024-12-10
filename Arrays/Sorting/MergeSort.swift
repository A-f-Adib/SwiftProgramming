func merge(left: [Int], right: [Int]) -> [Int] {

    var leftIndex = 0
    var rightIndex = 0
    var sortedArray : [Int] = []

    while leftIndex < left.count && rightIndex < right.count {
       
        if leftIndex < rightIndex {
            sortedArray.append(left[leftIndex])
            leftIndex += 1
        } else {
            sortedArray.append(right[rightIndex])
            rightIndex += 1
        }
    }


    while leftIndex < left.count {
        sortedArray.append(left[leftIndex])
        leftIndex += 1
    }

    while rightIndex < right.count {
         sortedArray.append(right[rightIndex])
         rightIndex += 1
    }

   return sortedArray
}