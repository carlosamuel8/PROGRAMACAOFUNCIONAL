
inserir y xs = ordernar [x | x <- xs, x <= y] ++ [y] ++ ordernar [x | x <- xs, x > y] -- coloco os elementos de xs que sao menores que y na primeira parte concateno y eoncateno com os maiores na segunda parte
        where 
            ordernar [] = []
            ordernar x = ordernar [y | y <- tail x, head x > y] ++ [head x] ++ ordernar [z | z <- tail x, head x <= z]


main = do
    print $ inserir 7 [5,2,12] == [2,5,7,12]
    print $ inserir 1 [2,7,12] == [1,2,7,12]
    print $ inserir 10 [2,7,12] == [2,7,10,12]
    print $ inserir 15 [2,7,12] == [2,7,12,15]





