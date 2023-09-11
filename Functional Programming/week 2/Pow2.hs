module Pow2 where

pow2 :: (Ord n, Num n, Num a) => n -> a
pow2 0 = 1
pow2 n = 2 * pow2 (n-1)

-- The maximum n for which 2^n can stille be represented is:
-- Integer : n = endless
-- Int     : n = 62
-- Float   : n = 127
-- Double  : n = 1023
