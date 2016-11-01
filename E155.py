class MinStack(object):
    def __init__(self):
        """
        initialize your data structure here.
        """
        self.stack = []
        self.min = []
        

    def push(self, x):
        """
        :type x: int
        :rtype: void
        """
        if len(self.stack) == 0:
            self.min.append(x)
        else:
            if self.min[len(self.min)-1] > x:
                self.min.append(x)
            else:
                temp = self.min[len(self.min)-1]
                self.min.append(temp)
                
        self.stack.append(x)
        
    def pop(self):
        """
        :rtype: void
        """
        x = self.stack.pop(len(self.stack)-1)
        self.min.pop()
            
    def top(self):
        """
        :rtype: int
        """
        return self.stack[len(self.stack)-1]

    def getMin(self):
        """
        :rtype: int
        """
        return self.min[len(self.min)-1]
        


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
