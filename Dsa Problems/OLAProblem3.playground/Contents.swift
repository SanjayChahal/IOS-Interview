import UIKit

//Given an array of strings, group the anagrams together. You can return the answer in any order.
//
// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once
//
//Input: strs = ["eat","tea","tan","ate","nat","bat"]
//Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
//[["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]

//"cat", "dog", "tac", "god", "act"
//cat tac act dog god



class Solution {
    
    func findAnagram(strs: [String]) -> [[String]] {
        
        if(strs.count <= 0) {
            return []
        }
        
        var strArray = strs
        
        var currentindex = 0
        var machingIndex = 1
        var returnArray = [[String]]()
        
        var curentSet = [strArray[currentindex]]
        
        
        while currentindex < strArray.count - 1 {
            
            if (Set(strArray[currentindex]) == Set(strArray[machingIndex])) {
                curentSet.append(strArray[machingIndex])
                strArray.remove(at: machingIndex)
            }
            
            if(machingIndex <= (strArray.count - 2)) {
                machingIndex += 1
            } else {
                currentindex += 1
                machingIndex = currentindex + 1
                returnArray.append(curentSet)
                curentSet = [strArray[currentindex]]
            }
        }
        
        if(strArray.count > 0) {
            returnArray.append([strArray.last!])
        }
        
        
        print(returnArray)
        return returnArray
        
    }
}

Solution().findAnagram(strs: ["cat", "dog", "tac", "god", "act"])


func groupAnagrams(_ strs: [String]) -> [[String]] {
    var anagramGroups = [String: [String]]()

    for str in strs {
        // Sort the characters in the word to create a unique key
        let sortedStr = String(str.sorted())

        // Add the word to the corresponding group
        if var group = anagramGroups[sortedStr] {
            group.append(str)
            anagramGroups[sortedStr] = group
        } else {
            anagramGroups[sortedStr] = [str]
        }
    }

    // Convert the dictionary values (groups of anagrams) to an array
    return Array(anagramGroups.values)
}

// Example usage:
let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
let result = groupAnagrams(input)
print(result) // Output: [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]
