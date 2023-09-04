module Exercise1_4 where

double :: Num a => a -> a
double x = incr (incr 0)
    where incr y = x + y

{- 1.4.1

    evaluate double 5:

    double x = incr (incr 0)
    double x = incr + (x + 0)  =>{ definition of incr y }
    double x = x + (x + 0)     =>{ definition of incr y }

    double 5 = 5 + (5 + 0)     =>{ fill in 5 for x }
    double 5 = 5 + 5           =>{ definition of + }
    double 5 = (5 + 5)         =>{ definition of + }
    double 5 = 10              =>{ definition of + }
-}

{- 1.4.2

    double x = incr (incr 0)
    double x = incr + (x + 0)  => applicative order
    double x = x + (x + 0)     => applicative order

    double 5 = 5 + (5 + 0)
    double 5 = 5 + 5           => reduction
    double 5 = (5 + 5)         => reduction
    double 5 = 10              => reduction



-}