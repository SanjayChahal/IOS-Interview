import Foundation

class Solution {
    
    func maxArea(_ height: [Int]) -> Int {
        
        var i = 0
        var j = height.count - 1
        var maxCapacity = Int.min
        
        while i < j {
            //height of the left line.
            let leftMax = height[i]
            // height of the right line.
            let rightMax = height[j]
            
            let currCapacity = min(leftMax, rightMax) * (j - i)
            // Update the maximum capacity if the current capacity is greater.
            maxCapacity = max(currCapacity, maxCapacity)

            // Move the pointers based on the height comparison.
            if leftMax < rightMax {
                i += 1 // Move the left pointer to the right.
            } else {
                j -= 1 // Move the right pointer to the left.
            }
        }

        // Return the maximum capacity found.
        return maxCapacity
    }
}
