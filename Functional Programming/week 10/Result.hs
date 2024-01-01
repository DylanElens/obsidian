{-# LANGUAGE InstanceSigs #-}
module Result where

import Data.List

data Result a = Okay a | Error [String]
  deriving (Eq,Ord,Show)

instance Functor Result where
  fmap :: (a -> b) -> Result a -> Result b
  fmap f (Okay x) = Okay (f x)
  fmap _ (Error xs) = Error xs

instance Applicative Result where
    pure :: a -> Result a
    pure = Okay
    
    (<*>) :: Result (a -> b) -> Result a -> Result b
    Okay f <*> Okay x = Okay (f x)
    Error xs <*> Error ys = Error (xs ++ ys)
    Okay _ <*> Error ys = Error ys
    Error xs <*> Okay _ = Error xs
