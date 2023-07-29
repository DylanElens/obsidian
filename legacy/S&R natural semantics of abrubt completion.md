So as I understand it we have a new rule called `break` . this rule makes it such that we can terminate the program or terminate out of a while loop

The rule is as follows.


`todo`

here is an example

$x := 5; y := 3; while \ x \leq \ 7 \ do \ x := x+2; \ if \ x > 8 \ then \ break \ else \ skip; \ y := y * 3$

$W = y := 3; while \ x \leq \ 7 \ do \ x := x+2; \ if \ x > 8 \ then \ break \ else \ skip; \ y := y * 3, \ s> \ \rightarrow \ s_{9,9}$
$X = while \ x \leq \ 7 \ do \ x := x+2; \ if \ x > 8 \ then \ break \ else \ skip; \ y := y * 3, \ s> \ \rightarrow \ s_{9,9}$



$\hspace{19cm}T1$
$\hspace{16cm}\color{white}\rule{4cm}{0.4pt}[while_{ns}^\circ]$
$\hspace{8cm} <y := 3, \ s_{5,\bot}> \rightarrow s_{5,3}$ $\hspace{3cm}<X,s_{5,3}> \rightarrow s_{9,9}$
$\hspace{4cm}[ass_{ns}]$ $\hspace{3cm}\color{white}\rule{10cm}{0.4pt}[comp_{ns}^\circ]$
$<x := 5, \ s> \rightarrow s_{5,\bot}$                     $\hspace{5cm}<W,  s_{5,\bot}> \rightarrow s_{5,\bot}$
$\color{white}\rule{18cm}{0.4pt}[comp_{ns}^\circ]$
$<x := 5; y := 3; while \ x \leq \ 7 \ do \ x := x+2; \ if \ x > 8 \ then \ break \ else \ skip; \ y := y * 3, \ s> \ \rightarrow \ s_{9,9}$ 


$T1:$
