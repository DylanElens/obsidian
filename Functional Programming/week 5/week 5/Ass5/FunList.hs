module FunList where

--define using the _list design pattern_
compose :: [a -> a] -> (a -> a)
compose [x] y    = x y
compose (x:xs) y = x (compose xs y)

--define using `foldr`
compose' :: [a -> a] -> (a -> a)
compose' = foldr (.) id 

--Explain _what_ the following function computes, and _how_ it computes it
{-
    The function foo takes an integer n and returns the product of the first integers 1..n
    The function foo may also be recognized as the factorial function.
-}
foo :: (Integral n) => n -> n
foo n = compose (map (*) [1..n]) 1

--define in terms of *only* `map` and `compose`
foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f b xs = compose (map f xs) b
