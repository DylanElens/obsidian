module Expression where

data Tree a = Leaf | Node a (Tree a) (Tree a)
  deriving (Show)

skewed :: Integer -> Tree ()
skewed 0 = Leaf
skewed n = Node () (skewed (n-1)) Leaf

inorder :: Tree a -> [a]
inorder Leaf = []
inorder (Node x lt rt) = inorder lt ++ [x] ++ inorder rt

{-
 -Exercise 8.7 (Mandatory: Program derivation, ProgramDerivation.hs). The implementation of inorder from Exercise 4.5: inorder :: Tree a → [a] inorder Leaf = [] inorder (Node x lt rt) = inorder lt ++ [x] ++ inorder rt has a quadratic running time because of the repeated invocations of list concatenation—recall that the running time of ++ is linear in the length of its first argument. To improve the running time we solve a more complicated task (see also Exercise 8.2). inorderCat t xs = inorder t ++ xs At first sight, you will wonder why we are making our problem harder. This technique is known as inventor’s paradox, or strengthening the induction hypothesis. The important observation is that while the problem is more difficult, the recursive call gives an induction hypothesis that is also much stronger, which can make proving the inductive step easier. 1. Derive an implementation of inorderCat from the specification above using equational reasoning; and then define inorder in terms of inorderCat. 2. Test the resulting program on a few test cases. (Tip: use the function skewed :: Integer → Tree () that generates a left-skewed tree of the given height.) Is the new implementation of inorder actually more efficient? 3. Repeat the above procedure to create a more efficient version of elems: elems :: Tree a → [a] elems Leaf = [] elems (Node x lt rt) = x : elems lt ++ elems rt
Derive
  inorderCat t xs = inorder t ++ xs

  inorderCat Leaf xs = inorder Leaf ++ xs
  inorderCat (Node x lt rt) xs = inorder (Node x lt rt) ++ xs
    = inorder lt ++ [x] ++ inorder rt ++ xs
    = inorder lt ++ ([x] ++ inorder rt ++ xs)
    = inorderCat lt ([x] ++ inorder rt ++ xs)
    = inorderCat lt (x : (inorder rt ++ xs))
    = inorderCat lt (x : (inorderCat rt xs))
    = inorderCat (Node x lt rt) (x : inorderCat rt xs)
    = inorderCat t (x : inorderCat rt xs)

  inorderCat t [] = inorder t
  inorderCat t (x : xs) = inorderCat t (x : inorderCat rt xs)

  inorderCat t [] = inorder t
  inorderCat t (x : xs) = inorderCat t (x : inorderCat rt xs)

-}

-- inorderCat :: Tree a -> [a] -> [a]
-- inorderCat t xs = inorder t ++ xs 

inorderCat :: Tree a -> [a] -> [a]
inorderCat Leaf xs = xs
inorderCat (Node x lt rt) xs = inorderCat lt (x : inorderCat rt xs)

-- the reason this is more effecient is because we are only doing one concatenation
-- instead of two

inorder' :: Tree a -> [a]
inorder' t = inorderCat t []

-- TODO: make me more efficient, too
elems :: Tree a -> [a]
elems Leaf = []
elems (Node x lt rt) = x : elems lt ++ elems rt

