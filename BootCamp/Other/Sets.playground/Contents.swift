import Foundation

var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]

// Looping through a set
for number in uniqueNumbers {
    print(number)
}

// Adding an element to a set
uniqueNumbers.insert(6)

// Removing an element from a set
uniqueNumbers.remove(3)
