
func SelectionSort(givenArray : [Int]) -> [Int] {

    var givenArray = givenArray

    for i in 0..<givenArray.count - 1 {
        
        var minInteger = i
        
        for j in i + 1..<givenArray.count {
           
            if givenArray[j] < givenArray[minInteger] {
               minInteger = j
            }
        }

        let temp = givenArray[i]
        givenArray[i] = givenArray[minInteger]
        givenArray[minInteger] = temp
             
    }
    return givenArray
}


print(SelectionSort(givenArray: [5,7,2,3,0,1,8]))
print(SelectionSort(givenArray: [9,8,7,6,5,4,3,2,1]))