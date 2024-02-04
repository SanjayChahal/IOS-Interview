import UIKit


class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Create two instances of the Person class
let person1 = Person(name: "John")
let person2 = person1 // person2 now points to the same instance as person1

print("Memory address of Person 1: \(Unmanaged.passUnretained(person1).toOpaque())")
print("Memory address of Person 2: \(Unmanaged.passUnretained(person2).toOpaque())")


if (person1 === person2) {
    print("same object")
}
