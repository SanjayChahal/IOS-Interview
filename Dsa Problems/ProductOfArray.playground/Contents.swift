import UIKit

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans = Array(repeating: 1, count: nums.count)
        
        // Calculate prefix product
        for i in 1..<nums.count {
            ans[i] = ans[i - 1] * nums[i - 1]
        }
        
        print("\(ans)")
        
        // Calculate suffix product while updating the answer array
        var suffixProd = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            ans[i] *= suffixProd
            suffixProd *= nums[i]
        }
        print("\(ans)")

        
        return ans
    }
}

Solution().productExceptSelf([1,2,3,4,5,6])
