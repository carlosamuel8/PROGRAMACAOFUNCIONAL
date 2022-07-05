max3 x y z 
    | x >= y && x >=z = x
    | y >= x && y >= z = y
    | otherwise = z



main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c
