# 1
### a.

(a) The time complexity of (TA) is given by
$TA(n) = \begin{cases} 2TA(n-1) + 37 & \text{if } n > 0 \\ 1 & \text{if } n = 0 \end{cases}$

and for \(TB\), it's

$[ TB(n) = \begin{cases} 3TB(n-1) + 42 & \text{if } n > 0 \\ 1 & \text{if } n = 0 \end{cases} ]$

Both Alice and Bob are correct in saying that, asymptotically (as (n) becomes large), their algorithms have the same efficiency. This is because the only difference is a constant factor in front of the recursive term. In Big-O notation, this constant factor doesn't matter, so (TA) and (TB) are in the same $(\Theta)$-class. Both are in the $(\Theta(2^n))$ class.


### b.

(b) the new algorithm:

$TC(n) = \begin{cases} 2TC\left(\frac{n}{2}\right) + 42n & \text{if } n = 2^k, \, k > 0 \\ 37 & \text{if } n = 1 \end{cases}$

The time complexity of the new algorithm can be analyzed using the master theorem for divide-and-conquer algorithms. The recurrence for the time complexity is given by:

```
TC(n) = 2TC(n/2) + 42n
```

The master theorem states that if the recurrence for the time complexity satisfies the following conditions:

- T(n) ≤ aT(n/b) + cn^d for some positive constants a, b, c, and d
- d > log_b

Then the time complexity of the algorithm is O(n^d). In this case, a = 2, b = 2, c = 42, and d = 1. thus, log_b a = 1, and d > log_b a. Thus, the time complexity of the new algorithm is O(n).

This means that the time it takes for the algorithm to run grows linearly with the size of the input. They have the same runtime complexity 
# 2

```python
def balanced_index(A):
	low = 0 
	high = len(A) - 1
	while low <= high: 
		mid = (low + high) // 2 
		if A[mid] == mid:
			return mid 
		elif A[mid] < mid:
			low = mid + 1
		else:
			high = mid - 1
	return -1
```

The algorithm works by repeatedly dividing the search space in half until the desired index is found or it is determined that no such index exists. It is very similar to binary search.

As n increases, the number of recursive calls grows logarithmically. Therefore, the algorithm has a time complexity of O(log n). Alongside that, since this is so similary to binary search it also makes sense that the complexity is 0(log n).

# 3.

```python
def smallest_in_union(array_a, array_b, kth_smallest):
    low = max(0, kth_smallest - m)
    high = min(kth_smallest, n)
    while low <= high:
        mid = (low + high) // 2
        j = kth_smallest - mid
        if array_a[mid - 1] <= array_b[j] and (mid == m or array_a[mid] > array_b[j + 1]):
            return array_a[mid]
        elif array_a[mid - 1] > array_b[j]:
            high = mid - 1
        else:
            low = mid + 1
    return -1

```

The algorithm works by repeatedly dividing the range of possible values for the kth smallest element. The initial range is [0, kth_smallest], and the algorithm repeatedly halves this range until the kth smallest element is found.

The complexity of the algorithm is O(log m + log n) because the range of possible values is halved with each recursive call.

# 4
### a.
```python
def max_install_subset(P, d):
    left = 0
    right = len(P) - 1
    maximal_installable_subset = []

    while left <= right:
        mid = (left + right) // 2
        current_subset = P[left:mid + 1]

        if install(current_subset):
            maximal_installable_subset = current_subset
            left = mid + 1
        else:
            right = mid - 1

    return maximal_installable_subset

```

The algorithm works by repeatedly dividing the search space in half until the desired subset is found or it is determined that no such subset exists. This means that the number of recursive calls made by the algorithm is proportional to the logarithm of the number of packages.

The overall time complexity of the algorithm is caused by the time it takes to make calls to the install procedure. Since the install procedure can take at most O(d) time, the total time complexity of the algorithm is also O(d). However, the algorithm is able to make calls to the install procedure in a logarithmic number of steps, so the overall time complexity is O(d log n).

### b.

```python
def find_maximal_installable_subset(P, K, d):
    current_subset = []
    maximal_installable_subset = []
    current_subset = []

    while True:
        current_subset.append(P.pop())
        if install(current_subset):
            maximal_installable_subset = current_subset
        else:
            del current_subset[-1]
        if not P:
            break

    return maximal_installable_subset
```

This code works by iterating over the list of packages and adding them to the current subset one at a time. After each package is added, the install procedure is called to check if the current subset is installable. If the current subset is installable, it is updated to be the maximal installable subset. If the current subset is not installable, the last package that was added is removed from the subset, and the process is repeated.