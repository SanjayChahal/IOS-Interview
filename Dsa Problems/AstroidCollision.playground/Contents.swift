func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var stack = [Int]()
    
    for asteroid in asteroids {
        if asteroid > 0 {
            // If it's a positive asteroid, push it onto the stack
            stack.append(asteroid)
        } else {
            // If it's a negative asteroid, keep exploding positive ones
            while !stack.isEmpty && stack.last! > 0 {
                let top = stack.removeLast()
                if top == -asteroid {
                    // Both asteroids explode
                    break
                } else if top > -asteroid {
                    // Negative asteroid is destroyed
                    stack.append(top)
                    break
                }
            }
            // If there are no positive asteroids or negative asteroid survives
            if stack.isEmpty || stack.last! < 0 {
                stack.append(asteroid)
            }
        }
    }
    
    return stack
}

// Example usage:
let asteroids = [5, 10, -5]
let result = asteroidCollision(asteroids)
print(result) // Should print [5, 10]



class Solution {
    
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for asteroid in asteroids {
            if asteroid > 0 {
                stack.append(asteroid)
            } else {
                let top = stack.removeLast()
                
                while stack.last
                if (top == -asteroid) {
                    stack.removeLast()
                    break
                } else if (top > -asteroid){
                    stack.append(top)
                    break
                }
            }
        }
        return
    }
}
