-- A functor is a typeclass. All it does is apply a function to a wrapper value
-- and gives us the output in wrapped value back.
-- fmap(+3) (Just 4) gives 7 and is identical to (+3) <$> (Just 4)

-- class Functor f where
    --fmap :: (a-> b) -> f a -> f b

--Maybe is a functor that defines how fmap works with fmap (+3) (Just 5) or fmap(+3) (Nothing)
-- Lists are functors too, since fmap (+3) [1,2,3] = [4,5,6] = map (+3) [1,2,3]
-- instance Functor [] where
--     fmap = map

--Functions are functors too! 
-- let foo = fmap (+3) (+2)
-- foo 10 gives 15! 

data Maybe2 a = Just2 a | Nothing2 deriving Show


instance Functor Maybe2 where
    fmap func (Just2 a) = Just2 (func a)
    fmap func (Just2 Nothing2) = Nothing2  