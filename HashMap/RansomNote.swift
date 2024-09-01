
  func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var charCount = [Character: Int]()

        for char in magazine {
            charCount[char, default: 0] += 1
        }
        
        for char in ransomNote {
            if let count = charCount[char], count > 0 {
                charCount[char] = count - 1
            } else {
                return false
            }       
        }
        return true
}

 //test cases:

print(canConstruct("aa", "ab"))
print(canConstruct("aa", "aa"))
print(canConstruct("aa", "a"))
print(canConstruct("aab", "abb"))
print(canConstruct("aba", "aab"))
    
