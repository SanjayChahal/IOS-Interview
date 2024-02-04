import UIKit

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        if s.isEmpty {
            return true
        }
        if t.isEmpty {
            return false
        }
        
        var subString = s
        var stringM = t

        var substringChar = subString.first!
        var mainStringChar = stringM.first!
        while subString.count > 0 || stringM.count > 0 {
            
            if substringChar  == mainStringChar {
                subString.removeFirst()
                if let first = subString.first {
                    substringChar = first
                } else {
                    return true
                }
            }
            
            stringM.removeFirst()
            if let first = stringM.first {
                mainStringChar = first
            } else {
                return false
            }
        }

        return (substringChar == nil)
    }
}


print(Solution().isSubsequence("abcp", "ajhgjhgknblknekdfjnc"))

