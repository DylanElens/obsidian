Terminating(= strongly normalizing):
No infinite sequence of terms $t_1,...t_n$ exist such that $T_i \rightarrow_R \ t_{i+1}$ for all $i$

R is weakly normalizing if every term has at least one normal form


We write $\rightarrow^*_R$ as the reflective transitive closure of $\rightarrow_R$. This means that $t \ \rightarrow^*_R \ v$  if and only if  $t$ can be rewritten to $u$ in zero or more steps.


$R$ is confluent if $t \ \rightarrow^*_R \ u$ and $t \ \rightarrow^*_R \ v$ if a term $w$ exists satisfying $u \ \rightarrow^*_R \ w$ and $v \ \rightarrow^*_R \ w$

R is locally confluent if $t \ \rightarrow_R \ u$ and $t \ \rightarrow_R \ v$ if a term $w$ exists satisfying $u \ \rightarrow^*_R \ w$ and $v \ \rightarrow^*_R \ w$



General technique using weight functions:
Find a weight function $W$ from terms to natural numbers in such a way that $W(u) > W(v)$ for all terms $u$ and $v$ satisfying $u \ \rightarrow_R \ v$.
If such a function $W$ exists then $R$ is terminating since an infinite rewriting sequence would give rise to an infinite decreasing sequence of natural numbers which does not exist


Example from last time:

   R1: +(0, x)    ->   x,  
   R2: +(s(x), y) ->   s(+(x, y)),  

We find such a weight function by inductively defining: 

   W(0) = 1
   W(s(t)) = W(t) + 1
   W(+(t,u)) = 2W(t) + W(u)



Unfortunately, this general idea of weight functions is too general! It allows arbitraty defintions of wiehgt functions and we have to prove that $W(t) > W(u)$ for all rewrite steps $t \rightarrow_R \ u$, while typically there are infinitely many of them



Now we work out a speical case of this idea of weight functions in such a way that for finding a termination proof we only have to
- choose interpretations for the (finitely many) functions symbols rather than for all terms and
- check $W(t) > W(u)$ for teh rules $l \rightarrow \ r$ rather than for all rewrite steps

For every function symbol $f$ of arity $n$ choose a monotonic function $[f]: \mathbb{N}^n \rightarrow \mathbb{N}$.

Here monotonic means:
- if for all $a_i, b_i \in \mathbb{N}$ for $i = 1....n$ with $a_i > b_i$ for some $i$ and $a_j = b_j$ for all $j \neq i$ then
$\begin{equation}[f](a_1,...a_n) > [f](b1,...,b_n)\end{equation}$

in simpler terms a monotonic function is either always increasing or always decreasing.



Theorem:

Let $R$ be a TRS and let $[f]$ be chose such that:
- $[f]$ is a monotonic for every function symbol $f$, and
- $[l, a] > [r, a]$ for every $a: X \rightarrow \mathbb{N}$ and every rule $l \rightarrow r$ in $R$.
then $R$ is terminating


Example

for our TRS $R$ consisting of the rules:

   R1: +(0, x)    ->   x,  
   R2: +(s(x), y) ->   s(+(x, y)),  

we choose monotonic functions:
- $[0] = 1$, 
- $[s](x) = x+1,$
- $[+](x,y) = 2x + y$

Now indeed for every $a: X \rightarrow \mathbb{N}$
We have for the first rule

$[+(0,x),a] = [+]([0])



### important combinators

$\textbf{I} = \lambda x.x$
$\textbf{k} = \lambda xy.x$
$\textbf{K}_* = \lambda xy.y$
$\textbf{S} = \lambda xyz.xy(yz)$

$\textbf{I}M \ \rightarrow_\beta \ M$
$\textbf{k}MN \ \rightarrow_\beta \ M$
$\textbf{K}_*MN \ \rightarrow_\beta \ N$
$\textbf{S}MNL \ \rightarrow_\beta \ ML(NL)$


$(\lambda xy.z)(\lambda z.z)w$
$(\rightarrow_\beta \lambda y.\lambda z.z)w$
$\rightarrow_\beta (\lambda z.z)$

$(\lambda xyz.xyz)(\lambda w.w)(\lambda w.w)w$
$\rightarrow_\beta(\lambda yz.(\lambda w.w)yz)(\lambda w.w)w$
$\rightarrow_\beta(\lambda yz.\lambda yz)(\lambda w.w)w$
$\rightarrow_\beta(\lambda z.\lambda (\lambda w.w)z)w$
$\rightarrow_\beta(\lambda z.z)w$
$\rightarrow_\beta w$

$(\lambda xy.xy)\textbf{I}w$
$(\lambda xy.xy)\textbf{I}w$
$(\lambda y.(\lambda x.x)y)w$
$(\lambda y.y)w$
$w$

$(\textbf{K}_*x(KIy))z$
$(\textbf{K}_*xI)z$
$(I)z$
$z$

$\lambda x.\textbf{SII}x$
$\lambda x.\textbf{I}x(\textbf{I}x)$
$\lambda x.\textbf{I}xx$
$\lambda x.xx$

$\textbf{SIK}$
$(\lambda xyz.xz(yz))(\lambda x.x)(\lambda xy.x)$
$(\lambda yz.\lambda(x.x)z(yz))(\lambda xy.x)$
$(\lambda yz.z(yz))(\lambda xy.x)$
$(\lambda z.z(\lambda(xy.x)z))$
$(\lambda z.z(\lambda y.z))$

















