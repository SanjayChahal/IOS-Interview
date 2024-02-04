import UIKit

class Solution {
    
    func sortArray() {
        
        let serialQueue1 = DispatchQueue(label: "swiftlee.serial.queue")
 
        serialQueue1.async {
            for i in 0..<10 {
                print("A:--- \(i)")
            }
        }
        
        serialQueue1.async {
            for i in 10..<20 {
                print("B:--- \(i)")
            }
        }
        
        serialQueue1.sync {
            for i in 20..<30 {
                print("sync:-\(i)")
            }
        }
        
        serialQueue1.sync {
            for i in 30..<40 {
                print("sync:--\(i)")
            }
        }

    }
    
    
    // *************** EXample deadlock on Serial Queue *******************
    
    func serialQueue() {
        
        let serialQueue = DispatchQueue(label: "swiftlee.serial.queue")
 
        serialQueue.async {
            for i in 0..<10 {
                print("Asunch: \(i)")
            }
            serialQueue.sync {
                print("Synch called inside asynch")
            }
            print("done")
        }
        
        
    }
}


Solution().serialQueue()
