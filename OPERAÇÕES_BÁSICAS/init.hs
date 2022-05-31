primeiros  xs
    | length xs == 1 = []
    | otherwise = init xs


main = do
    a <- readLn :: IO [Int]
    print $ primeiros a