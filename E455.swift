class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var cookies = s.sorted()
        var cnt = 0
        
        for greedValue in g{
            var i = 0
            for cookie in cookies{
                if greedValue <= cookie{
                    cnt = cnt + 1
                    cookies.remove(at: i)
                    break
                }
                i = i+1
            }
        }
        return cnt
    }
}
