--removermaior xs = [x | x <- xs, x <= (maximum xs)]
myDelete y [] = [] 
myDelete y (x:xs)
        | y == x    = xs                       
        | otherwise = x : myDelete y xs     

removerMaior xs = myDelete (maximum xs) xs 

main = do
    -- a <- readLn :: IO [Int]
    -- print $ removerMaior a
    print $ removerMaior [1] == [] 
    print $ removerMaior [1,3] == [1] 
    print $ removerMaior [1,3,5] == [1,3] 
    print $ removerMaior [1,3,5,2] == [1,3,2] 