import UIKit

//We define the usage of capitals in a word to be right when one of the following cases holds:
//All letters in this word are capitals, like "OLA".
//All letters in this word are not capitals, like "ola".
//Only the first letter in this word is capital, like "Ola".
//Given a string word, return true if the usage of capitals in it is right.
//Input: word = "OLA"
//Output: true
//o
//Input: word: OlA
//Output: false


class Solution {
    
    func findIfValidWord(str: String) -> Bool {
        
        let capitalLetters: Set = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        
        var capitalizedWord = str.uppercased()
        var smallLatters = str.lowercased()
        
        if capitalizedWord == str || smallLatters == str {
            return true
        } else {
            
            var string = str
            let firstChar = string.removeFirst()
            if capitalLetters.contains(String(firstChar)) && string == string.lowercased() {
                return true
            } else {
                return false
            }
        }
    }
}


print("\(Solution().findIfValidWord(str: "Input"))")
