--- não consgui fzaer

verificaprimo k = length [ x | x <- [2..k], k `mod` x == 0] == 1   

expoentes dividido divisor = length $ filtro $ takeWhile (\(x,y) -> x /= 0) $ iterate fn (dividido, mod dividido divisor) -- filtro para eliminar os zeros da lista
            where   fn (x,y) = (div x divisor,  mod (div x divisor) divisor) 
                    filtro [] = []                            
                    filtro ((x,y):xs)
                        | y == 1 = filtro xs
                        | otherwise = (x,y) : filtro xs

fatores  x = ...


main = do
    print $ fatores 36  == [(2,2),(3,2)]
    print $ fatores 50 == [(2,1),(5,2)]
    print $ fatores 78  == [(2,1),(3,1),(13,1)]
    print $ fatores 60  == [(2,2),(3,1),(5,1)]
    print $ factors 3361743 == [(3,4),(7,3),(11,2)]