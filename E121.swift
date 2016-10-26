class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        let endPoint = prices.count - 1
        if prices.count < 2{
            return 0
        }
        
        var maxList = [Int]()
        for c in prices{
            maxList.append(0)
        }
    
        maxList[endPoint] = prices[endPoint]
        for idx in (0...endPoint-1).reversed(){
            maxList[idx] = MAX(prices[idx], maxList[idx+1])
        }
        
        var tempMaxProfit = maxList[0] - prices[0]
        for idx in 1...endPoint{
            tempMaxProfit = MAX(tempMaxProfit, (maxList[idx] - prices[idx]))
        }
        return tempMaxProfit
    }
    
    func MAX(_ first: Int, _ second: Int) -> Int{
        if first > second{
            return first
        }
        else{
            return second
        }
    }
}
