pertence n xs = n `elem` xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b
    