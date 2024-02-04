import UIKit

class Solution {
    func moveZeroes(_ numS: [Int]) {
        
        var nums = numS
        
        if nums.count < 2 {
            return
        }
        
        var left = 0
        var right = 0
        
        while right < nums.count {
            if nums[right] != 0 {
                (nums[left], nums[right]) = (nums[right], nums[left])
                left += 1
            }
            right += 1
        }
        
    }
}

print(Solution().moveZeroes([1,0,1,4]) )


// [15,0,11,0,18,0,1,8,6,2,0]
