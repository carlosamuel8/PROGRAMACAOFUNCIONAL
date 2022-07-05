
vetFib 0 = []
vetFib 1 = [0]
vetFib 2 = [0,1]
vetFib n = (vetFib (n-1)) ++ [last (vetFib (n-1)) + last (vetFib (n-2))] -- retorna a soma dos dois ultimos elementos de vetfib(n-1)


main = do
    a <- readLn :: IO Int
    print $ vetFib a

