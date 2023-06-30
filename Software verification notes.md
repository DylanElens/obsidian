G!(As1 $\land$ As0 )
G(As1 $\land$ As0)
GF(As1 /\/\\\ As0)
G((As1 /\\ As0) -> F(Bs1 /\\ Bs0))
G((As1 /\\ As0) -> F(Bs1 /\\ Bs0))
(Br0 -> G(Bs0)) /\\ Br0)) U (BS1)
(Ar0 -> (!AS1 U Br0))
GF(As1) -> F(Br1)

<h2>Live variable analysis</h2>
Lv$_{entry}(1)$  = (Lv$_{exit}(1) \ \textbackslash \ a)$
Lv$_{entry}(2)$  =  (Lv$_{exit}(2) \ \textbackslash  \ b) \cup \{a\}$
Lv$_{entry}(3)$  = (Lv$_{exit}(3) \ \textbackslash \ c)$
Lv$_{entry}(4)$  = (Lv$_{exit}(4)) \cup \{b\}$
Lv$_{entry}(5)$  = (Lv$_{exit}(5) \ \textbackslash  \ b) \cup \{a\}$
Lv$_{entry}(6)$  = (Lv$_{exit}(6) \ \textbackslash  \ c) \cup \{c\}$
Lv$_{entry}(7)$  = (Lv$_{exit}(7) \ \textbackslash  \ b) \cup \{a,b\}$
Lv$_{entry}(8)$  = (Lv$_{exit}(8)) \cup \{a,b\}$

lv$_{exit}(1)$  = lv$_{entry}(2)$
lv$_{exit}(2)$  = lv$_{entry}(3)$
lv$_{exit}(3)$  = lv$_{entry}(4)$
lv$_{exit}(4)$  = lv$_{entry}(6)$ $\cup$ lv$_{entry}(5)$
lv$_{exit}(5)$  = lv$_{entry}(7)$
lv$_{exit}(6)$  =  lv$_{entry}(7)$
lv$_{exit}(7)$  = lv$_{entry}(8)$
lv$_{exit}(8)$  = $\emptyset$


Lv$_{entry}(1)$  =  (Lv$_{exit}(1) \ \textbackslash  \ x) \cup \{y\}$
Lv$_{entry}(2)$  =  (Lv$_{exit}(2) \ \textbackslash  \ x) \cup \{x\}$
Lv$_{entry}(3)$  = (Lv$_{exit}(3) \ \textbackslash \ x)$
Lv$_{entry}(4)$  = (Lv$_{exit}(4)) \cup \{y,x\}$
Lv$_{entry}(5)$  = (Lv$_{exit}(5) \ \textbackslash  \ \{y\}) \cup \{y, x\}$
Lv$_{entry}(6)$  = (Lv$_{exit}(6) \ \textbackslash \ \{y\})$

lv$_{exit}(1)$  = lv$_{entry}(2)$
lv$_{exit}(2)$  = lv$_{entry}(3)$
lv$_{exit}(3)$  = lv$_{entry}(4)$
lv$_{exit}(4)$  = lv$_{entry}(6)$ $\cup$ lv$_{entry}(5)$
lv$_{exit}(5)$  = lv$_{entry}(4)$
lv$_{exit}(6)$  = $\emptyset$

Lv$_{entry}(1)$  = $\emptyset$ , $\{y\}^1$
Lv$_{entry}(2)$  = $\emptyset$  ,$\{x\}^6$
Lv$_{entry}(3)$  = $\emptyset$, $\{y\}^4$
Lv$_{entry}(4)$  =$\emptyset$ , $\{x,y\}^2$
Lv$_{entry}(5)$  = $\emptyset$, $\{x,y\}^9$
Lv$_{entry}(6)$  = $\emptyset$

lv$_{exit}(1)$  = $\emptyset$,$\{x\}^7$
lv$_{exit}(2)$  = $\emptyset$,  $\{y\}^5$
lv$_{exit}(3)$  = $\emptyset$, $\{x,y\}^3$
lv$_{exit}(4)$  = $\emptyset$, 
lv$_{exit}(5)$  = $\emptyset$, $\{x,y\}^8$
lv$_{exit}(6)$  = $\emptyset$




<h1> Reaching definitions analysis</h1>

RD$_{entry}(1)$  = $((x, ?), (y,?)))$
RD$_{entry}(2)$  = RD$_{exit}(1) \cup RD_{exit}(8)$
RD$_{entry}(3)$  = RD$_{exit}(2)$
RD$_{entry}(4)$  = RD$_{exit}(3)$
RD$_{entry}(5)$  = RD$_{exit}(4)$
RD$_{entry}(6)$  = RD$_{exit}(4)$
RD$_{entry}(7)$  = RD$_{exit}(5) \cup RD_{exit}(6)$
RD$_{entry}(8)$  = RD$_{exit}(2)$

RD$_{exit}(1)$  = (RD$_{entry}(1) \ \textbackslash \ (x,-)) \cup \{(x, 1)\}$
RD$_{exit}(2)$  =  RD$_{entry}(2)$
RD$_{exit}(3)$  = (RD$_{entry}(1) \ \textbackslash \ (y,-)) \cup \{(y, 3)\}$
RD$_{exit}(4)$  = RD$_{entry}(4)$
RD$_{exit}(5)$  = (RD$_{entry}(5) \ \textbackslash \ (x,-)) \cup \{(x, 5)\}$
RD$_{exit}(6)$  = (RD$_{entry}(6) \ \textbackslash \ (y,-)) \cup \{(y, 6)\}$
RD$_{exit}(7)$  = (RD$_{entry}(7) \ \textbackslash \ (y,-)) \cup \{(x, 7)\}$
RD$_{exit}(8)$  = (RD$_{entry}(8) \ \textbackslash \ (x,-)) \cup \{(x, 8)\}$

<h3> Use definitions </h3>

$UD(x,2) = \{1, 7\}$
$UD(x,5) = \{1, 7\}$
$UD(x,6) = \{1, 7\}$
$UD(x,5) = \{1, 7\}$
$UD(x,8) = \{1,7\}$
$UD(y,3) = \{3,6, ?\}$
$UD(y,4) = \{3\}$








entry(1) = exit(1) / {x}
entry(2) = exit(2) / {x}
entry(3) = exit(3) / {x}
entry(4) = exit(4) $\cup$ {x,y}
entry(5) = (exit(5) / {y) $\cup$ {y}
entry(6) = exit(6) 


exit(1) = entry(2)
exit(2) = entry(3)
exit(3) = entry(4)
exit(4) = entry(5) $\cup$ entry(6)
exit(5) = entry(4)
exit(6) = {}


entry(1) = {y}
entry(2) = {x,y}
entry(3) = {y}
entry(4) = null, {x,y}
entry(5) = null, {x,y}
entry(6) = null, {} 

exit(1) = null, {x,y}
exit(2) = null, {y}
exit(3) = {x,y}
exit(4) = null ,{x,y}
exit(5) = null, x,y}
exit(6) = {} 



























