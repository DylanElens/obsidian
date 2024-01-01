module Dice where

import System.Random
import Control.Monad
import Control.Applicative
import Data.List
import RandomState
import RandomGen
import LCG

data Expr = Lit Int | Dice Int 
          | Expr :+: Expr
          | Min Expr Expr | Max Expr Expr
  deriving (Show)

infixl 6 :+: 

type DiceAction m = Int -> m Int

evalM :: Expr -> DiceAction IO -> IO Int             -- prototype
evalM (Lit n) _ = return n
evalM (Dice k) roll = roll k
evalM (e1 :+: e2) roll = do
    v1 <- evalM e1 roll
    v2 <- evalM e2 roll
    return (v1 + v2)
evalM (Min e1 e2) roll = do
    v1 <- evalM e1 roll
    v2 <- evalM e2 roll
    return $ min v1 v2
evalM (Max e1 e2) roll = do
    v1 <- evalM e1 roll
    v2 <- evalM e2 roll
    return $ max v1 v2



evalM' :: Monad m => Expr -> DiceAction m -> m Int
evalM' (Lit n) _ = return n
evalM' (Dice k) roll = roll k
evalM' (e1 :+: e2) roll = do
    v1 <- evalM' e1 roll
    v2 <- evalM' e2 roll
    return (v1 + v2)
evalM' (Min e1 e2) roll = do
    v1 <- evalM' e1 roll
    v2 <- evalM' e2 roll
    return $ min v1 v2
evalM' (Max e1 e2) roll = do
    v1 <- evalM' e1 roll
    v2 <- evalM' e2 roll
    return $ max v1 v2

evalRIO :: Expr -> IO Int
evalRIO expr = evalM expr (\dice->randomRIO (1,dice) >>= pure)   -- silent version
--evalRIO expr = evalM expr (\dice->randomRIO (1,dice) >>= report) -- verbose version
--  where report x = do { putStr "rolled a "; print x; pure x }

evalIO :: Expr -> IO Int
evalIO expr = evalM' expr (\dice->randomRIO (1,dice) >>= pure)   -- silent version


evalND :: Expr -> [Int]
evalND e = evalM' e diceOutcomes
  where
    diceOutcomes :: DiceAction []
    diceOutcomes k = [1..k]
avg :: (Fractional a) => [Int] -> a
avg xs = fromIntegral (sum xs) / fromIntegral (length xs)

expectation :: (Fractional a) => Expr -> a
expectation e = avg (evalND e)

evalR :: Expr -> RandomState Int
evalR expr = evalM' expr (\dice->getRandomRange (1,dice))   -- silent version

observed :: (Fractional a) => Int -> Expr -> IO a
observed n e = do
  let xs = evalRIO e
  let ys = replicateM n xs
  let zs = fmap (avg . fmap fromIntegral) ys
  zs
