/*
2965. Find Missing and Repeated Values

You are given a 0-indexed 2D integer matrix grid of size n * n with values in the range [1, n2]. Each integer appears exactly once except a which appears twice and b which is missing. The task is to find the repeating and missing numbers a and b.
Return a 0-indexed integer array ans of size 2 where ans[0] equals to a and ans[1] equals to b.

Example 1:
Input: grid = [[1,3],[2,2]]
Output: [2,4]
Explanation: Number 2 is repeated and number 4 is missing so the answer is [2,4].

Example 2:
Input: grid = [[9,1,7],[8,9,2],[3,4,6]]
Output: [9,5]
Explanation: Number 9 is repeated and number 5 is missing so the answer is [9,5].

*/

func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        
        var ans : [Int] = []
        var set: Set<Int> = []

        var a: Int = 0
        var b: Int
        let n = grid.count

        var actualSum = 0
        var expSum = 0
        var calculatedSum = 0

        for i in 0..<n {
            for j in 0..<n {
                actualSum += grid[i][j]

                if set.contains(grid[i][j]) {
                    a = grid[i][j]
                    ans.append(a)
                }
                set.insert(grid[i][j])
            }
        }

        expSum = (n * n) * (n * n + 1) / 2
        calculatedSum = actualSum - a
        b = expSum - calculatedSum
        ans.append(b)

        return ans
}

//Test cases:

print(findMissingAndRepeatedValues([[1,3],[2,2]]))
print(findMissingAndRepeatedValues([[9,1,7],[8,9,2],[3,4,6]]))