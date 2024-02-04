import UIKit


/*
  1. Recursive structs are not allowed because it would lead to an infinitely large data structure.
 */


//struct ListNodeStruct {
//    var value: Int
//    var next: ListNodeStruct?
//
//    init(value: Int, next: ListNodeStruct? = nil) {
//        self.value = value
//        self.next = next
//    }
//}




/*
   Note: if required create a recursive data structure using classes. If you want to represent a recursive structure.
 
 */

class ListNode {
    var value: Int
    var next: ListNode?

    init(value: Int, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

// Function to print the linked list
func printLinkedList(_ node: ListNode?) {
    guard let currentNode = node else {
        print("nil")
        return
    }

    print("\(currentNode.value) -> ", terminator: "")
    printLinkedList(currentNode.next)
}

// Create a recursive linked list
let node1 = ListNode(value: 1)
let node2 = ListNode(value: 2)
let node3 = ListNode(value: 3)
let node4 = ListNode(value: 4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node1

// Print the linked list
printLinkedList(node1)
