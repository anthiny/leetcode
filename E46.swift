class Solution {
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
    
        for yline in board{
            if findSameValue(yline){
                return false
            }
        }
        
        var tempLine = [Character]()
        
        for x in 0...8{
            for y in 0...8{
                tempLine.append(board[y][x])
            }
            if findSameValue(tempLine){
                return false
            }
            else{
                tempLine.removeAll()
            }
        }
        
        tempLine.removeAll()
        var cnt = 1
        var x = 2
        var y = 2
        
        while(cnt < 10){
            tempLine = makeGroup(board, x, y)
            if findSameValue(tempLine){
                return false
            }
            else{
                tempLine.removeAll()
            }
            
            x=x+3
            if x==11{
                x=2
                y=y+3
            }
            cnt=cnt+1
        }
        
        return true
    }
    
    func makeGroup(_ board: [[Character]], _ xLimit: Int, _ yLimit: Int) -> [Character]{
        print(xLimit, yLimit)
        var tempLine = [Character]()
        
        for y in yLimit-2...yLimit{
            for x in xLimit-2...xLimit{
                tempLine.append(board[y][x])
            }
        }
        
        return tempLine
    }
    
    func findSameValue(_ group: [Character]) -> Bool {
    
        var dict = [Character : Int]()
        
        for c in group{
            if let key = dict[c]{
                if c != "."{
                    return true
                }
            }
            else{
                dict[c] = 1
            }
        }
        return false
    }
}
