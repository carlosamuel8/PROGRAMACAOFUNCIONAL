min2 a b 
    | a < b = a
    | otherwise = b

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b