import UIKit

class Solution {
    
    func longestOnes(_ nums: [Int], _ K: Int) -> Int {
        var start = 0
        var maxCount = Int.min
        var zeroCounter = 0

        for end in 0..<nums.count {
            if nums[end] == 0 {
                zeroCounter += 1
            }

            while zeroCounter > K {
                if nums[start] == 0 {
                    zeroCounter -= 1
                }
                start += 1
            }

            maxCount = max(maxCount, end - start + 1)
        }

        return maxCount == Int.min ? 0 : maxCount
    }
}


// Example usage:
let nums = [1, 1, 0, 0, 1, 1, 1, 0, 1]
let k = 2
let result = Solution().longestOnes(nums, k)
 


// [1,1,1,0,0,0,1,1,1,1,0]
// [3,0,0,0,4,0,5,0,0,0,0,7,0,0,0]

// k == 2
// [3,-3,4,-1,5,-4,7,-3]

// 3 -1 === 5
// 10
