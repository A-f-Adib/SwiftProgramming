

//             if let index = magazineCopy.firstIndex(of: letter) {
//                 magazineCopy.remove(at: index)

//          } else {
//                 return false
//             }
//         }

//         return true            
//  }

 //sol-2:
  func canConstruct2(_ ransomNote: String, _ magazine: String) -> Bool {
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

print(canConstruct2("aa", "ab"))
print(canConstruct2("aa", "aa"))
print(canConstruct2("aa", "a"))
print(canConstruct2("aab", "abb"))
print(canConstruct2("aba", "aab"))
    
