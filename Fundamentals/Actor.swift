import Foundation

actor Counter {
    private var value = 0
    
    // Increment the counter safely
    func increment() {
        value += 1
    }
    
    // Get the current value safely
    func getValue() -> Int {
        return value
    }
}

func testActor() async {
    let counter = Counter()
    
    // Run tasks concurrently that modify the counter
    await counter.increment()
    await counter.increment()
    
    // Access the value
    let count = await counter.getValue()
    print("Counter value: \(count)")  // Output: Counter value: 2
}

Task {
    await testActor()
}
