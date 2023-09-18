module Obfuscate where

import Data.Char

cambridge :: String -> String
cambridge xs =  unwords (scrambleAll (words xs))

scrambleAll :: [String] -> [String]
scrambleAll = map filterFirst

filterFirst :: String -> String
filterFirst [] = scrambleWord []
filterFirst (x:xs) = x : scrambleWord xs

scrambleWord :: String -> String
scrambleWord [] = filterLast []
scrambleWord [x] = filterLast [x]
scrambleWord [x,y] = x : filterLast [y]
scrambleWord [x,y,z] = y : x : filterLast [z]
scrambleWord (x1:x2:x3:x4:xs) = x3 : scrambleWord (x2:x1:x4:xs)

filterLast :: String -> String
filterLast [] = []
filterLast [x] = [x]

meme :: String
meme = "According to research at Cambridge university, it doesn't matter\
       \ what order the letters in a word are, the only important thing is\
       \ that the first and last letters are at the right place. The rest can\
       \ be a total mess and you can still read it without a problem. This is\
       \ because we do not read every letter by it self but the word as a wohle."
