## 1
### a
**Iteration 1**

Vertex added to the spanning tree: A
Priority queue for the remaining vertices:

|Vertex|Key|Predecessor|
|---|---|---|
|B|3|A|
|E|7|A|
|C|8|A|
|D|∞|None|

Spanning tree: A

**Iteration 2**

Vertex added to the spanning tree: B
Priority queue for the remaining vertices:

|Vertex|Key|Predecessor|
|---|---|---|
|E|2|B|
|C|8|A|
|D|6|B|

Spanning tree: A - B

**Iteration 3**
Vertex added to the spanning tree: E
Priority queue for the remaining vertices:

|Vertex|Key|Predecessor|
|---|---|---|
|C|3|E|
|D|6|B|
Spanning tree: A - B - E

**Iteration 4**
Vertex added to the spanning tree: C
Priority queue for the remaining vertices:

|Vertex|Key|Predecessor|
|---|---|---|
|D|5|C|
Spanning tree: A - B - E - C

**Iteration 5**
Vertex added to the spanning tree: D
Priority queue for the remaining vertices:

|Vertex|Key|Predecessor|
|---|---|---|
|None|None|None|
Spanning tree: A - B - E - C - D
The final spanning tree is A - B - E - C - D with a total weight of 13.


### b
**Iteration 1**
Edge added to the spanning tree: E - B (weight: 2)
Spanning tree: E - B

**Iteration 2**

Edge added to the spanning tree: C - E (weight: 3)

Spanning tree: E - B - C

**Iteration 3**

Edge added to the spanning tree: A - B (weight: 3)
Spanning tree: A - B - E - C

**Iteration 4**

Edge added to the spanning tree: C - D (weight: 5)
Spanning tree: A - B - E - C - D
The final spanning tree is A - B - E - C - D with a total weight of 13.

### c
We would need to construct a graph and treat each element as a node wihtin that graph and connect all vertices with edges of weights representing the comparison results between array elements. element `a` is smaller than element `b`, assign a weight of 1 to the edge from `a` to `b`, and 0 if `a` is greater than or equal to `b`. After this we run prims algoritm. After that we traverse the minimum spanning tree from the root(smallest node) using dfs. This traversal should give us the sorted array.

## 2
### a 

```python

def find_smallest_interval_cover(S):
    intervals = []  
    
    current_interval = [S[0], S[0] + 1]
    
    for i in range(1, len(S)):
        current_point = S[i]
        
        if current_point <= current_interval[1]:
            continue
        else:
            new_interval = [current_point, current_point + 1]
            intervals.append(current_interval)
            current_interval = new_interval
    
    intervals.append(current_interval)  
    
    return intervals
```

### b
It works correctly for this problem because it always selects the interval that is as small as possible to cover the current point whilst making sure that the point is covered.

Since we are starting with the leftmost point and then keep grabbing the smallest local points we can call it greedy.

The greedy choice at each step makes sure that no intervals are added unnecessarily. 

### 3
```python
def is_subsequence(S, S_prime):
	i = 0
	j = 0
	
    while i < len(S) and j < len(S_prime):
        if S[i] == S_prime[j]:
            j += 1
        i += 1
        
    return j == len(S_prime)

```

The algorithm has a time complexity of O(n) because it iterates through the larger sequence, S, only once. 

The algorithm checks if S' is a subsequence of S by comparing their elements one by one. If the current element of S' matches the current element of S, it moves to the next element in both sequences. If they don't match, it only moves to the next element in S.

If the algorithm reaches the end of S', it means all elements of S' have been found in S in the correct order, and S' is a subsequence of S.

If S' is a subsequence of S, the algorithm will eventually find all elements of S' in S, and it will reach the end of S', confirming that S' is indeed a subsequence of S.

The algorithm is correct because it only declares S' as a subsequence of S if it finds all elements of S' in S in the correct order. And if S' is indeed a subsequence of S, the algorithm will always find all elements of S' in S.


### 4

```python
def solve(values, weights, capacity):
    materials = sorted([(vi/wi, wi, vi) for vi, wi in zip(values, weights)], reverse=True)
    remaining_capacity = capacity
    total_value = 0

    for value_density, weight, value in materials:
        amount = min(weight, remaining_capacity)
        remaining_capacity -= amount
        total_value += amount * value_density

        if remaining_capacity == 0:
            break

    return total_value

```

The idea is the following:

1. Sort the items by their value per unit weight (value/weight).

2. Start filling the backpack with the highest value-density items first.
3. Stop when the backpack is full or you've added all the items.

This algorithm works because it prioritizes items that give you the most bang for your buck (value per weight). By filling the backpack with the most valuable items first, you make sure that you are maximizing the total value within the weight constraint.