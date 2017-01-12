class Solution {
    func findComplement(_ num: Int) -> Int {
        var target = num
        var cnt = 0
        var partner = 1
        var w = 1
        
        while(target>1){
            target = target/2
            w=w*2
            partner = partner + w
        }
        
        return num^partner
    }
}
