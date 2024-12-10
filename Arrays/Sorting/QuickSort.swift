
func QuickSort(_ givenArray: [Int]) -> [Int] {

    let arr = givenArray

    guard arr.count > 1 else { return arr }

    let pivot = arr[0]

    let leftSubArray = arr.filter { $0 < pivot}
    let equal = arr.filter { $0 == pivot }
    let rightSubArray = arr.filter { $0 > pivot }

    return QuickSort(leftSubArray) + equal + QuickSort( rightSubArray)
}



print(QuickSort([5,7,2,3,0,1,8]))
print(QuickSort([9,8,7,6,5,4,3,2,1]))