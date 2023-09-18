module Uniq where

uniq :: (Eq a) => [a] -> [a]
uniq [] = []
uniq [x] = [x]
uniq (x1:x2:xs)
    | x1 /= x2  = x1 : uniq (x2:xs)
    | otherwise = uniq (x2:xs)
