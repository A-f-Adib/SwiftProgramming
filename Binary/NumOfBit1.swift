/*
Given a positive integer n, write a function that returns the number of 
set bits
 in its binary representation (also known as the Hamming weight).

Example 1:

Input: n = 11

Output: 3

Explanation:

The input binary string 1011 has a total of three set bits.

Example 2:

Input: n = 128

Output: 1

Explanation:

The input binary string 10000000 has a total of one set bit.
*/

func hammingWeight(_ n: Int) -> Int {
        
    let decimalNumber = n
    let binaryString = String(decimalNumber, radix: 2)
    var count = 0

   for i in binaryString {
        if i == "1" {
            count += 1
        }
   }
    return count

}

//Sol-2:

func hammingWeight2(_ n: Int) -> Int {
        var count = 0
        var number = n

        while number != 0 {
            count += number & 1
            number >>= 1
        }
        return count
}

//Test cases:
print(hammingWeight(128))
print(hammingWeight(11))
print(hammingWeight2(127))