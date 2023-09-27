module Tree where

data Tree a = Leaf | Node a (Tree a) (Tree a)
  deriving (Show, Eq)

{----------- exercise 4.3 -------------}

leaves :: Tree a -> Int
leaves Leaf = 1
leaves (Node _ lt rt) = leaves lt + leaves rt

nodes  :: Tree a -> Int
nodes Leaf = 0
nodes (Node _ lt rt) = 1 + nodes lt + nodes rt

height :: Tree a -> Int
height Leaf = 0
height (Node _ lt rt) = 1 + max (height lt) (height rt)

elems  :: Tree a -> [a]
elems Leaf = []
elems (Node k lt rt) = k : elems lt ++ elems rt

isSearchTree :: (Ord a) => Tree a -> Bool
isSearchTree Leaf = True
isSearchTree (Node k lt rt) = isSearchTree lt && isSearchTree rt && go k lt rt
  where
    go :: (Ord a) => a -> Tree a -> Tree a -> Bool
    go _ Leaf Leaf = True
    go k' Leaf (Node k'' _ _) = k' < k''
    go k' (Node k'' _ _) Leaf = k' > k''
    go k' (Node k'' _ _) (Node k''' _ _) = k' > k'' && k' < k'''

{----------- exercise 4.4 -------------}

member :: (Ord a) => a -> Tree a -> Bool
member _ Leaf = False
member x (Node k lt rt)
  | x == k = True
  | x < k = member x lt
  | otherwise = member x rt

insert :: (Ord a) => a -> Tree a -> Tree a
insert x Leaf = Node x Leaf Leaf
insert x (Node k lt rt)
  | x == k = Node k lt rt
  | x < k = Node k (insert x lt) rt
  | otherwise = Node k lt (insert x rt)

delete :: (Ord a) => a -> Tree a -> Tree a
delete _ Leaf = Leaf
delete x (Node k lt rt)
  | x == k = deleteRoot (Node k lt rt)
  | x < k = Node k (delete x lt) rt
  | otherwise = Node k lt (delete x rt)
  where
    deleteRoot :: (Ord a) => Tree a -> Tree a
    deleteRoot (Node _ Leaf rt) = rt
    deleteRoot (Node _ lt Leaf) = lt
    deleteRoot (Node _ lt rt) = Node k' lt (delete k' rt)
      where
        k' = leftMost rt
        leftMost :: (Ord a) => Tree a -> a
        leftMost (Node k Leaf _) = k
        leftMost (Node _ lt _) = leftMost lt

fromList :: (Ord a) => [a] -> Tree a
fromList = foldr insert Leaf

{----------- exercise 4.5 -------------}

inOrder :: Tree a -> [a]
inOrder Leaf = []
inOrder (Node k lt rt) = inOrder lt ++ [k] ++ inOrder rt

fromAscList :: [a] -> Tree a
fromAscList [] = Leaf
fromAscList xs = Node k (fromAscList lt) (fromAscList rt)
  where
    (lt, k:rt) = splitAt (length xs `div` 2) xs

breadthFirst :: Tree a -> [a]
breadthFirst tree = go [tree]
  where
    go [] = []
    go (Leaf:xs) = go xs
    go (Node k lt rt:xs) = k : go (xs ++ [lt, rt])


{----------- exercise 4.6 -------------}

{- BONUS: a tree pretty printer; the recursive structure of this function
 - is prety simple, but it is a fiddly function to write if you want it to
 - produce an actually nice tree. -}

{-
layout :: (Show a) => Tree a -> String
layout tree = go "" ("","","") tree
  where
  width = maximum (0:[ length (show e) | e <- elems tree ])
  pad s = let s' = show s in replicate (width-length s') '-' ++ s'
  fill  = replicate width ' '

  --go pre (_,_,preN) Leaf = pre ++ preN ++ "·\n" -- this explicitly draws the leaves
  --go _   _          Leaf = ""                   -- this vertically compresses the tree
  go pre _          Leaf = pre ++ "\n"            -- use more vertical space, but don't draw leaves
  go pre (preR,preL,preN) (Node k lt rt)
    = go (pre ++ preR) (hfill,v_bar,rbend) rt
      ++ (pre ++ preN) ++ pad k ++ junct ++
      go (pre ++ preL) (v_bar,hfill,lbend) lt

  junct = "┤\n"         -- change to "+\n" if no Unicode
  hfill = fill ++ "  "
  rbend = fill ++ "╭─"  -- change to "/-" if no Unicode
  v_bar = fill ++ "│ "  -- change to "| " if no Unicode
  lbend = fill ++ "╰─"  -- change to "\\-" if no Unicode

putTree :: (Show a) => Tree a -> IO()
putTree tree = putStr (layout tree)
-}
