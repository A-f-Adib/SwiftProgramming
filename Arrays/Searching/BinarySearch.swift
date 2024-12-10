
func binarySearch(givenArray: [Int], searchNumber: Int) -> Bool {

    var left = 0
    var right = givenArray.count - 1

    for _ in givenArray {

        let mid = (left + right) / 2

        if givenArray[mid] == searchNumber {
            return true
        }

        else if givenArray[mid] < searchNumber {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

print(binarySearch(givenArray: [1,2,4,5,6,7,9], searchNumber: 5))