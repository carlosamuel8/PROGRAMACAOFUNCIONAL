-- auxiliar t i xs
--     | t == length xs = "quebrar aqui"
--     | otherwise = i: auxiliar (t+1) (head xs) (tail xs)

auxiliar n xs 
    | xs == [] = []
    | otherwise = (head xs + n) : (auxiliar (head xs + n) (tail xs))

listacc xs = auxiliar 0 xs 



main = do
    print $ listacc [1,3,4]
