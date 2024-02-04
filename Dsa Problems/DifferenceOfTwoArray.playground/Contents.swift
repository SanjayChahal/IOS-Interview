import UIKit

class Solution {
    func solve(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var onlyInNums1 = Set<Int>()
        var existsInNums2 = Set<Int>()

        for num in nums2 {
            existsInNums2.insert(num)
        }

        for num in nums1 {
            if !existsInNums2.contains(num) {
                onlyInNums1.insert(num)
            }
        }
        return Array(onlyInNums1)
    }
    
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        return [solve(nums1, nums2), solve(nums2, nums1)]
    }
}



print(Solution().findDifference([1,2,3,3], [1,1,2,2]))
