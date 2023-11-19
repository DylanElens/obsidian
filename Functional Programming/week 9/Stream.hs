module Stream where

import Data.List qualified as List
import Prelude hiding (concat, cycle, drop, filter, head, map, repeat, sum, tail, zipWith)

data Stream a = a :> Stream a

infixr 5 :>

instance (Show a) => Show (Stream a) where
  show s = "(" List.++ showN (16 :: Int) s List.++ ")"
    where
      showN 0 _ = "..."
      showN n (x :> xs) = show x List.++ " :> " List.++ showN (n - 1) xs

from :: Integer -> Stream Integer
from n = n :> from (n + 1)

head :: Stream a -> a
head (x :> _) = x

tail :: Stream a -> Stream a
tail (_ :> xs) = xs

repeat :: a -> Stream a
repeat x = x :> repeat x

map :: (a -> b) -> (Stream a -> Stream b)
map f (x :> xs) = f x :> map f xs

zipWith :: (a -> b -> c) -> (Stream a -> Stream b -> Stream c)
zipWith f (x :> xs) (y :> ys) = f x y :> zipWith f xs ys

filter :: (a -> Bool) -> Stream a -> Stream a
filter p (x :> xs) = if p x then x :> filter p xs else filter p xs

toList :: Stream a -> [a]
toList (x :> xs) = x : toList xs

cycle :: [a] -> Stream a
cycle xs = cycle' xs
  where
    cycle' [] = cycle' xs
    cycle' (y : ys) = y :> cycle' ys

nat :: Stream Integer
nat = 0 :> zipWith (+) nat (repeat 1)

fib :: Stream Integer
fib = 0 :> 1 :> zipWith (+) fib (tail fib)

isPrime :: Integer -> Bool
isPrime v =
  let maxDiv = floor (sqrt (fromIntegral v))
   in all (\x -> (v `rem` x) /= 0) [2 .. maxDiv]

-- The above function is copied from stackoverflow to save us some time
-- src: https://codereview.stackexchange.com/questions/4626/lazy-computation-of-primes-in-haskelllazy-list-of-prime-numbers

primes :: Stream Integer
primes = filter isPrime (from 2)

-- primetwins :: Stream (Integer,Integer)
-- primetwins = filter (\(x,y) -> x - y == 2) (filter (\(x,y) -> isPrime x && isPrime y) (zipWith ((,)) (tail primes) primes))

primetwins :: Stream (Integer, Integer)
primetwins = f primes
  where
    f (x :> xs)
      | isPrime x && isPrime (x + 2) = (x, x + 2) :> f xs
      | otherwise = f xs

-- combine :: Stream a -> Stream a -> Stream a
-- combine (x :> xs) (y :> ys) = x :> y :> combine xs ys
combine :: Stream a -> Stream a -> Stream a
combine (x :> xs) (y :> ys) = x :> combine xs (y :> ys)
combine xs (y :> ys) = y :> combine xs ys
