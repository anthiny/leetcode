/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if let unwrapped = head{
            if let unwrappedNext = unwrapped.next{
                var temp = unwrappedNext.next
                unwrappedNext.next = unwrapped
                unwrapped.next = temp
                swapNode(unwrapped)
                return unwrappedNext
            }
        }
        return head
    }
    
    func swapNode(_ node: ListNode){
        if let nNode = node.next{
            if let doubleN = nNode.next{
                var temp = doubleN.next
                doubleN.next = nNode
                nNode.next = temp
                node.next = doubleN
                swapNode(nNode)
            }   
        }
    }
}
