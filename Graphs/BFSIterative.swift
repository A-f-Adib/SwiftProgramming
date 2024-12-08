import Foundation

// Graph class using adjacency list
class Graph {
    private var adjacencyList: [Int: [Int]] = [:]
    
    // Adds an edge to the graph
    func addEdge(from source: Int, to destination: Int) {
        adjacencyList[source, default: []].append(destination)
        adjacencyList[destination, default: []].append(source) // For an undirected graph
    }
    
    // Iterative BFS implementation
    func bfsIterative(start: Int) -> [Int] {
        var visited: Set<Int> = []
        var queue: [Int] = [start]
        var result: [Int] = []
        
        while !queue.isEmpty {
            let node = queue.removeFirst()
            
            if !visited.contains(node) {
                visited.insert(node)
                result.append(node)
                
                // Add neighbors to the queue
                if let neighbors = adjacencyList[node] {
                    for neighbor in neighbors {
                        if !visited.contains(neighbor) {
                            queue.append(neighbor)
                        }
                    }
                }
            }
        }
        
        return result
    }
}

// Example Usage
let graph = Graph()
graph.addEdge(from: 1, to: 2)
graph.addEdge(from: 1, to: 3)
graph.addEdge(from: 2, to: 4)
graph.addEdge(from: 3, to: 5)
graph.addEdge(from: 4, to: 6)
graph.addEdge(from: 5, to: 6)

let bfsResult = graph.bfsIterative(start: 1)
print("BFS Traversal Order: \(bfsResult)")

let bfsResult2 = graph.bfsIterative(start: 2)
print("BFS Traversal Order: \(bfsResult2)")
