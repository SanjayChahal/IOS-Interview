import SwiftUI


/*
 
 1. open:
         Allows access from anywhere, and can be subclassed or overridden in other modules.
 2. public:
         Allows access from anywhere, but can only be subclassed or overridden within the module.
 3. internal:
         The default access level, accessible within the same module but not from other modules.
 4. fileprivate:
         Accessible only within the source file where it's defined.
 5. private:
    Accessible only within the enclosing scope, such as a class or struct.
 
 */

// Note Default access Modifire is internal

// Internal class


internal class Engine {
    fileprivate var model: String

    init(model: String) {
        self.model = model
    }

    private func ignite() {
        print("Igniting the engine.")
    }
}



// Public protocol
public protocol Vehicle {
    var name: String { get }
    func start()
}



// Public class
public class Car: Vehicle {
    // Private property
    private var brand: String

    // Fileprivate property
    fileprivate var engine: Engine

    // Public property
    public var name: String

    // Computed property with internal access level
    internal var description: String {
        return "A \(brand) car with \(engine.model) engine."
    }

    public init(name: String, brand: String, engineModel: String) {
        self.name = name
        self.brand = brand
        self.engine = Engine(model: engineModel)
    }

    public func start() {
        engine.ignite()
        print("\(name) is starting.")
    }

    // Private nested class
    private class Wheel {
        var size: Int
        init(size: Int) {
            self.size = size
        }
    }
}

// Usage:
let myCar = Car(name: "MyCar", brand: "Toyota", engineModel: "V6")
myCar.start()
print(myCar.description)


fileprivate class Employee {
    
}



