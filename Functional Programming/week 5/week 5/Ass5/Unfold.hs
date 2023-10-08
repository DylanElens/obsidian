module Unfold where

import Data.List (unfoldr)
import Prelude hiding (take, zip, (++))

bits :: Int -> [Int]
bits = unfoldr (\x -> if x == 0 then Nothing else Just (x `mod` 2, x `div` 2))

zip :: [a] -> [b] -> [(a, b)]
zip a b = unfoldr (uncurry go) (a, b)
  where
    go [] _ = Nothing
    go _ [] = Nothing
    go (x : xs) (y : ys) = Just ((x, y), (xs, ys))

take :: Int -> [a] -> [a]
take n b = unfoldr (uncurry go) (n, b)
  where
    go 0 _ = Nothing
    go _ [] = Nothing
    go a (x : xs) = Just (x, (a - 1, xs))

primes :: [Integer]
primes = unfoldrApo prime [2 ..]
  where
    prime [] = Nothing
    prime (x : xs) = Just (x, filter (\y -> y `mod` x /= 0) xs)
  
apo :: (t -> Either [a] (a, t)) -> t -> [a]
apo f seed = case f seed of
               Left l       -> l
               Right (a,ns) -> a : apo f ns

(++) :: [a] -> [a] -> [a]
(++) a b = apo (uncurry go) (a, b)
  where
    go :: [a] -> [a] -> Either [a] (a, ([a], [a]))
    go [] c = Left c
    go (x : xs) c = Right (x, (xs, c))

-- insert into a sorted list
insert :: (Ord a) => a -> [a] -> [a]
insert a b = apo (uncurry go) (a, b)
  where
    go c [] = Left [c]
    go c (x : xs)
      | a <= x = Left (c : x : xs)
      | otherwise = Right (x, (c, xs))

unfoldrApo :: (t -> Maybe (a, t)) -> t -> [a]
unfoldrApo a = apo (maybe . a)
    where 
      maybe Nothing = Left []
      maybe (Just b) = Right b