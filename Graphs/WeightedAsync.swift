import Foundation

class WeightedGraph {
    var adjacencyList: [Int: [(Int, Int)]] = [:]
    
    // Add an edge asynchronously
    func addEdge(from source: Int, to destination: Int, weight: Int) async {
        print("Adding edge from \(source) to \(destination) with weight \(weight)...")
        try? await Task.sleep(nanoseconds: 100_000_000) // Simulating delay (100ms)
        adjacencyList[source, default: []].append((destination, weight))
        adjacencyList[destination, default: []].append((source, weight))
        print("Edge added.")
    }

    // Get neighbors asynchronously
    func getNeighbors(of node: Int) async -> [(Int, Int)] {
        print("Fetching neighbors of node \(node)...")
        try? await Task.sleep(nanoseconds: 50_000_000) // Simulating delay (50ms)
        return adjacencyList[node] ?? []
    }

    // Display the graph asynchronously
    func displayGraph() async {
        print("Displaying graph...")
        for (node, neighbors) in adjacencyList {
            let neighborDescription = neighbors.map { "(destination: \($0.0), weight: \($0.1))" }.joined(separator: ", ")
            print("Node \(node): [\(neighborDescription)]")
            try? await Task.sleep(nanoseconds: 100_000_000) // Simulating delay between printing nodes
        }
    }
}

// @main
struct Main {
    static func main() async {
        let graph = WeightedGraph()
        
        // Adding edges asynchronously
        await graph.addEdge(from: 1, to: 2, weight: 4)
        await graph.addEdge(from: 1, to: 3, weight: 1)
        await graph.addEdge(from: 2, to: 3, weight: 2)
        await graph.addEdge(from: 2, to: 4, weight: 7)
        await graph.addEdge(from: 3, to: 4, weight: 3)
        
        // Displaying the graph asynchronously
        await graph.displayGraph()
        
        // Access neighbors of a specific node asynchronously
        let neighbors = await graph.getNeighbors(of: 2)
        print("Neighbors of node 2: \(neighbors)")
    }
}
