 
 func lengthOfLongestSubstring(_ s: String) -> Int {
       
    var currentSubstring = ""  
    var maxLength = 0         

    for char in s {
       
        while currentSubstring.contains(char) {
            currentSubstring.removeFirst()
        }
      
        currentSubstring.append(char)
       
        maxLength = max(maxLength, currentSubstring.count)
    }

    return maxLength
}


print(lengthOfLongestSubstring("abcabcbb"))