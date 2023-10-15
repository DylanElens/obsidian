module Truthy where

-- (6.5.1) Define typeclass Truthy
class Truthy a where
    truthy :: a -> Bool

-- (6.5.2) Define typeclass Truthy for Bool and Int
instance Truthy Bool where
    truthy = id

instance Truthy Int where
    truthy = (/= 0)

-- (6.5.3) Define a new datatype Nope with a single constructor of the same name, that is always falsy.
data Nope a = Nope a

instance Truthy (Nope a) where
    truthy _ = False

-- (6.5.4) Make an instance of Truthy for pairs, so that a pair is falsy iff all its elements are falsy
instance (Truthy a, Truthy b) => Truthy (a, b) where
    truthy (a, b) = truthy a && truthy b

-- (6.5.5) Define operators (&&&) and (|||) that behave like and and or for truthy types. 
(&&&) :: (Truthy a, Truthy b) => a -> b -> Bool
(&&&) a b = truthy a && truthy b

(|||) :: (Truthy a, Truthy b) => a -> b -> Bool
(|||) a b = truthy a || truthy b

-- (6.5.6) Make a function ifThenElse such that ifThenElse x y z == y if x is truthy, and ifThenElse x y z == z
-- if x is falsy.
ifThenElse :: (Truthy a) => a -> b -> b -> b
ifThenElse x y z = if truthy x then y else z
