{-# LANGUAGE FlexibleContexts #-}
caso1 xs = sum( map (const 1) xs)

caso2 xs 
    | null xs = 0
    | otherwise = 1 + caso2(tail xs)


-- nao consegui caso 3

main = do
    a <- readLn :: IO [Int]
    print $ caso2 a