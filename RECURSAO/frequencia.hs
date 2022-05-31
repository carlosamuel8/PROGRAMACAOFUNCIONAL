frequencia1 n xs = length $ filter (==n) xs

frequencia2 n xs = sum [ 1 | x<-xs, x==n]

frequencia3 n [] = 0
frequencia3 n (x:xs) = (if x==n then 1 else 0) + frequencia3 n xs


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia3 a b

   