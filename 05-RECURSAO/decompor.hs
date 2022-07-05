-- Escreva uma função depara que recebe um inteiro e retorna uma lista com os dígitos divididos.

-- Crie usando recursão
-- Crie utilizando unfoldr ou iterate
-- separa 0 == [0]
-- separa [123] == [1,2,3]
-- separa [51234] == [5,1,2,3,4]


auxiliar x
    | x == 0 = [0]
    | x < 10 = [x]
    | otherwise = (x `mod` 10) : (auxiliar (x `div` 10))  -- retotna ao contrario


separa xs = reverse (auxiliar xs)                           -- ordeno

main = do 
    print $ separa 0 == [0]
    print $ separa 123 == [1,2,3]
    print $ separa 51234 == [5,1,2,3,4]