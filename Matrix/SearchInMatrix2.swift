
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        let m = matrix.count
        let n = matrix[0].count

        var startRow = 0
        var startCol = n - 1


        while startRow <= m - 1 && startCol >= 0 {
            if target == matrix[startRow][startCol] {
                return true
            } 
            else if target < matrix[startRow][startCol] {
                startCol -= 1
            } else {
                startRow += 1
            }
        }
    return false
}


//Test cases:

print(searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 9))