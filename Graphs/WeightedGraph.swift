import Foundation

class WeightedGraph {

    var adjacencyList : [Int: [(Int , Int)]] = [:]

    func addEdge(from source: Int, to destination: Int, weight: Int) {

        adjacencyList[source, default: []].append((destination, weight))
        adjacencyList[destination, default: []].append((source, weight))

    }


    func getNeighbors(of node: Int) -> [(Int, Int)] {
        return adjacencyList[node] ?? []
    }


    func displayGraph(){
        
        for (node, neighbor) in adjacencyList { 
            let neighborDescription = neighbor.map{ "(destination: \($0), weight: \($1))"}.joined(separator: ",")
            print("Node \(node) : [\(neighborDescription)]")
        }
    }
}



// Example Usage
let graph = WeightedGraph()

// Adding edges with weights
graph.addEdge(from: 1, to: 2, weight: 4)
graph.addEdge(from: 1, to: 3, weight: 1)
graph.addEdge(from: 2, to: 3, weight: 2)
graph.addEdge(from: 2, to: 4, weight: 7)
graph.addEdge(from: 3, to: 4, weight: 3)

// Display the graph


// Access neighbors of a specific node

 graph.displayGraph()


let neighbors = graph.getNeighbors(of: 3)
print("Neighbors of node 3: \(neighbors)")