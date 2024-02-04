class Solution {
    func decodeString(_ s: String) -> String {
        var stack = [(Int, String)]() // (count, currentString)
        var num = 0
        var currentString = ""
        
        for char in s {
            if let digit = char.wholeNumberValue {
                num = num * 10 + digit
            } else if char == "[" {
                stack.append((num, currentString))
                num = 0
                currentString = ""
            } else if char == "]" {
                let (count, prevString) = stack.removeLast()
                currentString = prevString + String(repeating: currentString, count: count)
            } else {
                currentString += String(char)
            }
        }
        
        return currentString
    }
}
