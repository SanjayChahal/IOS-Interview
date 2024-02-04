import Foundation

class MyClass {
    
    init (myProperty: Int) {
        self.myProperty = myProperty
    }
    var myProperty: Int = 0 {
        willSet {
            // Code to be executed before the property's value is about to be changed
            print("About to set myProperty to \(newValue)")
        }
        
        didSet {
            // Code to be executed after the property's value has been changed
            print("myProperty was changed from \(oldValue) to \(myProperty)")
        }
    }
}

let obj = MyClass(myProperty: 9)  // While initializing object property observers not called
obj.myProperty = 5
obj.myProperty = 10

