Problem T: Input: R(M)
Question does M  halt on all inputs?

Proposition T is undecideable


Proof:

	Problem B reduces problem to problem T      => 1pt     
	From a machine M for problem B construct a machine problem T such that     => 1pt
	we construct M' for problem T such that
	M(lamda) halts <=>  M' halts on all inputs      => 1pt
	M' :  1: erase tape  
				 2: M
	 M(lamda) halts => L(M') =  {0, 1}
	 M(lamda) loops => L(M') !=  \empty_set

Prove that there is no algorithm that determines whether an arbitrary Turing machine
halts when run with the input string 101. 

Proof:

	Problem B reduces problem to problem T      => 1pt     
	From a machine M for problem B construct a machine problem T such that     => 1pt
	we construct M' for problem T such that
	M(lamda) <=>  M' halts on a 101 => 1pt
	M' :  1: erase tape  
				 2: M

Prove that there is no algorithm that determines whether an arbitrary Turing machine
halts for at least one input string.

Proof:

	Problem B reduces problem to problem T      => 1pt     
	From a machine M for problem B construct a machine problem T such that     => 1pt
	we construct M' for problem T such that
	M(lamda) <=>  M' halts for at least 1 input string => 1pt
	The construction of m': 
	M' :  1: erase tape  
				 2: M
	 we have now reduced it to the blank tape problem. This means that it is
	 undecideable