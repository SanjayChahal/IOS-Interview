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
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
        return recursivePathSum(root, 0, targetSum)
    }
    
    func recursivePathSum(_ root: TreeNode?, _ tillNowSum: Int, _ targetSum: Int) -> Int {
        
        guard let root = root else {
            return 0
        }
        
        if root.val > targetSum {
            return recursivePathSum(<#T##root: TreeNode?##TreeNode?#>, <#T##tillNowSum: Int##Int#>, <#T##targetSum: Int##Int#>)
        }
        
        let isTargetPath: Bool = tillNowSum + root.val == targetSum
        
        let countFromMeLeft = recursivePathSum(root.left, root.val, targetSum)
        let countFromMeRight = recursivePathSum(root.right, root.val, targetSum)
        
        let countFromRootLeft = recursivePathSum(root.left, tillNowSum + root.val, targetSum)
        let countFromRooRight = recursivePathSum(root.right, tillNowSum + root.val, targetSum)
        
        return (isTargetPath ? 1 : 0) + countFromMeLeft + countFromMeRight + countFromRootLeft + countFromRooRight

    }
}
