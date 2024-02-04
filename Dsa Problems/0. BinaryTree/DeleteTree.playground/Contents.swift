import UIKit

class TreeNode<T> {
    var val: T
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(val: T) {
        self.val = val
    }
}

class Travesal {
    
    func inOrderTraversal(node: TreeNode<Int>?) {
        guard let node = node else { return }
        inOrderTraversal(node: node.leftNode)
        print(node.val)
        inOrderTraversal(node: node.rightNode)
    }
    
    func preeOrderTraversal(node: TreeNode<Int>?) {
        guard let node = node else { return }
        print(node.val)
        preeOrderTraversal(node: node.leftNode)
        preeOrderTraversal(node: node.rightNode)
    }
    
    func postOrderTraversal(node: TreeNode<Int>?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.leftNode)
        postOrderTraversal(node: node.rightNode)
        print(node.val)
    }
    
    func bfsTraversal(node: TreeNode<Int>?) {
        guard let node = node else { return }
        
        var queue = [TreeNode<Int>]()
        queue.append(node)
        
        while queue.isEmpty {
            let node = queue.removeLast()
            
            if let left = node.leftNode {
                queue.append(left)
            }
            
            if let right = node.rightNode {
                queue.append(right)
            }
        }
        
    }
}
