import Foundation

// Node class for Linked List
class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
        self.next = nil
    }
}

// Linked List for adjacency list
class LinkedList {
    var head: Node?
    
    // Add a node to the list
    func addNode(value: Int) {
        let newNode = Node(value: value)
        newNode.next = head
        head = newNode
    }
    
    // Print the linked list
    func displayList() {
        var current = head
        while current != nil {
            print("\(current!.value)", terminator: " -> ")
            current = current!.next
        }
        print("nil")
    }
}

// Graph class using adjacency list
class Graph {
    private var adjacencyList: [LinkedList]
    private var vertexCount: Int
    
    // Initialize the graph with the number of vertices
    init(vertices: Int) {
        self.vertexCount = vertices
        self.adjacencyList = Array(repeating: LinkedList(), count: vertices)
    }
    
    // Add an edge
    func addEdge(from source: Int, to destination: Int, directed: Bool = false) {
        guard source >= 0 && source < vertexCount && destination >= 0 && destination < vertexCount else {
            print("Invalid vertices")
            return
        }
        
        // Add destination to the adjacency list of source
        adjacencyList[source].addNode(value: destination)
        
        // If undirected, add source to the adjacency list of destination
        if !directed {
            adjacencyList[destination].addNode(value: source)
        }
    }
    
    // Display the adjacency list
    func displayGraph() {
        for (i, list) in adjacencyList.enumerated() {
            print("\(i): ", terminator: "")
            list.displayList()
        }
    }
}

// Example Usage
let graph = Graph(vertices: 4)
graph.addEdge(from: 0, to: 1)
graph.addEdge(from: 0, to: 2)
graph.addEdge(from: 1, to: 2)
graph.addEdge(from: 2, to: 3, directed: true)

print("Adjacency List Representation:")
graph.displayGraph()
