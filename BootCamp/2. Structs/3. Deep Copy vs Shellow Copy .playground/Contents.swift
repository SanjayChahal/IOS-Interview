import UIKit


/* Shallow copy, only the references to the original objects are copied, not the objects themselves. So, the new copy points to the same memory locations as the original. Any changes made to the copied object will also affect the original object since they share the same underlying data.
 */


class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let originalPerson = Person(name: "John")
let shallowCopyPerson = originalPerson // Shallow copy

shallowCopyPerson.name = "Alice"

print(originalPerson.name) // Output: "Alice" (originalPerson is also modified)
print(shallowCopyPerson.name)


/* In a Deep copy, a new instance is created with the same values as the original object, but it's an entirely separate object with its own memory. Deep copy ensures that changes made to the copied object do not affect the original object, and vice versa.
 */

extension Person {
    func deepCopy() -> Person {
        return Person(name: self.name)
    }
}

let person1 = Person(name: "John")
let deepCopyPerson = person1.deepCopy() // Deep copy

deepCopyPerson.name = "Alice"


print(person1.name) // Output: "John" (originalPerson is not modified)
print(deepCopyPerson.name) // Output: "John" (originalPerson is not modified)

// Memory address is diferent
print("Memory address of Person 1: \(Unmanaged.passUnretained(person1).toOpaque())")
print("Memory address of Deepcipy: \(Unmanaged.passUnretained(deepCopyPerson).toOpaque())")

