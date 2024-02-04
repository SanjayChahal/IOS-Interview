import Foundation
/*
 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.
 
 Input: word1 = "abc", word2 = "pqr"
 Output: "apbqcr"
 
 */
class Solution {
     func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        var finalString: String = ""

        if word1.isEmpty {
            return word2
        } else if word2.isEmpty {
            return word1
        }
        
        var word1Str: String = word1
        var word2Str: String = word2
        
        if word1Str.count > word2Str.count {
            for char in word2Str {
                finalString = finalString + String(word1Str.removeFirst()) + String(char)
            }
            finalString = finalString + word1Str
        } else {
            for char in word1Str {
                finalString = finalString + String(char) + String(word2Str.removeFirst())
            }
            finalString = finalString + word2Str
        }
        return finalString
    }
}


