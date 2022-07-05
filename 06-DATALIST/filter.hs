myFilter _ [] = []  
myFilter f (x:xs)  
    | f x = x : myFilter f xs  -- se o elemento for verdadeiro, ele é adicionado a lista
    | otherwise = myFilter f xs  


main = do
    print $ myFilter (>5) [0..10] == [6,7,8,9,10]
    print $ myFilter (odd) [0..10] == [1,3,5,7,9]