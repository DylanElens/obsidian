module Exercise1_2 where

f1:: Integer -> Integer -> Integer
f1 m n
    | m < n = m
    | otherwise = n

f2:: String -> Integer -> String
f2 s n
    | n <= 0 = ""
    | otherwise = s ++ f2 s (n-1)

f3:: Integer -> Integer -> Integer
f3 x 0 = x
f3 x y = f3 y (x `mod` y)

{-  1.2

    'f1' could have 'smallest' as name, as it returns the smallest integer.
    'f2' could have 'strTimes' as name, as it appends string 's' 'n' times to eachother.
    'f3' could have 'grtComDev' as name, as it is the greatest common devider of two integers.
-}