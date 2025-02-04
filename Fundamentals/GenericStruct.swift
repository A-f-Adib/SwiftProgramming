
import Foundation

struct Stack<T> {
    private var items: [T] = []

    mutating func push(_ item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        return items.popLast()
    }
}

var intStack = Stack<Int>()
intStack.push(5)
intStack.push(10)
print(intStack.pop()!)  // Output: 10

var StrStack = Stack<String>()
StrStack.push("Five")
StrStack.push("Ten")
print(StrStack.pop()!) // Output: Ten