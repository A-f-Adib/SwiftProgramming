 
 func lengthOfLastWord(_ s: String) -> Int {
        
        var ans = 0

        for c in s.reversed() {
            if c != " " {
                ans += 1
            } else if ans > 0 {
                return ans
            }
        }

        return ans
}

//sol-2:
 func lengthOfLastWord2(_ s: String) -> Int {

        s.split { $0 == " " }.last?.count ?? 0

}

//test cases: