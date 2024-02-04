
class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        
        let setVovel: Set<Character> = ["a","e","i","o","u"]
        var arrChar = Array(s)
        
        print(arrChar)
        
        var maxVCount = 0
        var currrentCount = 0

        for index in 0..<k {
            if setVovel.contains(arrChar[index]) {
                currrentCount += 1
            }
        }
        maxVCount = currrentCount
                
        for i in k..<arrChar.count {
            if setVovel.contains(arrChar[i]) {
                currrentCount += 1
            }
            
            if setVovel.contains(arrChar[i - k]) {
                currrentCount -= 1
            }
            
            maxVCount = max(maxVCount, currrentCount)
        }
        
        
        return maxVCount
    }
}
