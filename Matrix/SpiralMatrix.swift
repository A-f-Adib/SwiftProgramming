
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

    }