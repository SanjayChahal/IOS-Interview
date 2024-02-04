import UIKit

class Solution {
    func removeStars(_ s: String) -> String {
        
        var returnString = ""
        
        for char in s {
            if char == "*" {
                returnString.removeLast()
            } else {
                returnString += "\(char)"
            }
        }
        
        return returnString
    }
}
