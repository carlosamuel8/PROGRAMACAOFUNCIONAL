
-- Escreva a função map utilizando recursão, dada uma função e uma lista

mymap _ []= []
mymap f (x:xs) = f x : mymap f xs   -- adiciono o resultado de f a lista e chamo a função novamente para o resto do vetor


main = do
    print $ mymap (+1) [1, 2, 3] == [2, 3, 4]
    print $ mymap odd [6,2,1] == [False, False, True]