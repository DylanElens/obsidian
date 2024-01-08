import System.Random

f1 :: IO Int
f1 = do
  x <- randomRIO (1, 6)
  y <- randomRIO (1, 6)
  pure (x + y)

put = putStr "kip"

twice_ :: IO a -> IO ()
twice_ action = do
  action
  action
  pure ()

twice :: IO a -> IO (a, a)
twice action = do
  y <- action
  x <- action
  pure (x, y)

doWhile :: (a -> Bool) -> IO a -> IO a
doWhile predicate action = do
  x <- action
  if predicate x then doWhile predicate action else pure x

doWhile' :: (a -> Bool) -> IO a -> IO [a]
doWhile' predicate action = do
  x <- action
  if predicate x
    then do
      xs <- doWhile' predicate action
      pure (x : xs)
    else pure [x]


