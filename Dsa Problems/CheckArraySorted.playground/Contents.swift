import UIKit



class Solution {
    
    private func claculateSum(array: [Int], curentIndex: Int ) -> Int {
        
        //Base Case
        if (array.count == curentIndex + 1) {
            return array[curentIndex]
        }
        
        if (array.count == 0) {
            return 0
        }
        
        let firstobjectSum = array[curentIndex]
        let remainingSum = claculateSum(array: array, curentIndex: curentIndex + 1)
        
        return firstobjectSum + remainingSum
        
    }
    
    
    
    func checkSum(_ nums: [Int]) -> Int {
        
        return claculateSum(array: nums, curentIndex: 0)
    }
}

print(Solution().checkSum([7,7,7,7,7,7]))
