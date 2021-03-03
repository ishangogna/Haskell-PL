import Data.List
import System.IO

list1 = [1,2,3]
list2 = [4,5,6]

-- Concatinate using ++ --
list3 = list1 ++ list2

-- you can combine numbers to a list --
-- this generates [2,3,7] -- 
list4 = 2 : 3 : 7 : []

--you can have multi lists --
list5 = [[1,2,3,4],[2,3]]

--you can also add a number to the front of another list using : --
list6 = 2:list1

--length--
lenOfList = length list6

--reverse--
revList = reverse list6

--Null checks if list is empty--
isListEmpty = null list6

--indexing is done via !! --
firstElement = list6 !! 0
secondElement = list6 !! 1

--first value is accessed by head and last value by tail--
firstValue = head list6
lastValue = last list6

--init returns everything in the list EXCEPT last value--
exceptLast = init list6


--if you want first 3 values in the list --
first3Values = take 3 list3

--now to access the last 3 dropped values --
removed3Values = drop 3 list3

--is 3 in list? can be done using infix 'elem'--
is3inList = 3 `elem` list3

--minimum and maximum value in list --
maxValue = maximum list3
minValue = minimum list3

--generate list from 0 to 10--
zeroToTen = [0..10]
productOfThisList = product zeroToTen

--generate even or odd list or a random list too! --
evenList = [2,4..20]
oddList = [1,3..21]
randomList = [5,10..50]
alphabetList = ['a','c'..'z']

{- we can also generate an infinite list. but haskell will not
    actually generate it in real if we dont ever try to access it.
        This is what is meant by haskell is 'lazy'
        -}

--you can also repeat values. the below takes only first 10 values--
repeat2s = take 10 (repeat 2)

