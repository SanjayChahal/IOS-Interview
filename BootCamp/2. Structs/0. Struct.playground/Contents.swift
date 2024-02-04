import UIKit


/*
 In Swift, a struct is a user-defined data type that allows you to encapsulate related pieces of information together into a single unit. It can contain properties (variables and constants) to store data and methods to perform actions. Structs are used to create lightweight and immutable data structures, making them useful for representing simple data types like points, rectangles, or other small units of data. They are value types, meaning they are copied when passed around, ensuring that changes to one instance do not affect other instances.
 */

 
// Define a struct called 'Person'
struct Person {
    // Properties
    var name: String
    var age: Int
    var isStudent: Bool

    // Computed property to check if the person is a teenager (age between 13 and 19)
    var isTeenager: Bool {
        return age >= 13 && age <= 19
    }

    // Initializer memberwise
    init(name: String, age: Int, isStudent: Bool) {
        self.name = name
        self.age = age
        self.isStudent = isStudent
    }

    // Function to greet the person
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }

    // Function to check if the person can vote
    func canVote() -> Bool {
        return age >= 18
    }

    // Mutating function to change the person's age
    mutating func celebrateBirthday() {
        age += 1
    }

    // Static method to create a Person instance with a default age of 18
    static func createDefaultPerson(name: String, isStudent: Bool) -> Person {
        return Person(name: name, age: 18, isStudent: isStudent)
    }

    // Static property to store the legal voting age
    static var legalVotingAge: Int {
        return 18
    }
}

// Create an instance of the 'Person' struct using the static method
var person1 = Person.createDefaultPerson(name: "Alice", isStudent: false)

person1.celebrateBirthday()

// Accessing the computed property
print(person1.isTeenager)   // Output: false (assuming age is set to 18)

// Accessing the static property
print(Person.legalVotingAge) // Output: 18
