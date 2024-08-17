
    func groupAnagrams(_ strs: [String]) -> [[String]] {
       
        if strs.isEmpty {
            return []
        }

        var holder = [String: [String]]()

        for str in strs {
            let sortedStr = String(str.sorted())
            if holder[sortedStr] == nil {
                holder[sortedStr] = [str]
            } else {
                var prevCombo = holder[sortedStr]!
                prevCombo.append(str)
                holder[sortedStr] = prevCombo
            }
        }
        return Array(holder.values)
    }
