
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
            
           