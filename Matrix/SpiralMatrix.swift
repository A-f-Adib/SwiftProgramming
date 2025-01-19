
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


/*
C++ Implementation:

vector<int> spiralOrder(vector<vector<int>>& matrix) {
    vector<int> result;
    int m = matrix.size();
    int n = matrix[0].size();
    
    int sRow = 0, sCol = 0;
    int endRow = m - 1, endCol = n - 1;

    while (sRow <= endRow && sCol <= endCol) {
        // Traverse the top row
        for (int j = sCol; j <= endCol; ++j) {
            result.push_back(matrix[sRow][j]);
        }

        // Traverse the right column
        for (int i = sRow + 1; i <= endRow; ++i) {
            result.push_back(matrix[i][endCol]);
        }

        // Traverse the bottom row
        for (int j = endCol - 1; j >= sCol; --j) {
            if (sRow == endRow) break;
            result.push_back(matrix[endRow][j]);
        }

        // Traverse the left column
        for (int i = endRow - 1; i >= sRow + 1; --i) {
            if (sCol == endCol) break;
            result.push_back(matrix[i][sCol]);
        }

        // Update the boundaries for the next layer
        sRow++;
        sCol++;
        endRow--;
        endCol--;
    }

    return result;
}

*/