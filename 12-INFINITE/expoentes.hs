
--está errada
expoentes y x 
    | y == 1 = 1
    | x == 0 = 0
    | y `mod` x == 0 = 1 + expoentes (y `div` x) x
    | otherwise = 0

main = do
    print $ expoentes 7 2 == 0
    print $ expoentes 4 2 == 2
    print $ expoentes 8 2 == 3
    print $ expoentes 24 2 == 3
    print $ expoentes 1024 2 == 10
    print $ expoentes 150 5 == 2