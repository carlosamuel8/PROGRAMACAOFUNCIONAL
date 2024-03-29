
expoentes dividido divisor = length $ filtro $ takeWhile (\(x,y) -> x /= 0) $ iterate fn (dividido, mod dividido divisor) -- filtro para eliminar os zeros da lista
            where   fn (x,y) = (div x divisor,  mod (div x divisor) divisor) 
                    filtro [] = []                            
                    filtro ((x,y):xs)
                        | y == 1 = filtro xs
                        | otherwise = (x,y) : filtro xs 
main = do
    print $ expoentes 7 2 == 0
    print $ expoentes 4 2 == 2
    print $ expoentes 8 2 == 3
    print $ expoentes 24 2 == 3
    print $ expoentes 1024 2 == 10
    print $ expoentes 150 5 == 2