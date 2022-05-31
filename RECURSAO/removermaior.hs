--removermaior xs = [x | x <- xs, x <= (maximum xs)]


removerMaior [] = []
removerMaior [x] = []
removerMaior (x:xs) = if x > (maximum (x:xs)) then removerMaior xs else x: (removerMaior xs)


main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a