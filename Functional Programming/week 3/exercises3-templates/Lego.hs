module Lego where

import Data.List
import Data.Tuple

-- getNFromList n xs  = [ x | (i,x) <- zip [0..] xs, i < n ]

removeAt :: Int -> [a] -> [a]
removeAt n xs = [ x | (i, x) <- zip [0..] xs, i /= n ]


sortWithPos :: (Ord a) => [a] -> [(a,Int)]
sortWithPos xs = [(x,i) | (i,x) <- sortBy (\(_,a) (_,b) -> compare a b) (zip [0..] xs) ]

--given two lists of tuples
--we will place
matchItems :: (Ord a) => [(a,Int)] -> [(a,Int)] -> [(a,Int)]

sortedPos :: (Ord a) => [a] -> [(a,Int)]
sortedPos xs = [(x,i) | (i,x) <- matchItems (zip [0..] xs) (zip [0..] (sort xs))]
