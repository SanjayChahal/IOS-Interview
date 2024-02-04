import UIKit

/*
 In this example, we define a LargeStruct that contains a property dataArray, which is an array of integers with 1 million elements. Passing this LargeStruct instance by value to the performOperation function can lead to unnecessary copying of the entire array, which can be expensive in terms of memory and time, especially if the struct is frequently passed around in functions or when it's being modified.
 
 
   Note: -- Copy On Write Doesn't work when you pass struct as param to a function.
 */


struct LargeStruct {
    var dataArray: [Int]

    init(dataArray: [Int]) {
        self.dataArray = dataArray
    }
    
    func printMemoryAddress() {
        withUnsafePointer(to: self) { ptr in
            print("Memory address:    \(ptr)")
        }
    }    
}


func performOperation(data: LargeStruct) {
    print("Printing performOperation struct address")
    data.printMemoryAddress()
}

// Create a large array of data
let largeDataArray = Array(1...10000000) // Array with 1 million elements

// Create an instance of the LargeStruct
let largeStruct = LargeStruct(dataArray: largeDataArray)
print("Printing LargeStruct address")

largeStruct.printMemoryAddress()

print("Printing newLargeStruct address")

let newLargeStruct = largeStruct
newLargeStruct.printMemoryAddress()


// Call the function with the large struct
performOperation(data: largeStruct)

// Printing the memory address of the struct

