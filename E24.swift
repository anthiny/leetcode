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
    var first = true
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if let unwrapped = head{
            return swapNode(unwrapped)
        }
        else{
            return head
        }
    }
    
    func swapNode(_ node: ListNode) -> ListNode{
        if let nNode = node.next{
            if first{
                first = false
                var temp = nNode.next
                nNode.next = node
                node.next = temp
                swapNode(node)
            }
            else{
                if let doubleN = nNode.next{
                    var temp = doubleN.next
                    doubleN.next = nNode
                    nNode.next = temp
                    node.next = doubleN
                    swapNode(nNode)
                }   
            }
            return nNode
        }
        else{
            return node
        }
    }
}
