 
class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        
        var arrCount: [Int] = []
        var zeroCout = 0
        var oneCount = 0
        
        for index in 0..<nums.count {
             if index == 0 {
                zeroCout = nums[0] == 0 ? -1 : 0
                oneCount = nums[0] == 1 ? 1 : 0
             } else {
                 
                 if nums[index] == nums[index - 1] {
                     if nums[index] == 0 {
                         zeroCout -= 1
                     } else {
                         oneCount += 1
                     }
                 } else {
                     if nums[index] == 0 {
                         zeroCout = -1
                         arrCount.append(oneCount)
                         oneCount = 0
                     } else{
                         oneCount = 1
                         arrCount.append(zeroCout)
                         zeroCout = 0
                     }
                 }
                
            }
            
        }
        
         
        arrCount.append(zeroCout == 0 ? oneCount : zeroCout)
        
        print(arrCount)
        
        var maxOne = 0
        var hasZeros = false
        
        for index in 0..<arrCount.count {
            
            if arrCount[index] < 0 {
                hasZeros = true
                maxOne = arrCount[index] == -1 ?  max(safeNext(arr: arrCount, curent: index) + safePrevious(arr: arrCount, curent: index), maxOne) : maxOne
            } else {
                maxOne = max(maxOne, arrCount[index])
            }
        }
        
        
        return hasZeros ? maxOne : maxOne - 1
        
    }
    
    private func safeNext(arr: [Int], curent: Int) -> Int {
        if curent + 1 < arr.count {
            return arr[curent + 1]
        } else {
            return 0
        }
    }
    
    private func safePrevious(arr: [Int], curent: Int) -> Int {
        if curent > 0 {
            return arr[curent - 1]
        } else {
            return 0
        }
    }
}

 
