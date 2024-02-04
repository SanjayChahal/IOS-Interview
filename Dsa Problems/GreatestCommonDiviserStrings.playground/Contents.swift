import Foundation

/*
 For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

 Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
 
 Input: str1 = "ABCABC", str2 = "ABC"
 Output: "ABC"
 
 */

class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        return (str1 + str2 == str2 + str1 ) ? String(str1.prefix(findRecursiveGCD(str1.count, str2.count))) : ""
    }
    
    func findRecursiveGCD(_ n1: Int, _ n2: Int) -> Int {
       let output: Int = n1 % n2
       if output != 0{
           return findRecursiveGCD(n2, output)
       } else{
          return n2
       }
    }
}

