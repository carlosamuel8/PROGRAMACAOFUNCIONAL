
contarIguais x y z 
    | x == y && y == z = 3 
    | x == y || y == z || x == z = 2 
    | otherwise = 0

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ contarIguais a b c