import Foundation

//"Overriding" is the ability of a subclass to provide its own implementation for a method, property, or initializer that is already defined in its superclass.

class Shape {
    func area() -> Double {
        return 0.0 // Default area for an unspecified shape is 0.0
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    // Overriding the area method for rectangles parent class definition is different.
    override func area() -> Double {
        return width * height
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }

    override func area() -> Double {
        return radius * 3.14
    }
}

// Usage:
let rectangle: Rectangle = Rectangle(width: 5.0, height: 3.0)
let shape: Shape = Shape()

print("Rectangle Area: \(rectangle.area())") // Output: "Rectangle Area: 15.0"
print("Shape Area: \(shape.area())")         // Output: "Shape Area: 0.0"

