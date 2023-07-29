I will use the following rules

A statement $S$ can be replaced by the following

$S := S_1S_2 |\  > \ | \ < \ | \ + \ | \ - \ | \ , \ | \ . \ | \ \ [ \ S \ ]$

I will try to use the natural semantics to formalize this


$\hspace{3cm}<S_1, s> \ \rightarrow (s', \bigcirc)$$\hspace{2cm}<S_2, s'> \ \rightarrow (s'', \bigcirc)$
$[comp_{ns}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}<S_1;S_2, s> \ \rightarrow \ (s'', \bigcirc)$


$[>_{ns}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}< \ > \ , s> \ \rightarrow \ (s', \bigcirc)$

where $s := \{\{\bot\}, \phi\}$ and $s' := \{\{ \bot, \bot\},\phi+1\}$

you cannot decrement out of the set **i think**

$[<_{ns}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}<\ < \ , s> \ \rightarrow \ (s', \bigcirc)$

where $s := \{\{\ 0, \bot\}, \phi\}$ and $s' := \{\{ \bot, \bot\},\phi -1\}$


$[+_{ns}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}< \ + \ , s> \ \rightarrow \ (s', \bigcirc)$

where $s := \{\{ 0, 0\}, 0\}$ and $s' := \{\{ 1, 0\}, 0\}$

$[-_{ns}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}< \ - \ , s> \ \rightarrow \ (s', \bigcirc)$

where $s := \{\{ 0, \bot\}, 0\}$ and $s' := \{\{ -1 , \bot\}, 0\}$



$\hspace{3cm}<S, s> \ \rightarrow (s', \bigcirc)$$\hspace{2cm}<[S], s'> \ \rightarrow (s'', \bigcirc)$
$[ \ [ \ ]_{ns}^{tt}]:$ $\color{white}\hspace{1cm}\rule{10cm}{0.4pt}$
$\hspace{4cm}< \ [S] \ , s> \ \rightarrow \ (s', \bigcirc)$

where $s := \{\{ \bot, \bot\}, \phi\}$ and $s' := \{\{ \bot, \bot\}, 0\}$



















