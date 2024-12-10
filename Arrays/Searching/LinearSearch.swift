
func LinearSearch(givenArray: [Int], searchNumber: Int) -> Bool {

    let sortedArray = givenArray.sorted(by: <)

    for index in 0..<sortedArray.count {

        if sortedArray[index] == searchNumber && sortedArray[index] <= searchNumber {
            return true
        }
    }

    return false
}

print(LinearSearch(givenArray: [9,36,27,84,2,1,78,4,45], searchNumber: 45))