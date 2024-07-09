 
 func rotate(_ nums:  [Int], _ k: Int) -> [Int] {
        
    var stack = [Int]()
    var stack2 = [Int]()
    var stack3 = [Int]()
     var stack4 = [Int]()
    var count = k

    for i in nums {
        stack.append(i)
    }
    
    for _ in stack {
        while count > 0 {
         stack2.append(stack.removeLast())
         count -= 1

        while !stack2.isEmpty {
            stack3.append(stack2.removeLast())
        }
      
    }
    }

    return stack3
}

print(rotate([1,2,3,4], 1))
print(rotate([1,2,3,4], 2))
print(rotate([1,2,3,4], 3))