
func spiralOrder(_ matrix: [[Int]]) -> [Int] {

  var result : [Int] = []

    let m  = matrix.count
    let n =  matrix[0].count

    var sRow = 0
    var sCol = 0
    var endRow = m - 1
    var endCol = n - 1

    while sCol <= endCol && sRow <= endRow {

        //for print top
        for j in sCol...endCol {
            result.append( matrix[sRow][j])
        }

        //for print right
        for i in (sRow + 1)...endRow {
           
            result.append(matrix[i][endCol])
        }

        //for print bottom
       for j in stride(from: endCol - 1, to: sCol, by: -1) {
            if sRow == endRow {
                break
            }
            result.append(matrix[endRow][j])
       }

       //for print left
        for i in stride(from: endRow - 1, to: sRow + 1, by: -1) {
            if sCol == endCol {
                break
            }
            result.append(matrix[i][sCol])
       }

       //decrease the matrix
       sRow += 1
       sCol += 1
       endRow -= 1
       endCol -= 1
    }
    return result
}

print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))

