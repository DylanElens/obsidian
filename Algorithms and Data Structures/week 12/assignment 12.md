
# 1
### A.
You can build 14 BST trees: 
\[12, 3, 5, 8\],
\[12, 3, 8, 5\],
\[12, 5, 3, 8\],
\[12, 8, 3, 5\],
\[12, 8, 5, 3\]
\[3, 12, 5, 8\],
\[3, 12, 8, 5\],
\[3, 5, 12, 8\],
\[3, 5, 8, 12\],
\[3, 8, 5, 12\],
\[5, 3, 12, 8],
\[5, 3, 8, 12\],
\[8, 3, 5, 12\],
\[8, 5, 3, 12\],
### b.
The following AVL trees can be built.
![[Pasted image 20231211203819.png]]


# 2.
![[Pasted image 20231211204604.png]]
![[Pasted image 20231211204710.png]]
![[Pasted image 20231211204807.png]]

# 3
I did not find it


# 4
```
Algorithm CombineBSTs(T1, T2):
    A1 ← InOrderTraversal(T1) // Convert T1 to sorted array
    A2 ← InOrderTraversal(T2) // Convert T2 to sorted array
    A ← MergeSortedArrays(A1, A2) // Merge both sorted arrays into a new sorted array
    T ← SortedArrayToBST(A, 0, A.length - 1) // Build a balanced BST from the sorted array
    return T

Function InOrderTraversal(node):
    if node is null:
        return empty array
    else:
        return InOrderTraversal(node.left) + [node.key] + InOrderTraversal(node.right)

Function MergeSortedArrays(A1, A2):
    i ← 0, j ← 0
    A ← empty array
    
    while i < A1.length and j < A2.length:
        if A1[i] < A2[j]:
            A.append(A1[i])
            i ← i + 1
        else:
            A.append(A2[j])
            j ← j + 1

    // Append remaining elements of A1
    while i < A1.length:
        A.append(A1[i])
        i ← i + 1

    // Append remaining elements of A2
    while j < A2.length:
        A.append(A2[j])
        j ← j + 1

    return A

Function SortedArrayToBST(A, start, end):
    if start > end:
        return null
    mid ← (start + end) / 2
    node ← new Node(A[mid])
    node.left ← SortedArrayToBST(A, start, mid - 1)
    node.right ← SortedArrayToBST(A, mid + 1, end)
    return node

```

- **Step 1**: O(n+m) for traversing both BSTs.
- **Step 2**: O(n+m) for merging the arrays.
- **Step 3**: O(n+m) for building the balanced BST from the sorted array.

**correctness**
The in-order traversal of a BST gives a sorted array. Thus, converting T1​ and T2​ to sorted arrays preserves the BST property. Merging two sorted arrays results in a new sorted array. By not merging nodes with the same key, we ensure that A has n+m elements. Building a BST from a sorted array by repeatedly choosing the middle element as the root ensures that the resulting BST is balanced.
# 5
```
Function RANK(x, k):
    if x is NIL:
        return 0
    if k < x.key:
        // If k is less than the key of x, go to the left subtree
        return RANK(x.left, k)
    else if k > x.key:
        // If k is greater than the key of x, add the size of the left subtree plus one for the current node
        // and proceed to search in the right subtree
        return 1 + SIZE(x.left) + RANK(x.right, k)
    else:
        // If k is equal to the key of x, return the size of the left subtree plus one for the current node
        return SIZE(x.left) + 1

Function SIZE(x):
    // This function returns the size of the subtree rooted at node x
    if x is NIL:
        return 0
    else:
        return x.size
```

The `RANK` function runs in O(height) time because it traverses the path from the root to a leaf or to the node with key k, without visiting any node more than once. The height of the BST is the maximum number of nodes from the root to the furthest leaf. If the tree is balanced, the height is O(log n) where n is the number of nodes in the tree. If the tree is not balanced, the height can be as bad as O(n). The `SIZE` function runs in O(1) time because it simply returns the size attribute of the node x, which is assumed to be maintained and updated during any insertions or deletions in the BST.