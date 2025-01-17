
//This func is for unsorted array and peak can exist in anywhere:
//162

func findPeakElement(_ arr: [Int]) -> Int {

        // Handle edge cases for small arrays
        if arr.count == 1 {
            return 0 
        } else if arr.count == 2 {
            return arr[0] > arr[1] ? 0 : 1
        }
        
        var start = 0
        var end = arr.count - 1
        
        while start <= end {
            let mid = start + (end - start) / 2
            
            // Check if the current element is a peak
            if (mid == 0 || arr[mid - 1] < arr[mid]) && 
               (mid == arr.count - 1 || arr[mid] > arr[mid + 1]) {
                return mid
            }
            
            // Move search space to the side with a potential peak
            if mid > 0 && arr[mid - 1] < arr[mid] {
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        
        return -1 
    }


    //Test cases:
    print(findPeakElement([6,5,4,3,2,3,2]))