module Say where

say :: Integer -> String
say 0 = "zero"
say 1 = "one"
say 2 = "two"
say 3 = "three"
say 4 = "four"
say 5 = "five"
say 6 = "six"
say 7 = "seven"
say 8 = "eight"
say 9 = "nine"
say 10 = "ten"
say 11 = "eleven"
say 12 = "twelve"
say 13 = "thirteen"
say 14 = "fourteen"
say 15 = "fifteen"
say 16 = "sixteen"
say 17 = "seventeen"
say 18 = "eighteen"
say 19 = "nineteen"
say 20 = "twenty"
say 30 = "thirty"
say 40 = "forty"
say 50 = "fifty"
say 60 = "sixty"
say 70 = "seventy"
say 80 = "eighty"
say 90 = "ninety"
say n
  | n < 20 = say (n `mod` 10) ++ "teen"
  | n < 100 = say (n `div` 10 * 10) ++ " " ++ say (n `mod` 10)
  | n < 1000 = say (n `div` 100) ++ " hundred" ++ if n `mod` 100 == 0 then "" else " and " ++ say (n `mod` 100)
  | n < 10000 = say (n `div` 1000) ++ " thousand" ++ if n `mod` 1000 == 0 then "" else " " ++ say (n `mod` 1000)
  | n < 100000 = say (n `div` 1000) ++" thousand" ++ if n `mod` 1000 == 0 then "" else " " ++ say (n `mod` 1000)
  | n < 1000000 = say (n `div` 1000) ++ " thousand" ++ if n `mod` 100000 == 0 then "" else " " ++ say (n `mod` 1000)
  | n < 10000000 = say (n `div` 1000000) ++ " million" ++ if n `mod` 1000000 == 0 then "" else " " ++ say (n `mod` 1000000)
  | otherwise = "out of range"
