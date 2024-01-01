{-# OPTIONS_GHC -Wno-unused-do-bind #-}
module ListParse where

import Control.Applicative
import Control.Monad
import Parser

{- grammar:
 -   intList   = "{" { integer } "}"
newtype Parser a = P { parse :: String -> Maybe (a, String) }
  deriving (Functor)
 -}


intList :: Parser [Int]
intList = do
  char '{'
  ns <- many integer
  char '}'
  return ns



{- grammar:
 -   intRecord = "{" integer "#" { integer } "}"
 -                   ^ =: n      ^^^^^^^^^^^ (repeat n# times)
 -}

intRecord :: Parser [Int]
intRecord = do
  char '{'
  amount <- integer
  char '#'
  ns <- times amount integer
  char '}'
  return ns
