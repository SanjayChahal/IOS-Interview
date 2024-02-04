import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return head
        }

        var oddNode: ListNode? = nil
        var evenNode: ListNode? = nil
        var evenNodeHead: ListNode? = nil
        var currNode = head
        var index = 1

        while currNode != nil {
            if index % 2 == 0 {
                if evenNode == nil {
                    evenNodeHead = currNode
                    evenNode = currNode
                } else {
                    evenNode?.next = currNode
                    evenNode = evenNode?.next
                }
            } else {
                if oddNode == nil {
                    oddNode = currNode
                } else {
                    oddNode?.next = currNode
                    oddNode = oddNode?.next
                }
            }
            index += 1
            currNode = currNode?.next
        }
        oddNode?.next = evenNodeHead
        evenNode?.next = nil

        return head
    }
}

