concatena [] ys = ys
concatena xs [] = xs
concatena (x:xs) ys = x: concatena xs ys  

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b