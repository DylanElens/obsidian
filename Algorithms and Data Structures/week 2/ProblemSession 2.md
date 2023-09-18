
## 1
step 1
Dequeued= {(A,0)}
Frontier = {(E,1), (B,1}

step 2
Dequeued= {(A,0), (E,1)}
Frontier = {(B,1), (F,2)}

step 3
Dequeued= {(A,0), (E,1), (B,1)}
Frontier = {(F,2), (C,2)}

step 4
Dequeued= {(A,0), (E,1), (B,1), (F,2)}
Frontier = {(C,2), (G,2)}

step 5
Dequeued= {(A,0), (E,1), (B,1), (F,2), (C,2)}
Frontier = {(G,3), (H,3)}

step 6
Dequeued= {(A,0), (E,1), (B,1), (F,2), (C,2), (G,3)}
Frontier = {(H,3)}

step 7
Dequeued= {(A,0), (E,1), (B,1), (F,2), (C,2), (G,3), (H,3)}
Frontier = {(D,4)}

step 8
Dequeued= {(A,0), (E,1), (B,1), (F,2), (C,2), (G,3), (H,3), (D,4)}
Frontier = {}

## 2
```python
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
```

The complexity of push is: $\mathcal{O}(1)$
The complexity of pop is: $\mathcal{O}(n)$

## 3
```
function isEmpty()
	return stack.length == 0
end function

function push(element)
	stack.append(element)
end function

function pop()
	element = this.stack[-1] //grab last item
	del stack[-1] //remove last element
	return element
 end function
 
function top(element)
	return this.stack[-1] //grab last element
end function


function display(element)
	foreach element in stack:
		writeLn(element)
end function

function empty()
	this.stack = []
```
### b
all the this functions have a runtime complexity of $\mathcal{O}(1)$ except display. That one has a runtime complexity of 
$\mathcal{O}(n)$.

### C
the String 
"AAA"
then
"AAA"
"BBB"
"CCC"
then:
"CCC"
then:
"AAA"
"BBB"
### d
see code block


## 4
1. I do not know what is going on here
2. might as well be chinese
## 5
Yes this is correct. Breadth first search will always return the optimal result when it is given a point to start from


