import Foundation

struct DataStream: AsyncSequence {
    let count: Int
    
    // Create an iterator for the async sequence
    func makeAsyncIterator() -> some AsyncIteratorProtocol {
        return DataIterator(count: count)
    }
}
