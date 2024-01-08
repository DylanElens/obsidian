import Data.Array

ones = repeat 1

shorterThan :: [a] -> [b] -> Bool
shorterThan xs ys = length xs < length ys


isShorterThan' :: [a] -> [b] -> Bool
isShorterThan' _ [] = False
isShorterThan' [] _ = True
isShorterThan' (_:xs) (_:ys) = isShorterThan' xs ys

choose :: Integer -> Integer -> Integer
n `choose` k 
    | k < 0 = 0
    | n < k = 0
    | otherwise = ((n-1) `choose` (k-1)) + ((n-1) `choose` k)

-- the ! operator is used to index into an array
-- bassicly equivalant to arrayName[index]
-- since our array is 2d we need to use a tuple
choose' :: Integer -> Integer -> Integer
n `choose'` k  = chooseArray ! (n,k)
    where 
        chooseArray = array ((0,0),(n,k)) [((i,j), someFunction i j) | i <- [0..n], j <- [0..k]]
        someFunction i j
            | j == 0 = 1
            | j == i = 1
            | j > i = 0
            | otherwise = chooseArray ! (i-1,j-1) + chooseArray ! (i-1,j)

data Tree a = Node a (Tree a) (Tree a) 
    deriving (Functor, Show, Eq)

big :: Integer -> Tree Integer
big n = Node n (big ( 2 * n)) (big (2 * n + 1))

indexTree :: Integer -> Tree a -> a
indexTree 0 (Node x _ _) = x
indexTree n (Node _ l r) 
    | odd n = indexTree ((n-1) `div` 2) r
    | otherwise = indexTree ((n-2) `div` 2) l

fibTree :: Tree Integer
fibTree = fmap fib big
    where 
        fib 0 = 0
        fib 1 = 1
        fib n = fibTree `indexTree` (n-1) + fibTree `indexTree` (n-2)

    
