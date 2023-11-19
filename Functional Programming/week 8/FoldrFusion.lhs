> module FoldrFusion where
> import Prelude hiding (map)

We can define map in terms of foldr:
map :: (a -> b) -> [a] -> [b]
map f = foldr (step f) []
  where step f x xs = f x : xs

--------------------------------------------------
To prove: foldr p e . map q = foldr (p . q) e

We can apply the fusion law using
  f ==> p
  g ==> step q
  h ==> (.) p q -> p . q
  z ==> e

As follows:
  foldr p e . map q

= foldr p e . foldr (step f) []
  ----------------------------- foldr fusion
= foldr (.) (step p) []
  ---------------------- definition of step
= foldr (.) (\x xs -> p x : xs) []
  ---------------------------------- foldr fusion
= (.) (step (.) (\x xs -> p x : xs)) []
  ---------------------------------- definition of step
= (.) (\x xs -> (.) x (step p xs)) []
  ---------------------------------- definition of (.)
= \x xs -> (.) x (step p xs) []
  ------------------------------ definition of (.)
= \x xs -> (.) x (p x : xs)
  ------------------------- definition of step
= \x xs -> (.) x (p x : xs)
  ------------------------ definition of (.)
= \x xs -> (p x) : xs
  -------------------- definition of (.)
= step (p . q) x []
  ----------------- rewrite map as foldr
= foldr (p . q) e

Since the "THEN" part of the fusion law can only be applied if the "IF" part is true,
we need to show that for all x, y:
  p (step q x y) = (.) q (p y)

Which is the case since:
  -- Definition of step
  p (step q x y) 
    = p (q x : y)
  -- Definition of (.)
    = p (q x) : p y
  -- Definition of (.)
    = (.) q (p y)


To prove: map (f . g) = map f . map g

First we need to prove that: step (f . g) = step f . g:

Step 1: step (f . g) x xs = step f x (g x xs)
  - Left-hand side:
    step (f . g) x xs 
    = (f . g) x : xs
    = f (g x) : xs
  - Right-hand side:
    step f x (g x xs)
    = f x : g x xs
  - Conclusion:
    The two sides are equal.

Step 2: Use step 1 to prove the main property
  - Left-hand side:
    map (f . g) xs
    = foldr (step (f . g)) [] xs
    = foldr (\x ys -> (f . g) x : ys) [] xs
    = foldr (\x ys -> f (g x) : ys) [] xs
    = foldr (step f) [] (map g xs)  -- Using the definition of map
    = map f (map g xs)               -- Using the definition of map
  - Right-hand side:
    (map f . map g) xs
    = map f (map g xs)
  - Conclusion:
    The two sides are equal.

