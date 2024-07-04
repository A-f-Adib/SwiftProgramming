
func evalRPN(_ tokens: [String]) -> Int {

  var stack = [Int]()

  for item in tokens {
    if let num = Int(item) {
        stack.append(num)
    } else {
        let firstElement = stack.removeLast()
        let secondElement = stack.removeLast()

        switch item {
            case "+" :
              stack.append(secondElement + firstElement)
            case "-" :
              stack.append(secondElement - firstElement)
            case "*" :
              stack.append(secondElement * firstElement) 
            case "/" :
              stack.append(secondElement / firstElement)   
            default:
             fatalError("")   
        }
    }
  }
        return stack.removeLast()
}

//Output:

let input = [["2","1","+","3","*"]]

for i in input {
    print(evalRPN(i))
}

//Explanation:
//((2 + 1) * 3) = 3 * 3 = 9