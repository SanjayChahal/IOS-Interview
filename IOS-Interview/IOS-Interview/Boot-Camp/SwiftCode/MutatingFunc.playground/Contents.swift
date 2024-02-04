import UIKit

/*
 
 1. Doen't matter if you have declared a Struct property var or let. If you declared struct object as constatnt you can't change any property.
 2. if you want to change any property of struct you need to take struct as var. Ex. -- var sandy = Human(age: 36, name: "Sandy", sex: "Male")
 3. Now Questions arrises why we make function as mutating if we can directly change any property.
    Ans. -- Swift has no idea whether you will use struct with constants or variables, so by default it takes the safe approach: Swift won’t let you write methods that change properties unless you specifically request it by marking
        as a mutating function.
 
 
 */

struct Human {
    var age: Int
    let name: String
    let sex: String
    
    mutating func setAge(age: Int) {
        // if your struct function want to change any stored property you need to define that func as mutating.
        self.age = age
    }
}


var sandy = Human(age: 36, name: "Sandy", sex: "Male")
let deep = Human(age: 26, name: "Deep", sex: "FeMale")

sandy.age = 45

sandy.setAge(age: 44)
//deep.setAge(age: 24)  // Error: Cannot use mutating member on immutable value: 'deep' is a 'let' constant

print(sandy.age)
