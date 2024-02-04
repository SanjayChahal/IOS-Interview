import UIKit

extension Array where Element == Int {
    func jayFilter(completion: ((Element) -> Bool)) -> [Element] {
        var returnArray: [Element] = []
        for item in self {
            if completion(item) {
                returnArray.append(item)
            }
        }
        return returnArray
    }
}

let array = [3,4,8,7]
let filteredArray = array.jayFilter { item in item > 4 }
print("filtered array: \(filteredArray)")
