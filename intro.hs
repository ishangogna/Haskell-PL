import Data.List
import System.IO

--Single line comment --
{-
Multiline Comment
-}

{-
    DataTypes : 
    Int : -2^63 to +2^63  i.e. This is bounded
    Integer : unbounded! it can be as big as your memory can hold. HUGE
    Float
    Double : same as float, but has precision upto 11 points. use double.
    Bool
    Char : sincle unicode characters denoted by single quotes
    tuples
    always5 :: Int    always stays 5


-}
maxInt = maxBound :: Int  --will output the max size in the terminal--
minInt = minBound :: Int


sumOfNums = sum[1..100]

--Standard operators--
plus = 5+4
sub = 5-4
mult = 5*4
divn = 6/2

--prefix & infix operators--
prefixModEx = mod 5 4
infixModEx = 5 `mod` 4


