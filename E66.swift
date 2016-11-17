class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var temp = digits
        var isAdd = true
        
        for i in (0...(temp.count - 1)).reversed(){
            if isAdd{
                temp[i] = temp[i] + 1
                isAdd = false
            }
            if temp[i] == 10{
                temp[i] = 0
                isAdd = true
            }
        }
        
        if isAdd{
            temp.insert(1, at: 0)
        }
        
        return temp
    }
}
