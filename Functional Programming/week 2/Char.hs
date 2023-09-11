module Char where

import Data.Char

(~~) :: String -> String -> Bool
(~~) x y = map toLower x == map toLower y

reverseCase :: String -> String
reverseCase = map reverseCaseWord

reverseCaseWord :: Char -> Char
reverseCaseWord c
  | isUpper c = toLower c
  | otherwise = toUpper c

shift :: Int -> Char -> Char
shift n x
  | x == ' ' = x
  | ord x < 65 || ord x > 90 = x
  | (ord x + n) > 90 = chr (((ord x - ord 'A' + n) `mod` 26) + ord 'A')
  | otherwise = chr (ord x + n)

caesar :: Int -> String -> String
caesar x = map (shift x . toUpper)

msg :: String
msg = "ADMNO D HPNO NKMDIFGZ TJP RDOC AVDMT YPNO"
