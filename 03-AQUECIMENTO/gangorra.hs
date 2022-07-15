gangorra p1 c1 p2 c2 
    | p1 * c1 == p2 * c2 = 0
    | p1 * c1 < p2 * c2 = 1
    | otherwise = (-1)


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d