module AST where

-- this template uses prefix constructors; feel free to use ASTInfix.hs (which uses infix ones) if you prefer
-- (if you really liked your own solution to Exercise 4.7, you can use that as well)

type Identifier = String

data Expr = Lit Integer | Var Identifier | Add Expr Expr | Sub Expr Expr | Mul Expr Expr | Div Expr Expr
  deriving (Show)

-- 2.1/2.2
-- eval :: (Fractional a, Eq a) => Expr -> [(Identifier, a)] -> Maybe a 
-- eval (Lit k) _ = Just (fromInteger k) 
-- eval (Add x y) vars = (+) <$> eval x vars <*> eval y vars
-- eval (Sub x y) vars = (-) <$> eval x vars <*> eval y vars
-- eval (Mul x y) vars = (*) <$> eval x vars <*> eval y vars
-- eval (Div x y) vars = do
--     x' <- eval x vars
--     y' <- eval y vars
--     if y' == 0 then Nothing else Just (x' / y')
-- eval (Var name) vars = lookup name vars


-- 2.3

eval :: (Fractional a, Eq a) => Expr -> [(Identifier, a)] -> Result a
eval (Lit n) _ = Okay (fromInteger n)
eval (Var x) vars = maybe (Error ["unknown variable: " ++ x]) Okay (lookup x vars)
eval (Add x y) vars = (+) <$> eval x vars <*> eval y vars
eval (Sub x y) vars = (-) <$> eval x vars <*> eval y vars
eval (Mul x y) vars = (*) <$> eval x vars <*> eval y vars
eval (Div x y) vars = case eval y vars of
    Okay 0 -> Error ["division by zero"]
    Okay y -> (/ y) <$> eval x vars
    Error err -> Error err
