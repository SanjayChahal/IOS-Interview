import UIKit

//Q. What are the characteristics of a reference type in Swift?

// 1. Reference Semantics: When you create an instance of a reference type, you pass around a reference (memory address), rather than its value.

//2. Shared State: Multiple objects can point to the same instance of a reference type, and any changes made through one reference affect all other references to the same object.

//3. Reference Counting (ARC): Swift uses Automatic Reference Counting to manage memory for reference types. The system keeps track of the number of references to an object, and when the count reaches zero, the object is deallocated.


//4. Inheritance: Reference types can participate in inheritance, allowing you to create subclasses that inherit properties and methods from their superclass.

                                                                                        
                                                                                        

class Dog {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// Create two references to the same Dog object
let dog1 = Dog(name: "Buddy")
let dog2 = dog1

// Modify the name of the dog using one reference
dog1.name = "Max"

// Both references point to the same object, so they share the same state
print(dog1.name) // Output: "Max"
print(dog2.name) // Output: "Max"

let address1 = Unmanaged.passUnretained(dog1).toOpaque()
let address2 = Unmanaged.passUnretained(dog2).toOpaque()

print("Address of first object   is: \(address1)")
print("Address of secound object is: \(address2)")
