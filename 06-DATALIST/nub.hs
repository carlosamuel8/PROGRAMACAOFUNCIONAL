mynub [] = []
mynub (x:xs) = x : mynub (filter (/=x) xs) -- adicionar o primeiro elemento da lista e desconsiderar as repetições depois concateno com outra chamada da função

main = do
    a <- readLn :: IO [Int]
    print $ mynub a

