-- monad,just like a functor and applicative is a typeclass
-- Monad applies a regular function (not wrapped function) to a wrapped value and 
-- returns a wrapped value.

-- YES it seems like a functor but the difference is that it doesn't always expect
-- a regular value
-- Just 4 >>= half  gives Just 2
-- Just 5 >>= half gives Nothing
-- Nothing >== half gives Nothing
-- Just 4 >>= half >>= half gives 1

-- >>= function is called 'bind' or you can call it a toilet plumber.

half x = if even x
    then Just2 (x `div` 2)
    else Nothing2

-- Lets create our own monads

-- (>>=) :: m a -> (a -> m b) -> m b

data Maybe2 a = Just2 a | Nothing2 deriving Show

-- Monad will automatically return a just for us. no need to wrap it yourself
instance Monad Maybe where
    Nothing2 >>= f = Nothing2
    Just2 val >>= f = f val

-- this code will error coz monad NEEDS both functors and applicatives.
-- you cannot use a monad without a functor and an applicative
-- so you gotta write the monad maybe2 and applicative maybe2 BEFORE the monad!

