import Foundation

class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var sortedNums = nums.sorted()
        var count = 0
        var low = 0
        var high = sortedNums.count - 1
        
        while low < high {
            let sum = sortedNums[low] + sortedNums[high]
            
            if sum == k {
                count += 1
                low += 1
                high -= 1
            } else if sum > k {
                high -= 1
            } else {
                low += 1
            }
        }
        
        return count
    }
}




print(Solution().maxOperations([6,2,48,9,1,3,7,4], 5))
