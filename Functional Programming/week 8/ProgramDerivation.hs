module Expression where 

data Tree a = Leaf | Node a (Tree a) (Tree a)
  deriving (Show) 

skewed :: Integer -> Tree ()
skewed 0 = Leaf 
skewed n = Node () (skewed (n-1)) Leaf

inorder :: Tree а -> [а] 
inorder Leaf = []
inorder (Node х ltree rtree) = inorder ltree ++ [х] ++ inorder rtree

inorderCat :: Tree a -> [a] -> [a] 
inorderCat Leaf xs = xs 
inorderCat (Node x l r) xs = inorderCat l (x : (inorderCat r xs)) 

inorder' :: Tree a -> [a]
inorder' t = inorderCat t [] 

elems :: Tree a -> [a]
elems Leaf = []
elems (Node x lt rt) = x : (elems lt ++ elems rt)

elemsCat :: Tree a -> [a] -> [a] 
elemsCat Leaf xs = xs 
elemsCat (Node x l r) xs = x : (elemsCat l (elemsCat r xs))

elems' :: Tree a -> [a] 
elems' = (`elemsCat` [])
