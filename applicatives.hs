-- Applicatives apply wrapped functions to wrapped values.
-- i.e, in applicatives, the values and the functions BOTH are in contexts.

-- Control.Applicatives defines a <*> that handles this.
-- i.e, Just (+3) <*> Just 2 == Just 5

-- (*2), (+3)] <*> [1, 2, 3]
-- [2, 4, 6, 4, 5, 6]


--lets start out by making our own implementation of maybe so we can mess around.
data Maybe2 a = Just2 a | Nothing2 deriving Show

instance Applicative Maybe2 where
    --applicatives have pure and <*> methods. pure is the simplest output possible
    pure : Just2
    Just2 f <*> (Just2 j) = Just2 (f j)

