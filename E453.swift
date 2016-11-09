class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted()
        var min = sortedNums[0]
        var sum = 0
        
        for n in nums{
            var temp = n - min
            sum = sum+temp
        }
        
        return sum
    }
}
