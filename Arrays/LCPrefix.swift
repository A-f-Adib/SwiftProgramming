 
  func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        let chars_array = strs.map({ Array($0) })
        var string = ""
        var i = 0
  }