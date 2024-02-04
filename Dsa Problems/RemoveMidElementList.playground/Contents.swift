import UIKit

  class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class Solution {
    func deleteMiddle(_ head: ListNode?) -> ListNode? {
        
        if head?.next == nil {
            return nil
        }
        
        var slowPointer: ListNode? = head
        var fastPointer: ListNode? = head?.next
        
        while fastPointer != nil {
            if let nextFast = fastPointer?.next?.next {
                fastPointer = nextFast
                slowPointer = slowPointer?.next
            } else {
                
                slowPointer?.next = slowPointer?.next?.next
                
                return head
            }
            
        }
        slowPointer?.next = slowPointer?.next?.next
        
        return head
    }
}
