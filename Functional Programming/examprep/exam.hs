newtype State s a = State { runState :: s -> (s, a) } 

instance Functor (State s) where
    fmap ::(a -> b) -> State s a -> State s b
    fmap f (State innerState) = State (getState innerState f)
        where
            getState :: (s -> (s ,a)) -> (a -> b) -> (s -> (s, b))
            getState innerState f = \x -> let (state, value) = innerState x in (state, f value)

instance Applicative (State s) where
    pure :: a -> State s a
    pure something = State(\s -> (s, something))
    (<*>) :: State s (a -> b) -> State s a -> State s b
    (State stateWithFunction) <*> (State oldState) = 
        State $ \s -> 
            let (newState, f) = stateWithFunction s
                (finalState, value) = oldState s
            in (finalState, f value)


instance Monad (State s) where
    return = pure
    (>>=) :: State s a -> (a -> State s b) -> State s b
    (State x) >>= f = 
        State (\s -> 
            let (s', value) = x s
                (State y) =  f value
                (finalState, finalValue) = y s'
            in  (finalState, finalValue))



data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

tree :: Tree Char
tree = Node (Node (Leaf 'a') (Leaf 'b')) (Leaf 'c')

fresh :: State Int Int
fresh = State (\n -> (n + 1, n))

mLabel :: Tree a -> State Int (Tree Int)
mLabel (Leaf x) = do 
                n <- fresh
                return (Leaf n)
mLabel (Node l r) = do
                l' <- mLabel l
                r' <- mLabel r
                return (Node l' r')

label :: Tree a -> Tree Int
label t = snd (runState (mLabel t) 0)





