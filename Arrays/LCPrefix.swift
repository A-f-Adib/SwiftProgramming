 
  func longestCommonPrefix(_ strs: [String]) -> String {
    
        guard strs.count > 0 else { return "" }
        let chars_array = strs.map({ Array($0) })
        var string = ""
        var i = 0

          while true {
            var c: Character? = nil
            for chars in chars_array {
                if i >= chars.count {
                    return string
                }
  }