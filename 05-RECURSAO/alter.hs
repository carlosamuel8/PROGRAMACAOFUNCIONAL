altera_desordenado n 
    | n==0 = []
    | otherwise =  n: n*(-1): altera_desordenado (n-1)

alter x = reverse $ altera_desordenado x

main = do
    a <- readLn :: IO Int
    print $ alter a