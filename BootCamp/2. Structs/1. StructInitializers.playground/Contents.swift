import Foundation

struct Person {
    var name: String = "John Doe"
    var age: Int = 30
    var occupation: String = "Software Engineer"
}

// Creating an instance of the struct using default values
let defaultPerson = Person()
print(defaultPerson) // Output: Person(name: "John Doe", age: 30, occupation: "Software Engineer")

// Creating an instance of the struct with custom values
let customPerson = Person(name: "Alice", age: 28, occupation: "Data Scientist")
print(customPerson) // Output: Person(name: "Alice", age: 28, occupation: "Data Scientist")
