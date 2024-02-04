import Foundation

/* A race condition can occur when multiple threads access shared resources concurrently, leading to unpredictable results. */

var counter = 0

func incrementCounter() {
    for _ in 1...100000 {
        counter += 1
    }
}

DispatchQueue.concurrentPerform(iterations: 3) { _ in
    incrementCounter()
}

print("Final counter value: \(counter)")

