module RandomGen where

import RandomState
import LCG

import System.Random
import Control.Monad
import GHC.Data.FastString (bytesFS)

getRandomRange :: (Int,Int) -> RandomState Int
getRandomRange (a,b) = do
    seed <- getState
    let (x, seed') = randomRange (a,b) seed
    putState seed'
    return x

multiEval :: [RandomState a] -> RandomState [a]
multiEval xs = do
    seed <- getState
    let (result, seed') = runState (sequence xs) seed
    putState seed'
    return result

roll_2d6 :: RandomState Int
roll_2d6 = do
  a <- getRandomRange (1,6)
  b <- getRandomRange (1,6)
  pure (a+b)

runRandomStateIO :: RandomState a -> IO a
runRandomStateIO action = do
    seed <- randomIO
    let (result, _) = runState action (mkSeed seed)
    return result

-- 1.3
-- sequence :: (Monad m) => [m a] -> m [a]
-- sequence [roll_2d6, roll_2d6, roll_2d6]
-- this would sort of be the same as
-- do
--  a <- roll_2d6
--  b <- roll_2d6
--  c <- roll_2d6
--  return [a,b,c]
--
-- we would obtain it's result by doing something like
-- do
-- result <- sequence [roll_2d6, roll_2d6, roll_2d6]
-- return (sum result) (if we wanted to wrap it in a monad)

--these definitions can be used to test your function a bit more thoroughly
runRandomNumbers :: (Int,Int) -> Int -> Seed -> [Int]
runRandomNumbers range n seed = result
  where (result, _) = runState (replicateM n (getRandomRange range)) seed

testme :: [Int]
testme = runRandomNumbers (0,999) 100 (mkSeed 42)
