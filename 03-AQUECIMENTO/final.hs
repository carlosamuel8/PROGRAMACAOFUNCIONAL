final n xs = reverse (take n (reverse xs))

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b