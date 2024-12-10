
func BubbleSort(givenArray : [Int]) -> [Int] {

    var givenArray = givenArray
    let n = givenArray.count

    for i in 0..<n {

        for j in 0..<n - i - 1 {

            if givenArray[j] > givenArray[j + 1] {

                let temp = givenArray[j]
                givenArray[j] = givenArray[j + 1]
                givenArray[j + 1] = temp
            }
        }
    }

    return givenArray
}


print(BubbleSort(givenArray: [5,7,2,3,0,1,8]))
print(BubbleSort(givenArray: [9,8,7,6,5,4,3,2,1]))