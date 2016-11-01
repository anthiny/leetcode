class MinStack(object):
    def __init__(self):
        """
        initialize your data structure here.
        """
        self.stack = []
        self.min = 0
        

    def push(self, x):
        """
        :type x: int
        :rtype: void
        """
        if len(self.stack) == 0:
            self.min = x
        else:
            if self.min > x:
                self.min = x
        self.stack.append(x)
        


    def pop(self):
        """
        :rtype: void
        """
        x = self.stack.pop(len(self.stack)-1)
        if x == self.min and self.stack.count(x) == 0:
             temp = self.stack[:]
             if len(temp) != 0:
                temp.sort()
                self.min = temp[0]
            
    def top(self):
        """
        :rtype: int
        """
        return self.stack[len(self.stack)-1]

    def getMin(self):
        """
        :rtype: int
        """
        return self.min
        


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
