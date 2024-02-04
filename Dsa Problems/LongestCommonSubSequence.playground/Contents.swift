import UIKit


//Input: text1 = "pjazbqc", text2 = "cdkab"
//Output: 3
//Explanation: The longest common subsequence is "abc" and its length is 3.

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        
        var posibleString = ""
        var lastChar: Character? = nil
        
        for char in text1 {
            if text2.contains(char) {
                posibleString = posibleString + String(char)
            }
        }
        
         let resultString = longestComonSubString(posibleString, text2)
        
        print(resultString)
        return resultString.count
    }
    
    func longestComonSubString(_ text1: String, _ text2: String) -> String {
        
        var posibleString: String = text1
 
        //pqrs    tshmtulqrypy
        
         
        
        
        return posibleString
    }
}

let lcs = Solution().longestCommonSubsequence("oxcpqrsvwf", "shmtulqrypy")

print(lcs)

