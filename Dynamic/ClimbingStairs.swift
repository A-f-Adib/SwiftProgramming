 func climbStairs(_ n: Int) -> Int {
 
    if n == 1 { return 1 }

    var array : [Int] = [1,2]

    for i in 2...n {
         array.append(array[i - 1] + array[i - 2])
    }

    return array[n - 1]
 }


//Test cases:
 print(climbStairs(3))
 print(climbStairs(4))
 print(climbStairs(5))