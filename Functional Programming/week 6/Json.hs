{-# LANGUAGE TypeSynonymInstances, FlexibleInstances, OverlappingInstances #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-deprecated-flags #-}

import Data.List

data Json
  = JSNull                      -- null
  | JSFalse                     -- false
  | JSTrue                      -- true
  | JSNumber Double             -- numbers, 123.456
  | JSString String             -- strings, "hello"
  | JSList [Json]               -- lists,   [x,y,..]
  | JSObject [(String,Json)]    -- objects, {"k":v, "k2":v2, ..}
  deriving (Eq)

instance Show Json where
  showsPrec _ = showJson 0
    where
    showJson :: Int -> Json -> ShowS
    showJson _ JSNull        = showString "null"
    showJson _ JSFalse       = showString "false"
    showJson _ JSTrue        = showString "true"
    showJson _ (JSString x)  = shows x
    showJson _ (JSNumber x)  = shows x
    showJson i (JSList xs)   = showString "[" . showList showListItem i xs . showString "]"
    showJson i (JSObject xs) = showString "{" . showList showObjectItem i xs . showString "}"

    showIndent :: Int -> ShowS
    showIndent i = showString (replicate (2*i) ' ')

    showListItem :: Int -> Json -> ShowS
    showListItem i v = showIndent i . showJson i v

    showObjectItem :: Int -> (String,Json) -> ShowS
    showObjectItem i (n, v) = showIndent i . shows n . showString ": " . showJson i v

    showList :: (Int -> a -> ShowS) -> Int -> [a] -> ShowS
    showList _        _ [] = id
    showList showItem i xs = showString "\n"
                           . foldr (.) id (intersperse (showString ",\n") (map (showItem (i+1)) xs))
                           . showString "\n" . showIndent i

-- Person data type

data Person = Person { name :: String, age :: Double, knowsFP :: Bool }
  deriving (Eq, Show)


-- Converting Haskell values to Json

class ToJson  a where
    toJson :: a -> Json

instance ToJson () where
    toJson () = JSNull

instance ToJson Bool where
    toJson True = JSTrue
    toJson False = JSFalse

instance ToJson Double where
    toJson = JSNumber

instance ToJson String where
    toJson = JSString

instance ToJson a => ToJson [a] where
    toJson = JSList . map toJson

instance (ToJson a, ToJson b) => ToJson (a,b) where
    toJson (x,y) = JSList [toJson x, toJson y]

instance ToJson Person where
    toJson (Person n a k) = JSObject [("name", toJson n), ("age", toJson a), ("knowsFP", toJson k)]

instance ToJson Int where
    toJson = JSNumber . fromIntegral



-- Converting from Json back to Haskell values

class FromJson a where
    fromJson :: Json -> Maybe a

instance FromJson () where
    fromJson JSNull = Just ()
    fromJson _      = Nothing

instance FromJson Bool where
    fromJson JSTrue  = Just True
    fromJson JSFalse = Just False
    fromJson _       = Nothing

instance FromJson Double where
    fromJson (JSNumber x) = Just x
    fromJson _            = Nothing

instance FromJson String where
    fromJson (JSString x) = Just x
    fromJson _            = Nothing

instance (FromJson a, FromJson b) => FromJson (a,b) where
    fromJson (JSList [x,y]) = case (fromJson x, fromJson y) of
        (Just x', Just y') -> Just (x', y')
        _                  -> Nothing
    fromJson _              = Nothing

instance FromJson Person where
    fromJson (JSObject [("name", n), ("age", a), ("knowsFP", k)]) = case (fromJson n, fromJson a, fromJson k) of
        (Just n', Just a', Just k') -> Just (Person n' a' k')
        _                           -> Nothing
    fromJson _ = Nothing

instance FromJson a => FromJson [a] where
    fromJson (JSList xs) = mapM fromJson xs
    fromJson _           = Nothing

instance FromJson Int where
    fromJson (JSNumber x) = Just (round x)
    fromJson _            = Nothing


-- Test cases

person1, person2 :: Person
person1 = Person {name="Twan", age=38, knowsFP=True}
person2 = Person {name="Wim-Lex", age=56, knowsFP=False}

persons :: [Person]
persons = [person1, person2]

tuple1 :: ((), (Bool,Bool))
tuple1 = ((), (True, False))

json1, json2, json3, json4 :: Json
json1 = JSObject [("name",JSString "Twan"),("age",JSNumber 38.0),("knowsFP",JSTrue)]
json2 = JSObject [("name",JSString "Wim-Lex"),("age",JSNumber 56.0),("knowsFP",JSFalse)]
json3 = JSList [json1, json2]
json4 = JSList [JSNull, JSList [JSTrue, JSFalse]]

testToJson :: Bool
testToJson = toJson person1 == json1 && 
             toJson person2 == json2 &&
             toJson persons == json3 &&
             toJson tuple1 == json4

testFromJson :: Bool
testFromJson = Just person1 == fromJson json1 && 
               Just person2 == fromJson json2 &&
               Just tuple1 == fromJson json4 &&
               fromJson json1 == (Nothing :: Maybe String) &&
               fromJson json1 == (Nothing :: Maybe Double) &&
               fromJson json1 == (Nothing :: Maybe Bool)

