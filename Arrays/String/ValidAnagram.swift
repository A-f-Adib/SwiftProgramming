
func isAnagram(_ s: String, _ t: String) -> Bool {
        
      guard s.count == t.count else {
        return false
      }

      guard s.sorted() == t.sorted() else {
        return false
      }

      return true
}


print(isAnagram("acdb", "abcd"))
print(isAnagram("cat", "rat"))