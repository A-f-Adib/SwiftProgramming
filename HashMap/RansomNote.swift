
 func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineCopy = magazine

          for letter in ransomNote {
            if let index = magazineCopy.firstIndex(of: letter) {
                magazineCopy.remove(at: index)

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
    
