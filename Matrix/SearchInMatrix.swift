
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


func SearchInRow(_ matrix: [[Int]], _ target: Int, _ row: Int) -> Bool {

    let n = matrix[0].count
    var start = 0
    var end = n - 1

    while start <= end {
        let mid = start + (end - start) / 2
        
        if target == matrix[row][mid] {
            return true
        }
        else if target > matrix[row][mid] {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return false
}

print(searchMatrix([[1,2,3],[4,5,6],[7,8,9]], 32))