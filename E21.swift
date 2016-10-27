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
    var mergeList: ListNode?
    var fistPoint: ListNode?
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var firstList = l1
        var secondList = l2
        while(true){
            if isEmpty(firstList) && isEmpty(secondList){
                break
            }
            var minNode = findMinNode(firstList, secondList)

            if let unwrapped = firstList{
                if minNode!.val == unwrapped.val{
                    firstList = unwrapped.next
                    addNode(minNode!.val)
                }
            }
            
            if let unwrapped = secondList{
                if minNode!.val == unwrapped.val{
                    secondList = unwrapped.next
                    addNode(minNode!.val)
                }
            }
        }
        
        return fistPoint
    }
    
    func addNode(_ val: Int){
        print(val)
         if isEmpty(mergeList){
            let node = ListNode(val)
            mergeList = node
            fistPoint = mergeList
        }
        else{
            let node = ListNode(val)
            mergeList!.next = node
            mergeList = mergeList!.next
        }
    }
    
    func isEmpty(_ target: ListNode?) -> Bool {
        if target == nil{
            return true
        }
        else{
            return false
        }
    }
    
    func findMinNode(_ first: ListNode?, _ second: ListNode?) -> ListNode? {
        if isEmpty(first){
            return second
        }
        else if isEmpty(second){
            return first
        }
        else{
             if first!.val < second!.val{
                return first
            }
            else{
                return second
            }   
        }
    }
}
