import UIKit

//1. Stored Properties

//Stored properties are variables or constants declared within a class
//They are assigned an initial value, and their value can be changed and mutated over time.
//Stored properties must have a definite type, which is known at compile-time.

//********************************************************************************************


//2. Computed properties

//Computed properties do not store values directly.
//Computed properties must always be declared as variables (using var keyword) since their value is computed on the fly and cannot be assigned an initial value.
//The getter method is required, but the setter is optional.

//********************************************************************************************

//4.  Class Property  --

//********************************************************************************************

//4.  Lazy properties  -- Discus it Separatly in next file

//*******************************************************************


//5. Read Only Computed Properties

//You can simplify the declaration of a read-only computed property by removing the get keyword and its braces:



class Person {
    // Class Property
    static let species = "Homo sapiens"

    // Instance Properties
    // Stored Properties
    var name: String
    var age: Int
    
    
    private var intro: String?

    // Computed Property (read-only)
    var isAdult: Bool {
        return age >= 18
    }

    // Non-read-only Computed Property
    var introduction: String {
        get {
            return "Hi, I'm \(name), \(age) years old."
        }
        set {
            intro = newValue
        }
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
}

// Usage:
var person = Person(name: "John", age: 25)

print(Person.species)            // Output: "Homo sapiens" (Class Property)

print(person.name)               // Output: "John" (Instance Property)
print(person.age)                // Output: 25 (Instance Property)

print(person.isAdult)            // Output: true (Computed Property - read-only)

print(person.introduction)       // Output: "Hi, I'm John, 25 years old." (Computed Property - non-read-only)
person.introduction = "Alice, 30"

print(person.name)               // Output: "Alice" (Modified using the setter of non-read-only computed property)
print(person.age)                // Output: 30 (Modified using the setter of non-read-only computed property)
