
 func setZeroes(_ matrix: [[Int]]) -> [[Int]] {

    var matrix = matrix
    var rows: Set<Int> = []
    var cols: Set<Int> = []


//iterate every column of every row and find the index of col and row that contains zero.
//insert the index of them in the row and col set
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if matrix[i][j] == 0 {
                rows.insert(i)
                cols.insert(j)
            }
        }
    }

//Iterate the matrix again and set zeros to those rows and cols that are in the set.
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if rows.contains(i) || cols.contains(j) {
                matrix[i][j] = 0
            }
        }
    }
    return matrix
 }

 //test cases:

 print(setZeroes([[1,1,1],[1,0,1],[1,1,1]]))