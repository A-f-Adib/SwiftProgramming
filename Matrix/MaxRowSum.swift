
func maxRowSum(_ matrix : [[Int]]) -> Int {

    var maxSum = 0

    for i in 0..<matrix.count {
        var rowSum = 0
        for j in 0..<matrix[0].count {
            rowSum += matrix[i][j]
        }
        maxSum = max(rowSum, maxSum)
    }
    return maxSum
}


func maxColSum(_ matrix : [[Int]]) -> Int {

    var maxSum = 0

    for j in 0..<matrix[0].count {
        var colSum = 0
        for i in 0..<matrix.count {
            colSum += matrix[i][j]
        }
        maxSum = max(colSum, maxSum)
    }
    return maxSum
}

//Test Cases:
print("Max row sum:")
print(maxRowSum([[100,2,30],[4,5,6],[7,8,9]]))
print("Max column sum:")
print(maxColSum([[100,2,30],[4,5,6],[7,8,9]]))