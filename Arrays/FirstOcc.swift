 
 func strStr(_ haystack: String, _ needle: String) -> Int {
        var n = Array(needle)
        var h = Array(haystack)
        var l = 0
        var r = 0
        var res = -1

    guard n.count <= h.count else { return -1 } 

        while l < h.count{
            if h[l] == n[0]{
                res = l
                r = l + 1
                var j = 1

        while j < n.count{
            if r > h.count - 1
            {
                return -1
            }
            if h[r] == n[j] {
                r += 1
                j += 1
            }
            else{
                res = -1
                 break
            }
        }

        if res != -1{
           return res
        } 
    }
            l += 1
    }
        return res
}