class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var k = x^y
        var cnt = 0
  
        while(k>0){
            if k%2 == 1{
               cnt = cnt + 1 
            }
            k=k/2
        }
        return cnt
    }
}
