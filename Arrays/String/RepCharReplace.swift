
func characterReplacement(_ s: String, _ k: Int) -> Int {
   
    var charCount = [Character: Int]() // Dictionary to count characters in the window
    var left = 0 // Start of the sliding window
    var maxCount = 0 // Max frequency of any single character in the current window
    var maxLength = 0 // Length of the longest valid substring

    let characters = Array(s) // Convert the string to an array of characters

    for right in 0..<characters.count {
        // Increment the count of the character at the right pointer
        charCount[characters[right], default: 0] += 1
        
        // Update the max frequency of any character in the current window
        maxCount = max(maxCount, charCount[characters[right]]!)

        // If the current window is invalid (requires more than `k` replacements)
        while (right - left + 1) - maxCount > k {
            charCount[characters[left]]! -= 1 // Shrink the window from the left
            left += 1
        }

        // Update the maximum length of a valid window
        maxLength = max(maxLength, right - left + 1)
    }

    return maxLength
}

// Example Usage
let s = "AABABBA"
let k = 1
print(characterReplacement(s, k)) 
