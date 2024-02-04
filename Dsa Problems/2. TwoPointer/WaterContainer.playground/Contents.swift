import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count < 2 {
            return 0
        }
        
        var leftIndex = 0
        var rightIndex = height.count - 1
        var maxArea = Int.min
        
        
        
        while leftIndex < rightIndex {
            
            print("Running for let: \(leftIndex) right: \(rightIndex)")
            let leftHeight = height[leftIndex]
            let rightheight = height[rightIndex]
            
            
            let area = min(leftHeight, rightheight) * (rightIndex - leftIndex)
            maxArea = max(maxArea, area)
            
            if (leftHeight < rightheight) {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        return maxArea
    }
}


print(Solution().maxArea([2,3,4,5,18,17,6]))
