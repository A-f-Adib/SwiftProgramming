
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
        
        while count > 0 {
            stack.removeLast()
            count -= 1  
        }

        while stack.first == "0" {
            stack.removeFirst()
        }

        return stack.isEmpty ? "0" : String(stack)
}

//OutPut:

let input = [["12345", "1"], ["10200", "1"], ["0415302", "2"]]

for i in input {
    print(removeKdigits(i[0], Int(i[1])!))
    
}