import Foundation 

class DFSGraph {
    
    private var adjacencyList : [Int: [Int] ] = [:]

    func addEdge(from source: Int, to destination: Int) {
        
        adjacencyList[source, default:[]].append(destination)
        adjacencyList[destination, default: []].append(source)
    }


    func dfsIterative(start: Int) -> [Int] {

        var visited : Set<Int> = []
        var stack : [Int] = [start]
        var result : [Int] = []

        while !stack.isEmpty {

            let node = stack.removeLast()

            if !visited.contains(node) {
                visited.insert(node)
                result.append(node)

                if let neighbors = adjacencyList[node] {
                    for neighbor in neighbors.reversed() {
                        stack.append(neighbor)
                    }
                }
            }
        }
        return result
     }
}



// Example usage:
let graph = DFSGraph()
graph.addEdge(from: 1, to: 2)
graph.addEdge(from: 1, to: 3)
graph.addEdge(from: 2, to: 4)
graph.addEdge(from: 3, to: 5)

let dfsResult = graph.dfsIterative(start: 1)
print("DFS Traversal Order: \(dfsResult)")


let dfsResult2 = graph.dfsIterative(start: 2)
print("DFS Traversal Order: \(dfsResult2)")


let dfsResult3 = graph.dfsIterative(start: 5)
print("DFS Traversal Order: \(dfsResult3)")