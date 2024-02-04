import UIKit

class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
         var stack = [Int]()
        
        for asteroid in asteroids {
            while !stack.isEmpty && asteroid < 0 && stack.last! > 0 {
                if abs(asteroid) > abs(stack.last!) {
                    stack.popLast()
                } else if abs(asteroid) == abs(stack.last!) {
                    stack.popLast()
                    break
                } else {
                    break
                }
            }
            
            if stack.isEmpty || asteroid > 0 || (stack.last! < 0 && asteroid < 0) {
                stack.append(asteroid)
            }
        }
        
        return stack
    }

}


