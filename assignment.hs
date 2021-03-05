module FibStateful
 (
 FibState (..),
 FibStateful,
 getPreviousNumber,
 setPreviousNumber,
 getPreviousPreviousNumber,
 setPreviousPreviousNumber,
 getCurrentNumber,
 setCurrentNumber,
 ) where

data FibState = FibState {
 previousNumber :: Integer,
 previousPreviousNumber :: Integer,
 currentNumber :: Integer
}
type FibStateful a = FibState -> (FibState, a)

getPreviousNumber :: FibStateful Integer
getPreviousNumber oldstate =
 (oldstate, previousNumber oldstate)
setPreviousNumber :: Integer -> FibStateful ()
setPreviousNumber newval oldstate =
 ( FibState {previousNumber = newval,
 previousPreviousNumber=previousPreviousNumber oldstate,
 currentNumber=currentNumber oldstate}, () )
getPreviousPreviousNumber :: FibStateful Integer
getPreviousPreviousNumber oldstate =
 (oldstate, previousPreviousNumber oldstate)
setPreviousPreviousNumber :: Integer -> FibStateful ()
setPreviousPreviousNumber newval oldstate =
 ( oldstate {previousPreviousNumber = newval,
 previousNumber=previousNumber oldstate,
 currentNumber=currentNumber oldstate}, () )
getCurrentNumber :: FibStateful Integer
getCurrentNumber oldstate =
 (oldstate, currentNumber oldstate)
setCurrentNumber :: Integer -> FibStateful ()
setCurrentNumber newval oldstate =
 ( oldstate {currentNumber = newval,
 previousPreviousNumber=previousPreviousNumber oldstate,
 previousNumber=previousNumber oldstate}, () )