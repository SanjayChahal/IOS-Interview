import UIKit

//The declaration for value in the Capitalized struct marks  as private, which ensures value is used only in the implementation of Capitalized. Code that’s written anywhere else accesses the value using the getter and setter for wrappedValue, and can’t use number directly.



// Custom property wrapper
@propertyWrapper
struct Capitalized {
    private(set) var value: String

    var wrappedValue: String {
        get { value }
        set { value = newValue.capitalized }
    }

    init(wrappedValue: String) {
        self.value = wrappedValue.capitalized
    }
}

@propertyWrapper
struct AgeController {
    private(set) var value: Int

    var wrappedValue: Int {
        get { value }
        set { value = (newValue > 100) ? 100 : newValue }
    }

    init(wrappedValue: Int) {
        self.value = (wrappedValue > 100) ? 100 : wrappedValue
    }
}

class Person {
    // Property with a property wrapper
    @Capitalized
    var name: String
    
    @AgeController
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Usage:
let person = Person(name: "john", age: 200)
print(person.name) // Output: "John"

person.name = "alice"
print(person.name) // Output: "Alice"
print(person.age) // Output: "Alice"
