 func getSum(_ a: Int, _ b: Int) -> Int {
      
        var x = abs(a)
        var y = abs(b)
        if x < y { return getSum(b, a) }
        let sign = a > 0 ? 1 : -1
        let addition: Bool = a * b > 0

 }    