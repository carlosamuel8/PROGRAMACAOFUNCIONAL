intersec xa xb = [ x | x <- xa, y <- xb, x == y]

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b