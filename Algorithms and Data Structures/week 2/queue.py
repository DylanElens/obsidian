class queue:
    def __init__(self):
        self.stack1 = []
        self.stack2 = []

    #the complexity of push is O(1)
    def push(self, item):
        self.stack1.append(item)
    
    #the complexity of pop is O(n)
    def pop(self):
        if len(self.stack2) == 0:
            while len(self.stack1) != 0:
                self.stack2.append(self.stack1.pop())
        return self.stack2.pop()

    def isEmpty(self):
        return len(self.stack1) == 0 and len(self.stack2) == 0

def test_queue() -> bool:
    q = queue()
    q.push(1)
    q.push(2)
    q.push(3)
    q.push(4)
    if q.pop() != 1:
        return False
    if q.pop() != 2:
        return False
    if q.pop() != 3:
        return False
    if q.pop() != 4:
        return False
    if not q.isEmpty():
        return False
    return True


if __name__ == '__main__':
    if test_queue():
        print('test success')
    else:
        print('test failed')
