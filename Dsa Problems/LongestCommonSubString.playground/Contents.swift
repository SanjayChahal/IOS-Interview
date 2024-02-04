import UIKit

class Solution {
    
    static func longestCommonSubString(strings: [String]) -> String {
        guard var firstString = strings.first else {
            return "not Found"
        }
        
        for str in strings {
            while !str.hasPrefix(firstString) {
                print("rining loop")
                firstString.removeLast()
            }
        }
        
        return firstString
    }
}


print(Solution.longestCommonSubString(strings: ["filow","fidvw", "fidhg"]))

