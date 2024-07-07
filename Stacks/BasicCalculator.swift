 
   func calculate(_ s: String, _ ind: String.Index) -> (result: Int, nextInd: String.Index) {
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

         while ind < s.endIndex {
            switch s[ind] {
            case "(":
                (curNum, ind) = calculate(s, s.index(after: ind))
                continue
            case ")":
                return (calc(), s.index(after: ind))
            case " ":
                break
            case "+":
                queue.append((calc(), +))
                 case "-":
                queue.append((calc(), -))
            case "*":
                queue.append((curNum, *))
                curNum = 0
            case "/":
                queue.append((curNum, /))
                curNum = 0
            default:
                curNum = curNum * 10 + s[ind].wholeNumberValue!
            }
            ind = s.index(after: ind)
        }
        return (calc(), ind)
    }

    func calculate(_ s: String) -> Int {
        calculate(s, s.startIndex).result
    }

//--------------------------------------------------------------------------------------------
//Sol-2:

func calculate(_ s: String) -> Int {
    var stack = [Int]()
    var number = 0
    var partialResult = 0
    var sign = 1
    
    for char in s {
        if char.isNumber {
            number = number * 10 + char.wholeNumberValue!
        } else if char == "+" || char == "-" {
            partialResult += number * sign
            number = 0
            sign = char == "-" ? -1 : 1
        }
 