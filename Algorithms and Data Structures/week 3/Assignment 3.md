## 1

step 1
call stack = {A}
Topological ordering = {}

step 2
call stack = {A, C}
Topological ordering = {}


step 4
call stack = {A, C ,D}
Topological ordering = {}

step 5
call stack = {A, C ,D, F}
Topological ordering = {}

step 6
call stack = {A, C ,D, F, G}
Topological ordering = {}

step 7
call stack = {A, C ,D, F}
Topological ordering = {G}

step 8
call stack = {A, C , D, F, G}
Topological ordering = {H}

step 9
call stack = {A, C ,D, F}
Topological ordering = {H, G}

step 10
call stack = {A, C ,D}
Topological ordering = {F, H, G}

step 11
call stack = {A, C}
Topological ordering = {D, F, H, G}

step 12
call stack = {A, C, E}
Topological ordering = {D, F, H, G}

step 13
call stack = {A, C}
Topological ordering = {E, D, F, H, G}

step 14
call stack = {A}
Topological ordering = {C, E, D, F, H, G}

step 15
call stack = {}
Topological ordering = {A, C, E, D, F, H, G}

step 16
call stack = {B}
Topological ordering = {A, C, E, D, F, H, G}

step 17
call stack = {}
Topological ordering = {B, A, C, E, D, F, H, G}


There are 6 topological orderings in this graph


## 2

```
procedure DFS(G, v) is
    label v as discovered
    for all directed edges from v to w that are in G.adjacentEdges(v) do
        if vertex w is not labeled as discovered then
            recursively call DFS(G, w)
        else if vertex w is labeled as processed then
            print edge (v, w) is a back edge
        else if vertex w is labeled as discovered then
            print edge (v, w) is a cross edge
    label v as processed
```

## 3

```
procedure hasCompletePath(G) is
    for all vertices v in graph G do
        DFS(G,v)
        if all vertices are labeled as visited
            return true
        else
            label all vertices v as unvisited
    return false
```

The time complexity of this algorithm is:

$$\mathcal{O}(|E|* (|V| + |E|))$$

## 4

```
function minSemesters(n, prerequisites, maxCoursesPerSemester):
    G = createGraph(n)
    inDegree = array of size n, initialized to 0
    semesters = empty list
    queue = empty queue

    for each (course, prereq) in prerequisites:
        add edge from prereq to course in G
        increment inDegree[course] by 1

    for i from 0 to n-1:
        if inDegree[i] == 0:
            enqueue i onto queue

    while queue is not empty:
        semester = empty list
        for i from 1 to min(queue.size(), maxCoursesPerSemester):
            course = dequeue from queue
            add course to semester

            for each neighbor in G[course]:
                decrement inDegree[neighbor] by 1
                if inDegree[neighbor] == 0:
                    enqueue neighbor onto queue

        add semester to semesters

    return size of semesters
```
 

## 5

We can see that the base case is missing in the CC. function.
also we should also use the early return pattern when finding a cycle
otherwise could possibly iterate for longer than needed

```
procedure cc(G, x)
    if mark[x] then  // If x is already marked, a cycle is found
        return True
    end if
    mark[x] = true
    for all y in neighborhood(x, G) do
        parent[y] = x
        if cc(G, y) then
            WriteLn("Cycle detected:")
            display(y)
            z = x
            while z != y do
                display(z)
                z = parent[z]
            end while
            return True
        end if
    end for
    mark[x] = false  // Reset the mark when backtracking
    return False
```
