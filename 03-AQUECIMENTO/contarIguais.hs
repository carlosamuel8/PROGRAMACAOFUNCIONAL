

contarIguais x y z 
    | x == y && y == z = 3 
    | x == y || y == z || x == z = 2 
    | otherwise = 0