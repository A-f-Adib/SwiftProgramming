
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

