/*
Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), 
ans[i] is the number of 1's in the binary representation of i.

Example 1:
Input: n = 2
Output: [0,1,1]
Explanation:
0 --> 0
1 --> 1
2 --> 10

Example 2:
Input: n = 5
Output: [0,1,1,2,1,2]
Explanation:
0 --> 0
1 --> 1
2 --> 10
3 --> 11
4 --> 100
5 --> 101
*/

func CountingBits(_ n: Int) -> [Int] {
        
    var returnArray : [Int] = []     
    for i in 0...n {

   
    let decimalNumber = i
    let binaryString = String(decimalNumber, radix: 2)
    var count = 0

   for j in binaryString {
        if j == "1" {
            count += 1
        }
        
   }
     returnArray.append(count)
 }
    return returnArray
}


//Test cases:
print(CountingBits(2))
print(CountingBits(5))
print(CountingBits(7))