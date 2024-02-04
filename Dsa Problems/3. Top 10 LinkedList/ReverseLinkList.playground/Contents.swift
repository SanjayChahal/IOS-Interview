import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var prev: ListNode? = nil
        var cur = head
        var curNext: ListNode? = head
        
        while cur != nil {
            curNext = cur?.next
            
            cur?.next = prev
            prev = cur
            cur = curNext
        }
        
        return prev
    }
    
    func printNodes(node: ListNode) {
        var printNode: ListNode? = node
        
        while printNode?.next != nil {
            print(printNode?.val ?? "not found")
            printNode = printNode?.next
        }
    }
}


let node10 = ListNode(10)
let node9 = ListNode(9, node10)
let node8 = ListNode(8, node9)
let node7 = ListNode(7, node8)
let node6 = ListNode(6, node7)

let node = Solution().reverseList(node6)

Solution().printNodes(node: node!)

