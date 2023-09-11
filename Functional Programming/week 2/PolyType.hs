module PolyType where

--this code is parametric polymorphic
f8 :: Ord a => a -> a -> a
f8 x y  = if x <= y then x else y

--this code is ad-hoc polymorphic
f9 :: Bool -> Bool -> Bool
f9 x y  = not x || y

--this code is ad-hoc polymorphic
f10 :: Int -> Int -> Int
f10 x y
  | x == 0    = y
  | otherwise = x + y

--this code is parametric polymorphic
f11 :: a -> a -> a
f11 x y = get 0
  where get n = if n == 0 then x else y
