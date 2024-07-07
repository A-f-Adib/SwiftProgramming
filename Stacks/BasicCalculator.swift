 private func calculate(_ s: String, _ ind: String.Index) -> (result: Int, nextInd: String.Index) {
        var ind = ind
        var queue = [(Int, (Int, Int) -> Int)]()
        var curNum = 0

        let calc: () -> Int = {
            var result = curNum
            curNum = 0
            while let state = queue.popLast() {
                result = state.1(state.0, result)
            }
            return result
        }
 }