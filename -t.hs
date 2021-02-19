import Data.List
import System.IO

{--
  -t gives you the definition of the function. so you know how to construct it
  ex : 
  t sqrt
    sqrt :: Floating a => a -> a
    So sqrt actually expects a to be a floating point number. 
    It will receive a and pop out a

    SO YOU GOTTA CONVERT AN INTEGER TO FLOAT 
--}

num9 = 9 :: Int  --we are declaring num9 to be an Int --
sqrtOf9 = sqrt(fromIntegral num9)  -- we convert int to float --


