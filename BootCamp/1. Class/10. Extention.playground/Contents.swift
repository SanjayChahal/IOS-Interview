import Foundation


/*
 1. Can't add stored properties
 2. can add computed properties
 3. can add new functions and initializers
 4. cant override existing methods
 5. Extensions cannot access the private members of a type.
 6. Extensions cannot add deinitializers
 7. Extensions cannot add required initializers
 */


extension Int {
//    var cropNumber: Int  // can't add stored properties
    
    var doubleValue: Double {
        return Double(self)
    }
    
    // Can add computed properties
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 != 0
    }
}

// Usage:
let number1 = 10
let number2 = 7

print(number1.isEven) // Output: true
print(number1.isOdd)  // Output: false

print(number2.isEven) // Output: false
print(number2.isOdd)  // Output: true

print(number2.doubleValue) // 7.0




// We can add Initializer
extension String {
    init(repeating str: String, count: Int) {
        var result = ""
        for _ in 0..<count {
            result += str
        }
        self = result
    }
}

// Usage:
let repeatedString = String(repeating: "Hello, ", count: 3)
print(repeatedString) // Output: "Hello, Hello, Hello, "




