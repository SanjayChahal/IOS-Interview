import UIKit

class Father {
    var surname: String
    var landInAcr: Int
    
    init(surname: String, landInAcr: Int) {
        self.surname = surname
        self.landInAcr = landInAcr
    }
    
    func growWeat() {
        self.cultivate()
        self.watteringTheCorp()
    }
    
    private func cultivate() {
        print("Cultivating ")
        // some cultivation functions
    }
    
    private func watteringTheCorp() {
        // Strat watering process
        print("We are watering")
    }
}

class Son: Father {
    var salary: Int
    
    init(surname: String, landInAcr: Int, salary: Int) {
        self.salary = salary
        super.init(surname: surname, landInAcr: landInAcr)
    }
    
    
}

let son = Son(surname: "Chahal", landInAcr: 50, salary: 75000)

son.growWeat()


