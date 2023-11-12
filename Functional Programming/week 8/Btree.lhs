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

To prove: map f (tips t) = tips (mapBtree f t) for all f,t
map f (tips t) = tips (mapBtree f t) 

base case: if t = Tip a

    map f ([a]) = tips (Tip f a) (Induction hypothesis)
    map f ([a]) = tips (Tip b)
    map f ([a]) = [b]
        [f . a] = [b]
            [b] = [b]


induction step: if t = Bin t1 t2

                    map f (tips (Bin t1 t2)) = tips (Bin (mapBtree f t1) (mapBtree f t2)) 
                  map f (tips t1 ++ tips t2) = tips (Bin (mapBtree f t1) (mapBtree f t2)) 
          map f (tips t1) ++ map f (tips t2) = tips (Bin (mapBtree f t1) (mapBtree f t2))
tips (mapBtree f t1) ++ tips (mapBtree f t2) = tips (Bin (mapBtree f t1) (mapBtree f t2))
  tips (Bin (mapBtree f t1) (mapBtree f t2)) = tips (Bin (mapBtree f t1) (mapBtree f t2))
  
with induction hypothesis and k and k + 1

To prove: map f (tips t) = tips (mapBtree f t) for all f,t

base case: if t = Tip a

    map f ([a]) = tips (Tip f a) (Induction hypothesis)
    map f ([a]) = tips (Tip b)
    map f ([a]) = [b]
        [f . a] = [b]
            [b] = [b]

map f (tips (Bin t1 t2)) = tips (Bin (mapBtree f t1) (mapBtree f t2)) //k -> induction hypothesis
where t1 = Bin t3 t4 and t2 = Bin t5 t6 //k + 1
where t3, t4, t5, t6 = Tip a
map f (tips (Bin (Bin (Tip a) (Tip a)) (Bin (Tip a) (Tip a)))) = tips (Bin (mapBtree f t1) (mapBtree f t2)) 

            
