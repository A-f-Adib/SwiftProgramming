
//This function is for mountain array and peak can never be exist in first and last index
//852

 func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        
        var start = 1
        var end = arr.count - 2

        while start <= end {
            let mid = start + (end - start) / 2

            if arr[mid - 1] < arr[mid] && arr[mid] > arr[mid + 1] {
                return mid
            }

            if arr[mid - 1] < arr[mid] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        return -1
}

//Test Cases:
print(peakIndexInMountainArray([0,10,5,2]))