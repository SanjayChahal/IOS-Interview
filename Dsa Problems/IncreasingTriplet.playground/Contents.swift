import UIKit

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        if nums.count <= 2 {
            return false
        }

        var onePointer = nums[0]
        var twoPointer = Int.max

        for item in nums {
            if item <= onePointer {
                onePointer = item
            } else if item <= twoPointer {
                twoPointer = item
            } else {
                return true
            }
        }
        
        return false
    }
}


print(Solution().increasingTriplet([2,1,5,0,4,6]))
