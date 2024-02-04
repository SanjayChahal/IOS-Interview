import UIKit

extension Array where Element == Int {
    
    func customFilter(completion: (Element) -> Bool) -> [Element] {
        var returnArray: [Element] = []
        
        for item in self {
            if completion(item) {
                returnArray.append(item)
            }
        }
        
        return returnArray
    }
}

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let filteredNumbers = numbers.jayFilter { $0 % 2 == 0 }
print(filteredNumbers)  // Output: [2, 4, 6, 8, 10]

