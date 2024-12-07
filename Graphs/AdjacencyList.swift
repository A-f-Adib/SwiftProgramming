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
    
   
