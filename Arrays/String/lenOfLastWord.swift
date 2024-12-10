 
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


//test cases:

print(lengthOfLastWord("Hello World"))
print(lengthOfLastWord("   fly me   to   the moon  "))
print(lengthOfLastWord("luffy is still joyboy"))
print(lengthOfLastWord("Seen this question in a real interview before?"))
