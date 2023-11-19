> module Btree where
>
> data Btree a = Tip a | Bin (Btree a) (Btree a)
>
> mapBtree :: (a -> b) -> Btree a -> Btree b
> mapBtree f (Tip a)     = Tip (f a)
> mapBtree f (Bin t1 t2) = Bin (mapBtree f t1) (mapBtree f t2)

> tips :: (Btree a) -> [a]
> tips (Tip x) = [x]
> tips (Bin as bs) = tips as ++ tips bs

To prove:   map f (tips t) = tips (mapBtree f t), for all f,t

Base case:  t is an arbitrary tip (Tip a)
            So it needs to be proven that: map f (tips (Tip a)) = tips (mapBtree f (Tip a)), for all f

        map f (tips (Tip a)) =
        map f [a] =
        [f a] =
        tips (Tip (f a)) =
        tips (mapBtree f (Tip a))

k case:     t is an arbitrary bin (Bin (Btree a) (Btree a))
            In the rest of the proof (Bin (Btree a) (Btree a)) will be denoted as BBB, this will save a lot of room
            This would make our induction hypotheses (IH): map f (tips BBB) = tips (mapBtree f BBB), for all f

k+1 case:   t is an arbitrary bin made out of arbitrary bins (Bin BBB BBB)
            So it needs to be proven that: map f (tips (Bin BBB BBB)) = tips (mapBtree f (Bin BBB BBB))

        map f (tips (Bin BBB BBB)) =
        map f (tips BBB ++ tips BBB) =
        map f (tips BBB) ++ map f (tips BBB) =
    IH  tips (mapBtree f BBB) ++ tips (mapBtree f BBB) =
        tips (Bin (mapBtree f BBB) (mapBtree f BBB)) =
        tips (mapBtree f (Bin BBB BBB))           
