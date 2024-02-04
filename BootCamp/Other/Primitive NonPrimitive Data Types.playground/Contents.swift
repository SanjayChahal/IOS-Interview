import Foundation


//Primitive Data Types


var age: Int = 25
var temperature: Double = 98.6
var isRaining: Bool = true
var name: String = "John"
var initial: Character = "J"
var optionalValue: Int? = nil



// Array

var fruits = ["Apple", "Banana", "Orange"]

// Looping through an array
for fruit in fruits {
    print(fruit)
}

// Adding an element to an array
fruits.append("Mango")

// Removing an element from an array
fruits.remove(at: 1)

