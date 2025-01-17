
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        let m = matrix.count
        let n = matrix[0].count

        var startRow = 0
        var endRow = m - 1

        while startRow <= endRow {
            let midRow = startRow + (endRow - startRow) / 2

            if target >= matrix[midRow][0] && target <= matrix[midRow][n - 1] {
                //Binary search in that row
                return SearchInRow(matrix, target, midRow)
            } 
            else if target >= matrix[midRow][n - 1] {
                startRow = midRow + 1
            } else {
                endRow = midRow - 1
            }
        }
        return false
}
