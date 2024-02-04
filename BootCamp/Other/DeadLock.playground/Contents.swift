import Foundation

/*A deadlock occurs when threads or processes are blocked indefinitely, waiting for each other to release resources. Consider the following example: */

let resourceA = NSLock()
let resourceB = NSLock()

DispatchQueue.concurrentPerform(iterations: 2) { iteration in
    if iteration == 0 {
        resourceA.lock()
        resourceB.lock()
        // Perform operations with resourceA and resourceB
        resourceB.unlock()
        resourceA.unlock()
        print("Unlocked in if")
    } else {
        resourceB.lock()
        resourceA.lock()  // Deadlock occurs here
        // Perform operations with resourceA and resourceB
        resourceA.unlock()
        resourceB.unlock()
        print("Unlocked in else")
    }
}

