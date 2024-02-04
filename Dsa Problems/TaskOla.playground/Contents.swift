import UIKit

//
//Example 1
//
//nums1 =  [1,2,2,1]
//nums2 =  [2,2]
//
//Output: [2]
//
//Example 2
//
//nums1 =  [4,9,5]
//nums2 =  [9,4,9,8,4]
//
//Output: [9,4] or [4,9]
//R1:DS/Algo:Sanjay Chahal:SDE 3 IOS:OLA

class Solution {
    
    func returnCommonElements(arr1: [Int], arr2: [Int]) -> [Int] {
        
        if (arr1.count <= 0 || arr2.count <= 0) {
            return []
        }
        
        var resultSet = Set<Int>()
        
        let uniqueElemnts = Set(arr1)
        
        for item in arr2 {
            if(uniqueElemnts.contains(item)) {
                resultSet.insert(item)
            }
        }
        print(resultSet)
        return Array(resultSet)
        
    }
}

Solution().returnCommonElements(arr1: [9,4,9,8,4], arr2: [9,4,9,8,4])
//[9,4,9,8,4], [9,4,9,8,4]
