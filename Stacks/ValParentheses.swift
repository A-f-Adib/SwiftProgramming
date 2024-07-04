class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }
        var stack: [Character] = []

        for item in s {
            switch item {
            case "(":
                stack.append(")")
            case "[":
                stack.append("]")
            case "{":
                stack.append("}")
            default:
                if stack.isEmpty || stack.removeLast() != item {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}