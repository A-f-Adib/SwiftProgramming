import Foundation

struct DataStream: AsyncSequence {
    let count: Int
    
    // Create an iterator for the async sequence
    func makeAsyncIterator() -> some AsyncIteratorProtocol {
        return DataIterator(count: count)
    }
}

struct DataIterator: AsyncIteratorProtocol {
    let count: Int
    var current = 0
    
    mutating func next() async -> String? {
        guard current < count else { return nil }
        current += 1
        do {
            try await Task.sleep(nanoseconds: 1_000_000_000)  // Simulate delay
        } catch {
            print("Error during sleep: \(error)")
            return nil
        }
        return "Item \(current)"
    }
}

func handleStream() async {
    let stream = DataStream(count: 5)
    do {
        for try await item in stream {
            print(item)
        }
    } catch {
        print("Error handling stream: \(error)")
    }
}

// Start stream handling
Task {
    await handleStream()
}
