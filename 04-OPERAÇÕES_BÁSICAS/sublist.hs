sublist a b xs 
    | b < 0 = sublist (mod (length xs + a) (length xs)) (length xs) (take (length xs + b) xs)
    | a < 0 = drop (length xs + a) (take b xs)
    | otherwise = drop a (take b xs)


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c