class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var arraySum = 0
        
        for item in nums {
            arraySum += item
        }
        
        
        var pivotIndex = 0
        var leftSum = 0
        var rightSum = arraySum - nums[0]
        
        while pivotIndex < nums.count  {
            if(leftSum == rightSum) {
                return pivotIndex
            } else {
                leftSum += nums[pivotIndex]
                rightSum -= pivotIndex == nums.count - 1 ? 0 : nums[pivotIndex + 1]
                pivotIndex += 1
            }
        }
        
        return -1
    }
}

print(Solution().pivotIndex([1,2,3]))




//code for solutions

/*
 class Solution {
     func pivotIndex(_ nums: [Int]) -> Int {
         var leftSum = 0
         var total = 0

         for num in nums {
             total += num
         }

         for j in 0..<nums.count {
             if leftSum * 2 == total - nums[j] {
                 return j
             }
             leftSum += nums[j]
         }

         return -1
     }
 }

 */
