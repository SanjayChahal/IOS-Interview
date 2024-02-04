import UIKit

class Solution {
    func fib(_ n: Int) -> Int {
        
        if n == 1 {
            return 1
        } else if n <= 0 {
            return 0
        }
        
        var result = self.fib(n - 1) + self.fib(n - 2)
        return result
    }
}

let fibN = Solution().fib(7)
print(fibN)
