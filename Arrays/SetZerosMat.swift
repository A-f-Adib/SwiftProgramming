
func setZeroes(_ matrix:  [[Int]]) -> [[Int]] {

    var matrix = matrix

    var rows : Set<Int> = []
    var cols : Set<Int> = []

    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if matrix[i][j] == 0 {
                rows.insert(i)
                cols.insert(j)
            }
        }
    }

    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if rows.contains(i) || cols.contains(j) {
                matrix[i][j] = 0
            }
        }
    }

    return matrix
}

print(setZeroes([[0,1,2,0],[3,4,5,2],[1,3,1,5]]))