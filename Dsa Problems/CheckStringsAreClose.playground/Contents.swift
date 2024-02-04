

class Solution1 {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        if word1.count < word2.count {
            return false
        }
        
        var dic1 = [Character: Int]()
        var dic2 = [Character: Int]()
        
        for (c1, c2) in zip(word1, word2) {
            dic1[c1, default: 0] += 1
            dic2[c2, default: 0] += 1
        }
        
        for key in dic1.keys {
            if dic2[key] == nil {
                return false
            }
        }
        
        let s1 = Array(dic1.values).sorted()
        let s2 = Array(dic2.values).sorted()
        
        print("s1 == \(s1)")
        print("s2 == \(s2)")
        
        return s1 == s2
    }
    
}
print(Solution1().closeStrings("hello", "hello"))
