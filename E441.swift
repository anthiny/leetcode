class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var startRow = 1
        var weight = 2
        var cnt = 0
        while(true){
            if startRow > n{
                break
            }
            startRow = startRow + weight
            weight += 1
            cnt += 1
        }
        return cnt
    }
}
