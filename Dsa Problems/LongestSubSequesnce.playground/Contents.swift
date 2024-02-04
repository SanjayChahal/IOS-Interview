import UIKit



class Solution {
    
    func longestSubSequence(_ string: String)-> Character {
        
        var biggestCount = 0
        var bigChar: Character?
        var lastChar: Character?
        var counter: Int = 0
 
        for char in string {
            if lastChar == nil {
                lastChar = char
                counter += 1
                bigChar = char
            } else {
                if (lastChar == char) {
                    counter += 1
                }  else  {
                    if (counter > biggestCount) {
                        biggestCount = counter
                        bigChar = lastChar
                        print("counter: \(counter) bigCount: \(biggestCount)")
                    }
                    counter = 0
                }
            }
        }
        
        print("biggest count is \(biggestCount)")
      
        return bigChar!
        
    }
}


print(Solution().longestSubSequence("aaaabbbaaabbbcbcbcbcbcbcb"))
