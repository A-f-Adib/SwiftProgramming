
func MergeSort(givenArray: [Int]) -> [Int] {
    
    let arr = givenArray
    
    guard arr.count > 1 else { return arr }

    let middleIndex = arr.count / 2

    let leftArray = Array(arr[0..<middleIndex])
    let rightArray = Array(arr[middleIndex...])

    let leftSort = MergeSort(givenArray: leftArray)
    let rightSort = MergeSort(givenArray: rightArray)

    return merge(left: leftSort, right: rightSort)
}


func merge(left: [Int], right: [Int]) -> [Int] {

    var leftIndex = 0
    var rightIndex = 0
    var sortedArray : [Int] = []

    while leftIndex < left.count && rightIndex < right.count {
       
        if left[leftIndex] < right[rightIndex] {
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



print(MergeSort(givenArray: [5,7,2,3,0,1,8]))
print(MergeSort(givenArray: [9,8,7,6,5,4,3,2,1]))