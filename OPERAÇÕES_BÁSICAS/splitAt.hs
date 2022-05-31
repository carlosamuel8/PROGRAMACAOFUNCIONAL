divide xs n = (take n xs, drop n xs)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b