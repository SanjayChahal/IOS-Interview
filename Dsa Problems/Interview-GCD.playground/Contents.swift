import UIKit


class MyQueuesExample {
    private let cuncurentQueue = DispatchQueue(label: "my.project.MyQueuesExample")
    
    func doSomerhing() {
        
        cuncurentQueue.sync {
            self.printApple()
        }
        
        cuncurentQueue.async {
            self.printBnana()
        }
        
        print("***************** in between *************************")
        
        cuncurentQueue.async {
            self.printOrages()
        }
        
        print("********************* Finally done with it ***************************")
        
    }
    
    func printApple() {
        for i in 1..<60 {
            print("Apple \(i)")
        }
    }
    
    func printOrages() {
        for i in 1..<60 {
            print("Oranges \(i)")
        }
    }
    
    func printBnana() {
        for i in 1..<60 {
            print("Bnana \(i)")
        }
    }
}


MyQueuesExample().doSomerhing()
