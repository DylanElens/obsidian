When proving semantics equivalence in natural semantics we need to do the following

trees are semantically equivalent if and only if for all states $s$ and $s'$ :
1. give a concrete example
 $\neg(forall \ P  \ |- \{P\} \ s \ \{Q\} \ \implies$ |= $forall \ \{P\} \ s \ \{Q\})$

2. $\{true\} \ x := x + 1 \ \{x = x + 1 \}$

3. 






P(T)
For all states s and s' we hae that
    $<something> \rightarrow s'$
	
implies
    $<something else> \rightarrow s'$

Property P() holds for all cases

Provable equivalence
Statements s and s' are provably equivalent if and only if 
for all precondition P and Postcondition Q


Start by assuming it holds
make the inference tree T1


Validity vs provability

|=  {P} s {Q}  is valid if for all states s and s'
if P s = tt then $<S, s> -> s'$  then Q s' = tt

|-  {P} s {Q}  is provable if there exists an inference  tree with 
{P} s {Q} as conclusion

Soundsness means that a provable things implies that it is valid


























