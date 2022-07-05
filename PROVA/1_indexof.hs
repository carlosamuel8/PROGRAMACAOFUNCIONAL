index_of [] n = -1
index_of (x:xs) n
  | x == n = 0
  | otherwise = if (1 + index_of xs n) == 0 then -1 else 1 + index_of xs n

main = do
    print $ index_of [] 6
    

