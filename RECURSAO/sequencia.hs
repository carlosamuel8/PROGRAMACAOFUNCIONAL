sequencia x y 
    | x == 0 = []
    | otherwise = y: sequencia (x-1) (y+1)


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b
