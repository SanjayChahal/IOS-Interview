import UIKit

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        
        // Count the paths starting from the root
        let pathsFromRoot = countPaths(root, sum)
        
        // Recursively count the paths in the left and right subtrees
        let pathsFromLeft = pathSum(root?.left, sum)
        let pathsFromRight = pathSum(root?.right, sum)
        
        return pathsFromRoot + pathsFromLeft + pathsFromRight
    }

    func countPaths(_ node: TreeNode?, _ targetSum: Int) -> Int {
        if node == nil {
            return 0
        }
        
        var count = 0
        
        // Check if the current node's value equals the remaining sum
        if node!.val == targetSum {
            count += 1
        }
        
        // Recursively check the left and right subtrees
        count += countPaths(node?.left, targetSum - node!.val)
        count += countPaths(node?.right, targetSum - node!.val)
        
        return count
    }

    
}

