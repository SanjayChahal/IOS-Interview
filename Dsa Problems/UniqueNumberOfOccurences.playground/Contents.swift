import UIKit

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        
        var countDict = [Int: Int]()
        for item in arr {
            countDict[item] = countDict[item] == nil ? 1 : countDict[item]! + 1
        }
        
        var setUniqueValues: Set<Int> = []
        for value in countDict.values {
            if(setUniqueValues.contains(value)) {
                return false
            } else {
                setUniqueValues.insert(value)
            }
        }
        return true
    }
}
