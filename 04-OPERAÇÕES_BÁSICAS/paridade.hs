paridade xs = odd (length (filter (\x -> x == True) xs) )


main = do
    a <- readLn :: IO [Bool]
    print $ paridade a