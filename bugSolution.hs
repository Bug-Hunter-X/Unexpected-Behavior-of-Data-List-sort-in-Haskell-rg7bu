```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let as = [1,3,5,2,4,6]
  let bs = sort as
  print bs -- Output: [1,2,3,4,5,6]

  let cs = []
  let ds = sort cs
  print ds  -- Output: []

  let es = ["apple","banana","cherry"]
  let fs = sort es
  print fs -- Output: ["apple","banana","cherry"]

  -- Example with custom data type and comparing
  data Person = Person { name :: String, age :: Int } deriving (Show)
  let people = [Person "Alice" 30, Person "Bob" 25, Person "Charlie" 35]
  let sortedPeople = sortOn comparing age people
  print sortedPeople

  -- Another example for improved testing
  let complexData = [(1, "a"), (3, "c"), (2, "b")]
  let sortedComplexData = sortOn ("(",',') -> show (x,y) (x, y)
  print sortedComplexData
```