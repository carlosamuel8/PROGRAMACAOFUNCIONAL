auxiliar x y 
    | x*x > y = False 
    | x*x == y = True 
    | otherwise = auxiliar (x+1) y 


quadperf n = auxiliar 1 n  


main = do
    a <- readLn :: IO Int
    print $ quadperf a