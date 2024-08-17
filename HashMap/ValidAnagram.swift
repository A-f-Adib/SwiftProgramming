
 func isAnagram(_ s: String, _ t: String) -> Bool {
        
      guard s.count == t.count else {
        return false
      }

      guard s.sorted() == t.sorted() else {
        return false
      }

      return true
}

//Test cases:
print(isAnagram("book", "koob"))
print(isAnagram("pencil", "cilpen"))
print(isAnagram("man", "maan"))