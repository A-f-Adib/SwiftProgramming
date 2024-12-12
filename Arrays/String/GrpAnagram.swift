
  func groupAnagrams(_ strs: [String]) -> [[String]] {
        var holder = [String: [String]]()
    for str in strs {
        let sortedStr = String(str.sorted())
        holder[sortedStr, default: []].append(str)
    }
    return Array(holder.values)
  }


  print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))