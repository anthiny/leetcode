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
    var resultList: ListNode?
    var startPoint : ListNode?
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var inputList = head
        
        while(true){
            if isEmpty(inputList){
                break
            }
            else{
                addNode(inputList!.val)
            }
            
            inputList=inputList!.next
        }
        return startPoint
    }
    
    func isEmpty(_ target: ListNode?) -> Bool{
        if target == nil{
            return true
        }
        return false
    }
    
    func addNode(_ val: Int){
        if isEmpty(resultList){
            var tempNode = ListNode(val)
            resultList = tempNode
            startPoint = resultList
        }
        else{
            if resultList!.val != val{
                var tempNode = ListNode(val)
                resultList!.next = tempNode
                resultList = resultList!.next
            }
        }
    }
}
