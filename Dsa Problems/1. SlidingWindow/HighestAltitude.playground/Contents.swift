class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        
        var higestAltitude = 0
        var currentHeight = 0
        
        for item in gain {
            currentHeight = currentHeight + item
            
            higestAltitude = max(currentHeight, higestAltitude)
            
        }
        
        print(higestAltitude)
        return higestAltitude
        
    }
}
