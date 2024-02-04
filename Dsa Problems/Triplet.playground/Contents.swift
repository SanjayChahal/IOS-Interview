import UIKit

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        
        if nums.count <= 2 {
            return false
        }
        
        var fisrstPointer = nums.first!
        var secoundPointer = Int.max
        
        for item in nums {
            if item <= fisrstPointer {
                fisrstPointer = item
            } else if item <= secoundPointer {
                secoundPointer = item
            } else {
                return true
            }
        }
        return false
    }
}
