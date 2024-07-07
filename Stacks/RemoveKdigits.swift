
 func removeKdigits(_ num: String, _ k: Int) -> String {
        var count = k
        var stack = [Character]()

        for number in num {
            while let last = stack.last, number < last, count > 0 {
                stack.removeLast()
                count -= 1
            }
            stack.append(number)
        }