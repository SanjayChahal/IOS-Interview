import UIKit

class Solution {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count <= 0 {
            return 0
        }
        
        var previousElement: Int = Int.max
        var currentIndex: Int = 0
        
        while currentIndex < nums.count {
            if (previousElement == nums[currentIndex]) {
                nums.remove(at: currentIndex)
            } else {
                previousElement = nums[currentIndex]
                currentIndex += 1
            }
        }
        
        return nums.count
    }
}

var array = [3,3,5,6,6,8,8,8,9,9,10,10,10]

print(Solution().removeDuplicates(&array) )
