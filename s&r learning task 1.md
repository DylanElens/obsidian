## 1
Study the phenomenon of 'abrupt completion' and the language constructs [break](http://docs.oracle.com/javase/specs/jls/se6/html/statements.html#14.15), [continue](http://docs.oracle.com/javase/specs/jls/se6/html/statements.html#14.16), [throw](http://docs.oracle.com/javase/specs/jls/se6/html/statements.html#14.18), and [try-catch](http://docs.oracle.com/javase/specs/jls/se6/html/statements.html#14.20) in the [Java Language Specification](http://docs.oracle.com/javase/specs/jls/se6/html/j3TOC.html). (If Oracle has moved the documents elsewhere, you can also find a PDF of this specification [here](https://brightspace.ru.nl/content/enforced/333269-NWI-IBC025-2022-KW4-V/Learning%20tasks/langspec-3.0.pdf?_&d2lSessionVal=Gu0jBHEuaUWw9fMF95BmqzxP9&ou=333269).)

## 2
Provide an overview of the syntax and (informal) semantics of the mentioned language constructions. Ensure that we can study its essence without being bothered by Java-specific edge phenomena: formulate the constructs as extensions of the While programming language.

1. A property of break is abrubt termination. Break has a break target. However as we are extending the language of while, for simplicity we will make it that a break without a break target shall be treated as an immediate termination of the program. A break target is in our `while` programming language is our while statement 

2. The continue statement is similar to a break statement. It required a continue target. such a target would be a `while` loop. continue would make it that we stop our current iteration and move on with our next one (If $B[[b]] = tt$ holds in that iteration). In java continue without a continue target throws a compile time error. However in `while` we will make it such that that it will stops the program's execution

3. Throw and Try-Catch go hand in hand. Throw can throw an exception of type $E$. However for simplicty in our while language. We will make it such that all things that we can throw are the same. This means that we will disregard the type $E$ in the  `while` language. Throw requires a throw target. In `while` that will be our new `try` statement. A try statement will do nothing if no error is thrown from within it's block. If an error is thrown we stop execution in our try block and move to our catch block with the same state `s` from which we entered our `try` block initially.


## 3
Provide formal semantics for the construction 'continue'. (We do the 'break' together at the lecture.)

Let's first start with extending our `while` language syntax.
$S \ ::= \ x \ := \ a \ | \ skip \ | \ S1 \ ;S2 \  | \ if \ b \  then \ S1 \ else \ S2 \ | \ while \ b \ do \ S \   | \ continue$

The current transition system is not sufficient for our needs. We need to keep track if a `continue` :
1. has occured but not handled
2. has not occured or has been handled

Our new transition system will look like this 
	$<S,s> \rightarrow (s',C)$
Where $C \in \{\oplus, \bigcirc\}$
$\oplus \ \rightarrow$  has occured but not handled
$\bigcirc \ \rightarrow$  has not occured or has been handeld

we now need to add/adjust our derivation rules
first we will add our `continue` 

	$[continue_{ns}]:$$<continue,(s, \bigcirc)> \ \rightarrow \ (s, \oplus)$
  
next we will need to handle our continue properly
1. 
$\hspace{7cm}<S_1, s> \ \rightarrow (s', \oplus)$
	$[comp_{ns}^{\oplus}]:$ $\hspace{2cm}\rule{10cm}{0.4pt}$
$\hspace{7cm}<S_1;S_2, s> \ \rightarrow \ (s', \oplus)$
2. 
$\hspace{4cm}<S_1, s> \ \rightarrow (s', \bigcirc)$$\hspace{2cm}<S_2, s'> \ \rightarrow (s'', \bigcirc)$
	$[comp_{ns}^{\oplus}]:$ $\hspace{2cm}\rule{10cm}{0.4pt}$
$\hspace{7cm}<S_1;S_2, s> \ \rightarrow \ (s'', \bigcirc)$

next we will define our while semantics in regard to the new `continue` rule

1. for the case: $B[[b]] = ff$ nothing happens

	$[while_{ns}^{ff}]$  $\hspace{2cm} \ <while \ b \ do \ S,s> \ \rightarrow (s,\bigcirc)$

2. for the case: $B[[b]] = tt$  things get more interesting

	  $\hspace{6cm} \ <while \ b \ do \ S,s> \ \rightarrow (s',\oplus)$
	$[while_{ns}^{tt \oplus}]$$\hspace{3.5cm}\rule{10cm}{0.4pt}$
	  $\hspace{6cm} \ <while \ b \ do \ S,s> \ \rightarrow (s',\bigcirc)$

$\hspace{5cm}<S, s> \ \rightarrow (s', \bigcirc)$$\hspace{2cm}<while \ b \ do \ S,s'> \ \rightarrow (s'', \bigcirc)$
	$[while_{ns}^{tt\bigcirc}]:$ $\hspace{2cm}\rule{13cm}{0.4pt}$
$\hspace{7cm}<S_1;S_2, s> \ \rightarrow \ (s'', \bigcirc)$

All the other rules will remain the same.

## 5
Discuss the connections between the language constructs examined. Are they independent and/or 'stackable'? How can the semantics descriptions be combined if we want to add more than one of the constructs?

Yes they are stackable. What we would need to do is increase our tuple size(in our transition system) to include our symbols. If we do that we can just copy over our new transition rules and it should it will work. 

What we can do even make it even better in combining our 'nothing has happened symbols' $\bigcirc, \ \circ$ and $brug$ into 1 symbol $\circ$. This way we can just keep the tuple in the transition system of size 2. We would also need a lot less rules.



