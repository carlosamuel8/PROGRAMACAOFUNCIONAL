--IN : Uma lista u, uma função fn
--OUT: Uma lista com a concatenação da aplicação da função map

concatmap a xs  = foldr (++) [] (map a xs) -- aplica a função a cada elemento da lista xs e concatena as listas

main = do
    print $ concatmap (\x -> [x,x]) [1,2,3,4] -- [1,1,2,2,3,3,4,4]
    print $ concatmap (enumFromTo 1) [1,3,5] -- [1,1,2,3,1,2,3,4,5]
    print $ concatmap (\x -> [(x,x+2,x/2)]) [1,3,5] -- [(1.0,3.0,0.5),(3.0,5.0,1.5),(5.0,7.0,2.5)]