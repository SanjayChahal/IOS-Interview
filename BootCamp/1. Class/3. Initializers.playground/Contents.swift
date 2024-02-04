import UIKit


// 1. Designated Initializer ( can have multiple )

class Rectangle {
    var width: Double
    var height: Double

    // Designated Initializer 1
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    // Designated Initializer 2
    init(side: Double) {
        self.width = side
        self.height = side
    }

    // Other methods and properties can be defined here...
}


// Usage:
let rectangle1 = Rectangle(width: 24.0, height: 24.0)
let rectangle2 = Rectangle(side: 24.0)



//****************************************************************************************************



// 2. Convenience initializer
//A convenience initializer is a secondary initializer that provides an additional way to create an instance of a class.
class Employee {
    var name: String
    var age: Int

    // Designated Initializer
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    // Convenience Initializer
    convenience init(name: String) {
        self.init(name: name, age: 0) // Call the designated initializer with a default age
    }
    
    convenience init() {
        self.init(name: "Default name", age: 0)
    }
    
}

// Usage:
let person1 = Employee(name: "John", age: 30)
let person2 = Employee(name: "Alice")


//****************************************************************************************************

//3. Required initializer

//  required initializer is a designated initializer that must be implemented in every subclass, even if the subclass adds no new properties of its own.

//Required initializers promote consistency and ensure that subclasses properly handle essential initialization requirements specified by the superclass.

class Vehicle {
    var numberOfWheels: Int

    // Required Initializer
    required init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
}

class Car: Vehicle {
    var color: String = ""

     //Subclass must implement the required initializer
    required init(numberOfWheels: Int) {
        self.color = "Red" // Providing a default color for the Car class
        super.init(numberOfWheels: numberOfWheels)
    }
}



//****************************************************************************************************


// 4. What is the difference between a designated initializer and a convenience initializer?


//Designated Initializer: Primary initializer responsible for fully initializing all properties introduced by the class and calling superclass initializers. Not inherited.
//Convenience Initializer: Secondary initializer providing an alternative way to create instances by calling another initializer in the same class. Inherited by subclasses.
