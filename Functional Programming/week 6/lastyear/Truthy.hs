module Main (main) where

import Lib

class Truthy a where
    truthy :: a -> Bool

instance Truthy Bool where
    truthy = id

instance Truthy Int where
    truthy = (/= 0)

-- Define a new datatype Nope with a single constructor of the same name, that is always falsy.
data Nope a = Nope

instance Truthy (Nope a) where
    truthy _ = False
-- Make an instance of Truthy for pairs, so that a pair is falsy iff all its elements are falsy

instance (Truthy a, Truthy b) => Truthy (a, b) where
    truthy (a, b) = truthy a && truthy b

-- Define operators (&&&) and (|||) that behave like and and or for truthy types. 
(&&&) :: (Truthy a, Truthy b) => a -> b -> Bool
(&&&) a b = truthy a && truthy b

(|||) :: (Truthy a, Truthy b) => a -> b -> Bool
(|||) a b = truthy a || truthy b

-- Make a function ifThenElse such that ifThenElse x y z == y if x is truthy, and ifThenElse x y z == z
-- if x is falsy.
ifThenElse :: (Truthy a) => a -> b -> b -> b
ifThenElse x y z = if truthy x then y else z


main :: IO ()
main = do
    print $ "homie"
    return ()
