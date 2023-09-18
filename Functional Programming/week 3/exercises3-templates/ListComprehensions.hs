module ListComprehensions where

zipList :: [a] -> [b] -> [(a,b)]
zipList as bs = [ (a,b) | a <- as, b <- bs ]
-- we get 2 lists and return a list of tuples

genList :: Int -> a -> [a]
genList n y   = [ y | i <- [1..n] ]
-- we get a number and a value and return a list of that value n times

getNFromList :: Int -> [a] -> [a]
getNFromList n xs  = [ x | (i,x) <- zip [0..] xs, i < n ]
-- we get a number and a list and return a list of the first n elements of the list

findInList :: Eq a => a -> [a] -> [Int]
findInList a xs  = [ i | (i,x) <- zip [0..] xs, x == a]
-- we get a value and a list and return a list of the indexes of the list where the value is found

zipIntoList :: [a] -> [a] -> [a]
zipIntoList xs ys = [ e | (x,y) <- zip xs ys, e <- [x,y] ]
-- we get 2 lists and return a list of the elements of the lists


flatten :: [[a]] -> [a]
flatten xss   = [ x | xs <- xss, x <- xs ]
-- we get a list of lists and return a list of the elements of the lists
