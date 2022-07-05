import Data.Maybe

filterMaybe :: Eq b => [Maybe b] -> [b]
filterMaybe xs = [x | Just x <- xs]

countNothing xs = length [x | x <- xs, isNothing x]

main = do
  print $ filterMaybe [Just 5,Nothing,Just 7,Nothing]
  print $ countNothing [Nothing, Just 4, Nothing] == 2