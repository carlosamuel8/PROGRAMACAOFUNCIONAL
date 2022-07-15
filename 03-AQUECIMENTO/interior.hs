
interior xs = drop 1 $ reverse (drop 1 (reverse xs)) 


main = do
    a <- readLn :: IO [Int]
    print $ interior a