import Foundation

// Graph class using Adjacency List
class Graph {
    private var adjacencyList: [[Int]] // Array of lists
    private var vertexCount: Int
    
    // Initialize the graph with a given number of vertices
    init(vertices: Int) {
        self.vertexCount = vertices
        self.adjacencyList = Array(repeating: [], count: vertices)
    }
    
    // Add an edge between two vertices
    func addEdge(from source: Int, to destination: Int, directed: Bool = false) {
        guard source >= 0 && source < vertexCount && destination >= 0 && destination < vertexCount else {
            print("Invalid vertices")
            return
        }
        adjacencyList[source].append(destination)
        if !directed {
            adjacencyList[destination].append(source)
        }
    }
    
    // Remove an edge between two vertices
    func removeEdge(from source: Int, to destination: Int, directed: Bool = false) {
        guard source >= 0 && source < vertexCount && destination >= 0 && destination < vertexCount else {
            print("Invalid vertices")
            return
        }
        if let index = adjacencyList[source].firstIndex(of: destination) {
            adjacencyList[source].remove(at: index)
        }
        if !directed {
            if let index = adjacencyList[destination].firstIndex(of: source) {
                adjacencyList[destination].remove(at: index)
            }
        }
    }
    
    // Display the adjacency list
    func displayList() {
        for (vertex, neighbors) in adjacencyList.enumerated() {
            print("\(vertex): \(neighbors.map { String($0) }.joined(separator: " -> "))")
        }
    }
}

// Example Usage
let graph = Graph(vertices: 4)
graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 2)
graph.addEdge(from: 1, to: 2, directed: true)
graph.addEdge(from: 2, to: 3)

print("Adjacency List:")
graph.displayList()

graph.removeEdge(from: 0, to: 2)
print("\nAfter removing edge (0 -> 2):")
graph.displayList()
