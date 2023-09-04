module Exercise1_7 where

appendstar:: Integer -> String -> String
appendstar z s
    | z < 1 = s ++ ""
    | otherwise = appendstar (z-1) (s ++ "*")

appendspace:: Integer -> String -> String
appendspace z s
    | z < 1 = s ++ ""
    | otherwise = appendspace (z-1) (s ++ " ")

layer:: Integer -> Integer -> String -> String
layer a base str
    | a > base = str
    | otherwise = layer (a+2) base (appendspace ((base - a) `div` 2) (appendstar a (appendspace ((base - a) `div` 2) str)) ++ "\n")

triangle:: Integer -> String
triangle n
    | even n = layer 2 n ""
    | otherwise = layer 1 n ""

christmasTreeBuilder:: Integer -> Integer -> String -> String
christmasTreeBuilder n a str
    | a > n = str ++ ""
    | otherwise = triangle (a*2 - 1) ++ christmasTreeBuilder n (a+1) str

christmasTree:: Integer -> String
christmasTree n = christmasTreeBuilder n 1 ""

{-
The string appending isn't particularly elegant, and the christmastree slouches a bit, but apart from that the code seems to work fine.
-}