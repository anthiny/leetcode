class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var temp = digits
        var remain = 1
        
        for i in (0...(temp.count - 1)).reversed(){
            temp[i] += remain
            remain = temp[i]/10
            temp[i] = temp[i]%10
        }
        
        if remain > 0{
            temp.insert(1, at: 0)
        }
        
        return temp
    }
}
