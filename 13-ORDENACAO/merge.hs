
mymerge [] xs = xs
mymerge xs [] = xs
mymerge (x:xs) (y:ys) = if x < y  --compara os primeiros elementos de cada lista e transforme o menor no próximo elemento, depois mescle as listas restantes.
                        then x:mymerge xs (y:ys)
                        else y:mymerge (x:xs) ys


main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ mymerge a b




-- --IN : Duas listas ordenadas
-- --OUT: A união de ambas em uma única lista ordenada
-- --OBS: Percorra cada lista uma única vez na recursão
-- merge [1,3] [7,7,9] == [1,3,7,7,9]
-- merge [7,7,9] [1,3] == [1,3,7,7,9]
-- merge [1,3,5] [4,4,6,7] == [1,3,4,4,5,6,7]
-- merge [4,4,5,6,7] [1,3] == [1,3,4,4,5,6,7]

-- ordenada (x:xs) = and [c <= y | (c,y) <- zip (x:xs) xs] 