import UIKit


/*  . The Builder pattern is a creational design pattern that is used to construct complex objects step by step. It allows you to create an object with many optional components in a more readable and maintainable way.
 */

/*
 Director: This is the high-level class responsible for orchestrating the construction of the complex object. It interacts with the builder to specify the steps needed to create the object.
 Builder: The builder interface defines a set of methods for building the various parts of the complex object. There can be different concrete builders that implement this interface.
 Concrete Builder: These are the classes that implement the builder interface and provide concrete implementations for building each part of the object.
 Product: The complex object being constructed. It typically has multiple components or parts that are set by the builder.
 */

// Product
class Computer {
    var cpu: String?
    var memory: String?
    var storage: String?
    
    func description() -> String {
        return "CPU: \(cpu ?? ""), Memory: \(memory ?? ""), Storage: \(storage ?? "")"
    }
}

// Product
class Meal {
    var mainCourse: String?
    var sideDish: String?
    var drink: String?
    var dessert: String?
    
    func description() -> String {
        var result = "Meal: "
        if let mainCourse = mainCourse {
            result += "Main Course: \(mainCourse), "
        }
        if let sideDish = sideDish {
            result += "Side Dish: \(sideDish), "
        }
        if let drink = drink {
            result += "Drink: \(drink), "
        }
        if let dessert = dessert {
            result += "Dessert: \(dessert)"
        }
        return result
    }
}

// Builder interface
protocol MealBuilder {
    func addMainCourse(_ mainCourse: String)
    func addSideDish(_ sideDish: String)
    func addDrink(_ drink: String)
    func addDessert(_ dessert: String)
    func getResult() -> Meal
}

// Concrete Builder
class ItalianMealBuilder: MealBuilder {
    private var meal = Meal()
    
    func addMainCourse(_ mainCourse: String) {
        meal.mainCourse = mainCourse
    }
    
    func addSideDish(_ sideDish: String) {
        meal.sideDish = sideDish
    }
    
    func addDrink(_ drink: String) {
        meal.drink = drink
    }
    
    func addDessert(_ dessert: String) {
        meal.dessert = dessert
    }
    
    func getResult() -> Meal {
        return meal
    }
}

// Director
class Chef {
    private var builder: MealBuilder
    
    init(builder: MealBuilder) {
        self.builder = builder
    }
    
    func createMeal() -> Meal {
        builder.addMainCourse("Spaghetti Bolognese")
        builder.addSideDish("Garlic Bread")
        builder.addDrink("Red Wine")
        builder.addDessert("Tiramisu")
        return builder.getResult()
    }
}

// Usage
let italianMealBuilder = ItalianMealBuilder()
let chef = Chef(builder: italianMealBuilder)
let italianMeal = chef.createMeal()

print(italianMeal.description())
