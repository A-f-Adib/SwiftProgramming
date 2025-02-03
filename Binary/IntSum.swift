 /*
Given two integers a and b, return the sum of the two integers without using the operators + and -. 

Example 1:
Input: a = 1, b = 2
Output: 3

Example 2:
Input: a = 2, b = 3
Output: 5

 */
 
 func getSum(_ a: Int, _ b: Int) -> Int {
        var x = abs(a)
        var y = abs(b)
        if x < y { return getSum(b, a) }
        let sign = a > 0 ? 1 : -1
        let addition: Bool = a * b > 0

        if addition {
            while y != 0 {      
                let answer = x ^ y
                let carry = (x & y) << 1
                x = answer
                y = carry
            }
        } else {
            while y != 0 {
                let answer = x ^ y
                let borrow = ((~x) & y) << 1
                x = answer
                y = borrow
            }
        }
        
        return x * sign
 }

 print(getSum(5, 7))