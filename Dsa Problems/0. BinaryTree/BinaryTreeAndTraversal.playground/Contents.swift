import UIKit

 


class TreeNode<T> {
    var value: T
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ value: T) {
        self.value = value
    }
}
 
class Traversal {
    
    // DFS -- INORDER PREORDER POST Order
    static func inOrderTraversal<T>(_ root: TreeNode<T>? ) {
        if let node = root {
            inOrderTraversal(node.left)
            print(node.value)
            inOrderTraversal(node.right)
        }
    }
    
    static func preOrderTraversal<T>(_ root: TreeNode<T>? ) {
        if let node = root {
            print(node.value)
            preOrderTraversal(node.left)
            preOrderTraversal(node.right)
        }
    }
    
    static func postOrderTraversal<T>(_ root: TreeNode<T>? ) {
        if let node = root {
            postOrderTraversal(node.left)
            postOrderTraversal(node.right)
            print(node.value)
        }
    }
    
    // BFS --
    static func breadthFirstSearch<T>(_ root: TreeNode<T>?) {
        if root == nil {
            return
        }
        
        var queue: [TreeNode<T>] = []
        queue.append(root!)
        
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            print(currentNode.value)
            
            if let leftChild = currentNode.left {
                queue.append(leftChild)
            }
            
            if let rightChild = currentNode.right {
                queue.append(rightChild)
            }
        }
    }
}

// Example usage:
let rootNode = TreeNode(1)
rootNode.left = TreeNode(2)
rootNode.right = TreeNode(3)
rootNode.left?.left = TreeNode(4)
rootNode.left?.right = TreeNode(5)

print("Inorder traversal:")
Traversal.inOrderTraversal(rootNode)
 
print("Preorder traversal:")
Traversal.preOrderTraversal(rootNode)

print("Postorder traversal:")
Traversal.postOrderTraversal(rootNode)
//



 



// Example usage:
let root = TreeNode(1)
root.left = TreeNode(2)
root.right = TreeNode(3)
root.left?.left = TreeNode(4)
root.left?.right = TreeNode(5)
root.right?.left = TreeNode(6)
root.right?.right = TreeNode(7)

print("Breadth-First Search:")
Traversal.breadthFirstSearch(root)

