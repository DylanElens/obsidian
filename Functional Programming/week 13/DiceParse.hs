module ParseDice where

import Control.Applicative
import Parser
import Dice

{-

expr     = fraction

fraction = formula
         | term, "/", positive

formula  = formula, "+", term
         | formula, "-", term
         | term

term     = "(", expr, ")"
         | natural                   -- constants
         | [positive], "d", positive -- dice

positive = <a natural number greater than 0>

-}

expr :: Parser Expr
expr = fraction

fraction :: Parser Expr
fraction = formula

--a forula is a term, followed by a + or - and another term
formula :: Parser Expr
formula = term `chainl1` addop

term :: Parser Expr
term = Lit <$> natural

positive :: Parser Int
positive = natural

chainl1 :: Parser a -> Parser (a -> a -> a) -> Parser a
p `chainl1` op = p >>= rest
  where rest x = do f <- op
                    y <- p
                    rest (f x y)
                 <|> return x

addop :: Parser (Expr -> Expr -> Expr)
addop = (:+:) <$ char '+' <|> (:-:) <$ char '-'

-- test cases: a list of tuples listing the input and output of "parseAll expr"
-- in case you used a different constructor for division, edit the definition of "</>"
test :: [(String, Maybe Expr)]
test = [ ""          =-> Nothing
       , "2"         =-> Just $ Lit 2
       , "d6"        =-> Just $ Dice 6
       , "(d6)"      =-> Just $ Dice 6
       , "((d6))"    =-> Just $ Dice 6
       , "2d10"      =-> Just $ Dice 10 :+: Dice 10
       , "xkcd"      =-> Nothing
       , "d6+d8"     =-> Just $ Dice 6 :+: Dice 8
       , "d10-1"     =-> Just $ Dice 10 :-: Lit 1
       , "1+d2+d3"   =-> Just $ Lit 1 :+: Dice 2 :+: Dice 3
       , "6-5-4"     =-> Just $ Lit 6 :-: Lit 5  :-: Lit 4
       , "2/d6"      =-> Nothing
       , "1+2/3"     =-> Nothing
       -- , "d6/2"      =-> Just $ Dice 6 </> 2  -- if these don't compile, edit below!
       -- , "1+(2/3)"   =-> Just $ Lit 1 :+: (Lit 2 </> 3)
       -- , "(1+2)/3"   =-> Just $ (Lit 1 :+: Lit 2) </> 3
       ]
  where (=->) = (,)
        infixr 0 =->

        -- depending on how you defined division in "Expr", choose the right definition here:
        -- (</>) :: Expr -> Int -> Expr
        -- (</>) = (:/:)             -- data Expr = ... | Expr :/: Int | ...
        -- (</>) = Div             --             ... | Div Expr Int | ...
        --x </> y = x :/: Lit y   --             ... | Expr :/: Expr | ...
        -- x </> y = Div x (Lit y) --             ... | Div Expr Expr | ...

-- use this function to get all incorrect answers
deviations :: (Eq b) => (a->b) -> [(a,b)] -> [(a,b,b)]
deviations f ans = [ (x,y,f x) | (x,y) <- ans, f x /= y ]

-- combine with the functions in dice
calculate :: (Fractional a) => String -> Maybe a
calculate str = expectation <$> parseAll expr str