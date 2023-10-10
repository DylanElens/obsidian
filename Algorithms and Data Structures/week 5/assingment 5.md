## 1

**Initial Flow:**

- Start with an initial flow of 0 for all edges.

| Edge   | Capacity | Flow |
| ------ | -------- | ---- |
| s -> u | 15       | 0    |
| s -> x | 12       | 0    |
| s -> v | 5        | 0    |
| u -> v | 8        | 0    |
| u -> x | 10       | 0    |
| v -> z | 8        | 0    |
| z -> t | 10       | 0    |
| x -> t | 5        | 0    |
| x -> y | 15       |      | 


**Iteration 1:**

- Shorterst path s -> u -> v -> z -> t.
- Bottleneck cap is 5.
- Augment the flow along the path by 5 units, increasing the flow value to 5.

**Residual Network after Iteration 1:**

| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> u |   15   |  5   |
| s -> x |   12   |  0   |
| s -> v |   5    |  0   |
| u -> v |   8    |  5   |
| u -> x |   10   |  5   |
| v -> z |   8    |  0   |
| z -> t |   10   |  0   |
| x -> t |   5    |  0   |
| x -> y |   15   |  0   |



**Iteration 2:**

- Find the shortest augmenting path from s to t: s -> u -> x -> t.
- Bottleneck 5
- Augment the flow along the path by 5 units, increasing the flow value to 10.

**Residual Network after Iteration 2:**

| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> u |   15   |  5   |
| s -> x |   12   |  5   |
| s -> v |   5    |  0   |
| u -> v |   8    |  8   |
| u -> x |   10   |  5   |
| v -> z |   8    |  0   |
| z -> t |   10   |  0   |
| x -> t |   5    |  5   |
| x -> y |   15   |  0   |


**Iteration 3:**

- Shortest path : s -> v -> z -> t.
- Bottleneck: 8.
- Augment the flow along the path by 8 units, increasing the flow value to 18.

**Residual Network after Iteration 3:**

| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> u |   15   |  5   |
| s -> x |   12   |  5   |
| s -> v |   5    |  0   |
| u -> v |   8    |  8   |
| u -> x |   10   |  5   |
| v -> z |   8    |  0   |
| z -> t |   10   |  0   |
| x -> t |   5    |  5   |
| x -> y |   15   |  0   |


**Iteration 4:**

- Shortest path: s -> u -> v -> z -> t.
- bottleneck: 2.
- Augment the flow along the path by 2 units, increasing the flow value to 20.

**Residual Network after Iteration 4:**

| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> u |   15   |  5   |
| s -> x |   12   |  7   |
| s -> v |   5    |  0   |
| u -> v |   8    |  8   |
| u -> x |   10   |  0   |
| v -> z |   8    |  0   |
| z -> t |   10   |  0   |
| x -> t |   5    |  0   |
| x -> y |   15   |  15  |


**Iteration 5:**

- No more augmenting paths from s to t exists

**Maximum Flow:**

The maximum flow in the network is 20 units.

**Minimum Cut (S, T):**

The minimum cut is of the set of nodes that can be reached from the source s in the residual network after all iterations. here S includes s, u, v, and x, while T includes z, t, and y.

So, the minimum cut is (S, T) = ({s, u, v, x}, {z, t, y}), and the capacity of this cut is 20, which matches the maximum flow.
## 2

**False**
Consider the following flow network:
$$
\begin{align*}
\text{Source } s \quad & \quad \text{Sink } t \\
& \\
\text{Node } A \quad & \quad \text{Node } B \\
\end{align*}
$$
With the following capacities on the edges:
$$
\begin{align*}
1. \quad &(s \rightarrow A) \text{ with capacity } c(sA) = 3 \\
2. \quad &(s \rightarrow B) \text{ with capacity } c(sB) = 4 \\
3. \quad &(A \rightarrow B) \text{ with capacity } c(AB) = 2 \\
4. \quad &(A \rightarrow t) \text{ with capacity } c(At) = 2 \\
5. \quad &(B \rightarrow t) \text{ with capacity } c(Bt) = 4 \\
\end{align*}
$$

Now, we will find the max flow $s-t$ flow in this network. 
$$
\begin{align*}
1. \quad &\text{Flow along } (s \rightarrow A) \text{ with } f(sA) = 3 \\
2. \quad &\text{Flow along } (s \rightarrow B) \text{ with } f(sB) = 4 \\
3. \quad &\text{Flow along } (A \rightarrow B) \text{ with } f(AB) = 2 \\
4. \quad &\text{Flow along } (A \rightarrow t) \text{ with } f(At) = 2 \\
5. \quad &\text{Flow along } (B \rightarrow t) \text{ with } f(Bt) = 4 \\
\end{align*}
$$
The total flow from the source $s$ to the sink $t$ is $2 + 2 = 4$, which is the maximum possible flow in this network. However, the edge $(s \rightarrow B)$ is saturated with a flow of $4$, but the edge $(s \rightarrow A)$ is also saturated with a flow of $3$, which is not equal to its capacity ($c(sA) = 3$). This shows us that that in a maximum flow, not every edge out of the source $s$ needs to be saturated.

## 3
### a
The maximum flow (f) is 10 units. The minimum cut is ({S, A, B, C}, {T}).

### b
| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> A |   3    |  3   |
| s -> B |   0    |  0   |
| A -> C |   0    |  0   |
| A -> D |   2    |  2   |
| B -> C |   0    |  0   |
| C -> T |   0    |  0   |
| D -> T |   5    |  5   |

### c

| Edge  | Capacity | Flow |
|-------|----------|------|
| s -> B |   6    |  6   |
| A -> C |   4    |  4   |
| A -> D |   2    |  2   |
| B -> C |   2    |  2   |
| C -> T |   9    |  9   |
| D -> T |   5    |  5   |

### d
| Edge  | Capacity | Flow |
|-------|----------|------|
| S -> A |   2    |  1   |
| S -> B |   3    |  2   |
| A -> T |   2    |  1   |
| B -> T |   3    |  2   |

### e

```python
maximum_flow = ford_fulkerson_algorithm(graph)
residual_graph = construct_residual_graph(graph, maximum_flow)
bottleneck_edges = []
for edge in graph.edges:
    capacity = edge.capacity
    flow = residual_graph.get_flow(edge)
    
    if capacity == flow:
        bottleneck_edges.append(edge)
```


the time complexity of the algorithm can be expressed as:

O(EF) + O(E) = O(EF)
## 4

```python
def find_max_job_assignments(applicants, jobs, preferences):
    assigned_jobs = {}
    
    while applicants:
        for applicant in applicants:
            preferred_jobs = preferences[applicant]
            
            for job in preferred_jobs:
                if job not in assigned_jobs.values():
                    assigned_jobs[applicant] = job
                    applicants.remove(applicant)
                    break

    return len(assigned_jobs)
```


the time complexity of the algorithm can be represented as: $$ \begin{aligned} T(n, m, k) &= O(1) + O(n) + O(n \cdot m) + O(1) + O(n) \\ &= O(n \cdot m) \end{aligned}$$ 
Therefore, the algorithm has a time complexity of $(O(n \cdot m))$, where $(n)$ is the number of applicants, and \(m\) is the number of jobs.

## 5
Yes, the maximum flow value remains unchanged in the modified network.
Maximum flow is determined by the bottleneck capacity along the paths from the source to the sink.
This means that the maximum flow value can't exceed the capacity of the smallest edge on the path.

Now, when we modify the network as described, any flow from $(u)$ to $(v)$ can be seen as a flow from $(u)$ to $(x)$ and then from $(x)$ to $(v)$.
Importantly, the capacity of both $((u, x))$ and $((x, v))$ is the same as the capacity of the original edge $((u, v))$. 






