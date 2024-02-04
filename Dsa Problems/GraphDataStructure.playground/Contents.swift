import Foundation

class Graph<T: Hashable> {
    var nodes: [Node<T>] = []

    func addNode(_ value: T) -> Node<T> {
        let node = Node(value)
        nodes.append(node)
        return node
    }

    func addEdge(from source: Node<T>, to destination: Node<T>) {
        source.neighbors.append(destination)
        destination.neighbors.append(source)
    }
    
    // BFS
    func breadthFirstSearch(from startNode: Node<T>) -> [T] {
        var visitedNodes: Set<Node<T>> = []
        var queue: [Node<T>] = []
        var result: [T] = []

        queue.append(startNode)
        visitedNodes.insert(startNode)

        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            result.append(currentNode.value)

            for neighbor in currentNode.neighbors {
                if !visitedNodes.contains(neighbor) {
                    queue.append(neighbor)
                    visitedNodes.insert(neighbor)
                }
            }
        }

        return result
    }
    
    
    func depthFirstSearch(from startNode: Node<T>) -> [T] {
           var visitedNodes: Set<Node<T>> = []
           var result: [T] = []

           func dfs(_ currentNode: Node<T>) {
               visitedNodes.insert(currentNode)
               result.append(currentNode.value)

               for neighbor in currentNode.neighbors {
                   if !visitedNodes.contains(neighbor) {
                       dfs(neighbor)
                   }
               }
           }

           dfs(startNode)
           return result
       }
}

class Node<T: Hashable>: Hashable {
    var value: T
    var neighbors: [Node<T>] = []

    init(_ value: T) {
        self.value = value
    }

    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.value == rhs.value
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
}

 
//
//// Usage
//let graph = Graph<Int>()
//
//// Add nodes and edges...
//
//let startNode = graph.nodes.first! // Assuming there is at least one node in the graph
//let bfsResult = graph.breadthFirstSearch(from: startNode)
//print("BFS Result: \(bfsResult)")
//
//
//






// Create a graph
let graph = Graph<Int>()

// Add nodes to the graph
let node1 = graph.addNode(1)
let node2 = graph.addNode(2)
let node3 = graph.addNode(3)

// Add edges between nodes
graph.addEdge(from: node1, to: node2)
graph.addEdge(from: node2, to: node3)

// Accessing nodes and their neighbors
print("Nodes:")
for node in graph.nodes {
    print("Node \(node.value) has neighbors: \(node.neighbors.map { $0.value })")
}
