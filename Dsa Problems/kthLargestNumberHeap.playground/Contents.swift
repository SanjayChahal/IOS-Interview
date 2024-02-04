import Foundation

// Define a max heap data structure using an array.
struct MaxHeap<T: Comparable> {
    private var elements: [T] = []

    mutating func insert(_ element: T) {
        elements.append(element)
        var currentIndex = elements.count - 1
        while currentIndex > 0 {
            let parentIndex = (currentIndex - 1) / 2
            if elements[currentIndex] > elements[parentIndex] {
                elements.swapAt(currentIndex, parentIndex)
                currentIndex = parentIndex
            } else {
                break
            }
        }
    }

    mutating func pop() -> T? {
        guard !elements.isEmpty else { return nil }
        let popped = elements[0]
        elements[0] = elements.removeLast()
        var currentIndex = 0
        while true {
            let leftChildIndex = 2 * currentIndex + 1
            let rightChildIndex = 2 * currentIndex + 2
            var nextIndex = currentIndex
            if leftChildIndex < elements.count && elements[leftChildIndex] > elements[nextIndex] {
                nextIndex = leftChildIndex
            }
            if rightChildIndex < elements.count && elements[rightChildIndex] > elements[nextIndex] {
                nextIndex = rightChildIndex
            }
            if nextIndex == currentIndex {
                break
            }
            elements.swapAt(currentIndex, nextIndex)
            currentIndex = nextIndex
        }
        return popped
    }
}

// Function to find the 4th largest number using a max heap.
func findFourthLargestNumber(_ numbers: [Int]) -> Int? {
    guard numbers.count >= 4 else { return nil }

    var maxHeap = MaxHeap<Int>()

    for number in numbers {
        maxHeap.insert(number)
    }

    for _ in 0..<3 {
        maxHeap.pop()
    }

    return maxHeap.pop()
}

// Test the function
let numbers = [12, 5, 9, 23, 8, 17, 31]
if let fourthLargest = findFourthLargestNumber(numbers) {
    print("The 4th largest number is: \(fourthLargest)")
} else {
    print("There are not enough numbers to find the 4th largest.")
}
