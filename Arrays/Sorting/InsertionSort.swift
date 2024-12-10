
func InsertionSort(givenArray: [Int]) -> [Int] {

    var givenArray = givenArray

    for i in 1..<givenArray.count {
        var j = i
        let key = givenArray[j]

        while j > 0 && key < givenArray[j - 1] {
           
            givenArray[j] = givenArray[j - 1]
            givenArray[j - 1] = key
            j -= 1
        }
        // givenArray[j] = key
    }
    return givenArray
}

print(InsertionSort(givenArray: [5,7,2,3,0,1,8]))
print(InsertionSort(givenArray: [9,8,7,6,5,4,3,2,1]))