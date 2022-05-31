elemento n xs
    | n>=0 = xs !! n 
    | otherwise = reverse xs !! (n * (-1) -1)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b