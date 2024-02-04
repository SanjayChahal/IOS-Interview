import UIKit

/* In Swift, when you create a subclass, you often need to initialize properties that are defined in both the subclass and its superclass. This ensures that all properties have valid initial values and the entire class hierarchy is properly initialized. To achieve this, you call the designated initializer of the superclass using super.init within the subclass's initializer.
 
 Here are the reasons why we call super.init in Swift child classes:
 
 Initializing Superclass Properties: The super.init call ensures that all properties defined in the superclass are initialized. The superclass initializer takes care of setting up properties that are unique to the superclass.
 Inheritance Chain: Swift follows an inheritance chain where each class's designated initializer should call its immediate superclass's designated initializer, all the way up to the topmost superclass. This guarantees that all properties in the entire class hierarchy are initialized, starting from the topmost class down to the subclass.
 Preventing Incomplete Initialization: Not calling super.init can lead to incomplete initialization. If the superclass requires certain setup or validation, not calling its initializer could leave properties uninitialized, causing unexpected behavior or crashes.
 */

class GrandFather {
    var surname: String
    
    
    init(surname: String) {
        print("Initializing surname in GrandFather Class")
        self.surname = surname
    }
    
    private var skinColour: String = "Black"
    
    func cultivate() -> String {
        let name = "Vineet"
        return name
    }
}

class Father: GrandFather {
    var landInAcr: Int
    
    init(surname: String, landInAcr: Int) {
        print("initializing land in acr in Father Class")
        self.landInAcr = landInAcr
        
        super.init(surname: surname)
    }
    
    func growWeat() {
        
    }
}

class Son: Father {
    var salary: Int
    
    init(surname: String, landInAcr: Int, salary: Int) {
        print("Initializing salary in SOn Class")
        self.salary = salary
        
        super.init(surname: surname, landInAcr: landInAcr)
    }
}


let son = Son(surname: "Chahal", landInAcr: 50, salary: 75000)

let grandfather: GrandFather = son
let father: Father = son


son.salary
son.landInAcr
son.surname
son.kin


let grandfather = GrandFather(surname: "Chahal")




class Cafe {
    
    let coffePowder: Int = 1
    let milk: Int = 10
    
    init(cofe: Int, milk: Int) {
        self.coffePowder = cofe
        self.milk = milk
    }
    
    func prepairCofee() {
        self.processRequest()
    }
    
    private func processRequest() {
        ///
        ///
        ///
        ///
        ///
        ///
        ///
        ///
    }
    
}


let mecdonald = Cafe(cofe: 1, milk: 10)

mecdonald.prepairCofee()
