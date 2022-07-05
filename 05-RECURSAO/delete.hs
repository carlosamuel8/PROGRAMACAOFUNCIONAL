--IN : Valor x e lista u
--OUT: Versão de u removendo primeira aparição de x
-- removida.
-- deletee 5 [] == []
-- deletee 1 [1] == []
-- deletee 4 [1,3,4] == [1,3]
-- deletee 3 [4,3,1,3] == [4,1,3]
-- deletee 5 [1,5,6,9] == [1,6,9]

myDelete y [] = [] 
myDelete y (x:xs)
        | y == x    = xs                       
        | otherwise = x : myDelete y xs     


main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myDelete a b