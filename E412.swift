class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var cnt = 1
        var result = [String]()
        
        while(cnt <= n){
            var temp = ""
            if cnt%3 != 0 && cnt%5 != 0{
                temp = String(cnt)
            }
            else{
                if cnt%3 == 0{
                    temp = "Fizz"
                }
                if cnt%5 == 0{
                    temp = temp+"Buzz"
                }    
            }
            
            result.append(temp)
            cnt = cnt + 1
        }
        
        return result
    }
}
