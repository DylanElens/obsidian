## 1
a. Yes. We can find a constant $C$ such that we can lower bound the function for example $4$ and we can also find a constant that underbounds it for example $\frac{1}{2}$ .
b. No, $O(n^2)$ does not lowerbound the function $2n$ as we can find a constant for example $1000$ intercept it.
c. Yes. this holds.
d. No, as $n \ log \ n$ will grow much slower than $n \sqrt{n}$ 
e. This holds because google told me it holds. I might be wrong but I from what I found $n! = 2^n$ 


## 2. 
a. The constant $37$ will do this:

(a) To prove that $(n + 37 \in \mathcal{O}(n))$, we need to find a (c > 0) and (n_0) such that (n + 37 $\leq$ c $\cdot$ n) for all (n $\geq$ $n_0$).

Let's choose (c = 2) and ($n_0$ = 37). Then, for all (n $\geq$ $n_0$), we have:

$$
\begin{align*}
n + 37 &\leq 2n \quad \text{(since } n \geq 37\text{)} \\
&\leq 2n.
\end{align*}
$$

So, (n + 37 $\leq$ 2n) for all (n $\geq$ 37), which means (n + 37 $\in$ $\mathcal{O}(n)$).

(b) To prove that $(\frac{1}{2}n(n - 1) \in \mathcal{O}(n^2))$, we need to find a (c > 0) and ($n_0$) such that $(\frac{1}{2}n(n - 1) \leq c \cdot n^2)$ for all $(n \geq n_0)$.

Let's choose $(c = \frac{1}{2}) \land (n_0 = 1)$. Then, for all $(n \geq n_0)$, we have:

$$
\begin{align*}
\frac{1}{2}n(n - 1) &\leq \frac{1}{2}n \cdot n \quad \text{(since } n \geq 1\text{ and } n - 1 \leq n\text{)} \\
&\leq \frac{1}{2}n^2.
\end{align*}

$$

This proves that it holds for c = $\frac{1}{2}$

(c) I got lost here


## 3.
a. In the worst case this would take $n$ operations giving this a complexity of $\mathcal{O}(n)$. This is the case where there is no number found which is greate than 42.

b. In the best case scenerio this would have a complexity of $\mathcal{O}(1)$. this is the case that the firest number in the list is greater than 42.

## 4.
a. line 4 is always executed if $i < j$. So this could be seen as one operation






