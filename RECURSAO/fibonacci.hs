fib n 
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fib (n-1) + fib (n-2)

main = do
    a <- readLn :: IO Int
    print $ fib a