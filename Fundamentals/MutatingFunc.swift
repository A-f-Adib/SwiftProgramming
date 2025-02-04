import Foundation

struct Counter {
    var count: Int = 0
    
    mutating func increment() {
        count += 1  
    }
}

var myCounter = Counter() 
myCounter.increment()  
print(myCounter.count)  // Output: 1
