maioresQue n xs = filter(> n) xs




main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b

