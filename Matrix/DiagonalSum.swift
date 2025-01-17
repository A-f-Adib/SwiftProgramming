
func diagonalSum(_ matrix : [[Int]], _ size: Int) -> Int {

    var totalSum = 0

    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
           
           //for primary diagonal
           if i == j {
            totalSum += matrix[i][j]
           } 
           //for secondary diagonal
           else if j == size - 1 - i {
            totalSum += matrix[i][j]
           }
        }
       
    }
    //return sum of two diagonals
    return totalSum
}
