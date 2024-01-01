
# 1

$$
\text{initialization:} \\ A[0][s] = 0, A[0][t] = \infty, A[0][x] = \infty, A[0][y] = \infty, A[0][z] = \infty \\ 
$$

$$ \text{first iteration:} \\ A[1][s] = 0, A[1][t] = 6, A[1][x] = \infty, A[1][y] = 7, A[1][z] = \infty \\ $$

$$\text{second iteration:} \\ A[2][s] = 0, A[2][t] = 6, A[2][x] = 4, A[2][y] = 7, A[2][z] = 2 \\ $$

$$\text{third iteration:} \\ A[3][s] = 0, A[3][t] = 2, A[3][x] = 4, A[3][y] = 7, A[3][z] = 2 \\ $$

$$ \text{fourth iteration (final):} \\ A[4][s] = 0, A[4][t] = 2, A[4][x] = 4, A[4][y] = 7, A[4][z] = -2$$


# 2 
```python
def isShortestPathTree(G, T, s):
    # Initialize distances to infinity, except for the start vertex
    dist = array of length |V| filled with infinity
    dist[s] = 0

    # Perform BFS or DFS starting from the source vertex s
    for each (u, v) in BFS or DFS of T starting from s:
        if dist[u] + w(u, v) < dist[v]:
            dist[v] = dist[u] + w(u, v)
        else if dist[v] != dist[u] + w(u, v):
            return false

    # Check if the distances match for all edges in the original graph
    for each (u, v) in E:
        if dist[v] > dist[u] + w(u, v):
            return false

    return true
```


# 3

D_0:
```
0   1   ∞  -4   ∞   ∞
∞   0   2   ∞   ∞   ∞
∞   ∞   0   ∞   ∞  -8
∞   ∞   ∞   0   3   ∞
∞   7  10   ∞   0   ∞
∞   ∞   ∞   ∞   ∞   0
```

D_1:
we consider vertex 1 as intermediate
```
0   1   ∞  -4   ∞   ∞
∞   0   2   ∞   ∞   ∞
∞   ∞   0   ∞   ∞  -8
∞   ∞   ∞   0   3   ∞
∞   7  10   ∞   0   ∞
∞   ∞   ∞   ∞   ∞   0
```

D_2:
we consider vertex 2 as intermediate
```
0   1   3  -4   ∞   ∞
∞   0   2   ∞   ∞   ∞
∞   ∞   0   ∞   ∞  -8
∞   ∞   ∞   0   3   ∞
∞   7   9   ∞   0   ∞
∞   ∞   ∞   ∞   ∞   0
```


D_3:
we consider vertex 3 as intermediate
```
0   1   3  -4   ∞  -5
∞   0   2   ∞   ∞  -6
∞   ∞   0   ∞   ∞  -8
∞   ∞   ∞   0   3   ∞
∞   7   9   ∞   0   1
∞   ∞   ∞   ∞   ∞   0
```

D_4:
we consider vertex 4 as intermediate
```
0   1   3  -4  -1  -5
∞   0   2   ∞   ∞  -6
∞   ∞   0   ∞   ∞  -8
∞   ∞   ∞   0   3   ∞
∞   7   9   ∞   0   1
∞   ∞   ∞   ∞   ∞   0
```

D_5:
we consider vertex 5 as intermediate
```
0   1   3  -4  -1  -5
∞   0   2   ∞   ∞  -6
∞   ∞   0   ∞   ∞  -8
∞  10  12   0   3   4
∞   7   9   ∞   0   1
∞   ∞   ∞   ∞   ∞   0
```

D_6:
we consider vertex 6 as intermediate
```
0   1   3  -4  -1  -5
∞   0   2   ∞   ∞  -6
∞   ∞   0   ∞   ∞  -8
∞  10  12   0   3   4
∞   7   9   ∞   0   1
∞   ∞   ∞   ∞   ∞   0
```


# 4
### a

The exchange rate from a1 to ak in the exchange sequence a1, a2, ..., ak can be computed as the product of each exchange rate along the path. The rate from a1 to ak via a2, ..., ak-1 is c(a1, a2) * c(a2, a3) * ... * c(ak-1, ak).

### b

A person can become infinitely rich by exchanging money if there is a negative cycle in the exchange graph ′G′. A negative cycle means that the product of the exchange rates along the cycle is less than 1, which implies that one can get more money back after completing the cycle than one started with. In the context of currency exchange, this would mean that after a series of trades, you end up with more money than you started with, essentially 'creating' money through arbitrage opportunities.

### c
The Bellman-Ford algorithm, or a modified version of it, can be used to compute the best exchange rates from currency A to all others by initializing the distances from A to every other vertex as ∞ (or some representation of a very large number), and the distance to A itself as 0. The algorithm can also detect negative cycles, which, as mentioned before, can indicate an opportunity for arbitrage. To adjust the Bellman-Ford algorithm for this scenario, you would take the negative logarithm of each edge weight (exchange rate), turning the problem into finding the shortest path, where the shortest path indicates the maximum profit

### d
Dijkstra’s algorithm cannot be used in this case because it assumes that all edge weights (costs) are non-negative. Since currency exchange can involve rates that imply a 'negative cost' (due to arbitrage opportunities), this can lead to negative edge weights. Dijkstra’s algorithm does not work with graphs that have negative edge weights because once a vertex is visited and its minimum distance is set, it is never revisited and its distance is never updated again, even if a shorter path is later found. Negative edge weights could potentially shorten the path to a vertex that has already been visited, which Dijkstra's algorithm would not account for.