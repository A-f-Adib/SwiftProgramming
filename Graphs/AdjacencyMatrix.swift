import Foundation

// Graph class using Adjacency Matrix
class Graph {
    private var adjacencyMatrix: [[Int]]
    private var vertexCount: Int
    
    // Initialize the graph with a given number of vertices
    init(vertices: Int) {
        self.vertexCount = vertices
        self.adjacencyMatrix = Array(repeating: Array(repeating: 0, count: vertices), count: vertices)
    }
    
    // Add an edge between two vertices
    func addEdge(from source: Int, to destination: Int, directed: Bool = false) {
        guard source >= 0 && source < vertexCount && destination >= 0 && destination < vertexCount else {
            print("Invalid vertices")
            return
        }
        adjacencyMatrix[source][destination] = 1
        if !directed {
            adjacencyMatrix[destination][source] = 1
        }
    }
    
    // Remove an edge between two vertices
    func removeEdge(from source: Int, to destination: Int, directed: Bool = false) {
        guard source >= 0 && source < vertexCount && destination >= 0 && destination < vertexCount else {
            print("Invalid vertices")
            return
        }
        adjacencyMatrix[source][destination] = 0
        if !directed {
            adjacencyMatrix[destination][source] = 0
        }
    }
    
    // Print the adjacency matrix
    func displayMatrix() {
        for row in adjacencyMatrix {
            print(row.map { String($0) }.joined(separator: " "))
        }
    }
}

// Example Usage
let graph = Graph(vertices: 4)
graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 2)
graph.addEdge(from: 1, to: 2, directed: true)
graph.addEdge(from: 2, to: 3)

print("Adjacency Matrix:")
graph.displayMatrix()

graph.removeEdge(from: 0, to: 2)
print("\nAfter removing edge (0 -> 2):")
graph.displayMatrix()
