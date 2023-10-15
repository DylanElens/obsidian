module Main (main) where

import Data.Char
import Data.List

class Rankable key where
  rank :: [(key, a)] -> [[a]]

digitalSortOn :: (Rankable key) => (v -> key) -> [v] -> [v]
digitalSortOn f = concat . rank . map (\x -> (f x, x))

digitalSort :: (Rankable key) => [key] -> [key]
digitalSort = digitalSortOn id

genericRank :: (Ord key) => [(key, a)] -> [[a]]
genericRank = map (map snd) . groupBy (\x y -> fst x == fst y) . sortBy (\x y -> compare (fst x) (fst y))

-- Create instances of Rankable for the types Int, Integer, and Char which use genericRank.
instance Rankable Int where rank = genericRank

instance Rankable Integer where rank = genericRank

instance Rankable Char where rank = genericRank

instance Rankable Bool where 
  rank = map (map snd) . groupBy (\x y -> fst x == fst y) . sortOn fst


instance (Rankable key1, Rankable key2) => Rankable (key1,key2) where
  rank = concatMap rank . rank . map assoc
    where
      assoc :: ((key1,key2),a) -> (key1,(key2,a))
      assoc ((x,y),z) = (x,(y,z))

instance (Rankable key) => Rankable (Maybe key) where
  rank = rank . map (\(x,y) -> (maybe (Left ()) Right x, y)) . rank . map (\(x,y) -> (maybe (Left ()) Right x, y))

instance Rankable key => Rankable [key] where
  rank = concatMap rank . rank . map assoc . rank . map assoc
    where
      assoc :: ([key],a) -> (Maybe key,([key],a))
      assoc (x:xs,y) = (Just x,(xs,y))
      assoc ([],y) = (Nothing,([],y))

----------------------------------------------------------------------------------------------------
-- some test inputs (it would be reasonably for "rank" and "genericRank" to produce the same output)

testPhrase :: [Char]
testPhrase = "Hello, world!"

boolTest :: [(Bool, Char)]
boolTest = [(isLetter c, c) | c <- testPhrase]

maybeTest :: [(Maybe Char, Char)]
maybeTest = [(if isLetter c then Just c else Nothing, c) | c <- testPhrase]

tupleTest :: [((Bool, Char), Char)]
tupleTest = [((isLetter c, c), c) | c <- testPhrase]

listTest :: [(String, Char)]
listTest = [(w, c) | w <- groupBy (\x y -> isLetter x == isLetter y) testPhrase, c <- w]

main :: IO ()
main = do
  putStrLn "test out the genericRank function"
  print $ genericRank boolTest
  print $ rank tupleTest

  return ()
