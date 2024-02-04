import UIKit

/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 Example 2:

 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
 */

class Solution {
    static func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        
        var hasZero = nums.contains(0)
        let product = nums.reduce(0) { (result, element) in
            return element == 0 ? result : result * element
        }
        
        print(product)
        print("has zero: \(hasZero)")
        
        return nums.map { elemnt in
            if hasZero {
                return elemnt == 0 ? product : 0
            } else {
                return product/elemnt
            }
        }
    }
}

print("\(Solution.productExceptSelf([0,0]))")
