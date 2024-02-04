import Foundation


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    
    
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        return leafNodes(root: root1).sorted() == leafNodes(root: root2).sorted()
    }
    
    private func leafNodes(root: TreeNode?) -> [Int] {
        guard let root = root else {return []}
        if root.left == nil && root.right == nil {
            return [root.val]
        }
        return leafNodes(root: root.left) + leafNodes(root: root.right)
    }
}
