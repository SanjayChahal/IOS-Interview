import UIKit


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
    func goodNodes(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        return recusiveGoodNode(root, maxVal: root.val)
    }
    
    private func recusiveGoodNode(_ root: TreeNode?, maxVal: Int) -> Int {
        
        guard let root = root else {
            return 0
        }
        
        let isGoodNode = root.val >= maxVal
        let maxVal = max(root.val, maxVal)
        
        let leftNodeCount = recusiveGoodNode(root.left, maxVal: maxVal)
        let rightNodeCount = recusiveGoodNode(root.left, maxVal: maxVal)
        
        return (isGoodNode ? 1 : 0) + leftNodeCount + rightNodeCount

    }
    
}
