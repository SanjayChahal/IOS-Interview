import UIKit

class Solution {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dictAnagram: [String: [String]] = [:]
        for str in strs {
            let sortedStr = String(str.sorted())
            
            if var group = dictAnagram[sortedStr] {
                group.append(str)
                dictAnagram[sortedStr] = group
            } else {
                dictAnagram[sortedStr] = [str]
            }
        }
        return Array(dictAnagram.values)
    }
}
