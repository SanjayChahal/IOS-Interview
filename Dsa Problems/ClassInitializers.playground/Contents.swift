import UIKit



class MyQueuesExample {
    private let cuncurentQueue = DispatchQueue(label: "my.project.MyQueuesExample", attributes: .concurrent)
    
    func doSomerhing() {
        cuncurentQueue.async {
            self.printOrages()
        }
        
        cuncurentQueue.sync {
            self.printApple()
        }
    }
    
    func printApple() {
        for i in 1..<11 {
            print("Apple \(i)")
        }
    }
    
    func printOrages() {
        for i in 1..<11 {
            print("Oranges \(i)")
        }
    }
}


MyQueuesExample().doSomerhing()
