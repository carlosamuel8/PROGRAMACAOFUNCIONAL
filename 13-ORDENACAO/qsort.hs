import Data.List

ordenar xs 
    | null xs = []
    | otherwise = minimum xs : ordenar (delete  (minimum xs) xs) -- adiciono o menor elemento e o elimino da lista e chamo a função novamente


main = do
    a <- readLn :: IO [Int]
    print $ ordenar a


--IN : Lista u de objetos ordenáveis
--OUT: Lista ordenada das chaves de u pelo método de ordenação rápida
-- qsort [7,3,5,7,8,4] == [3,4,5,7,7,8]
-- qsort [7,3,5,7,8,4,4] == [3,4,4,5,7,7,8]
-- qsort [7,3,5,7,8,4,5] == [3,4,5,5,7,7,8]




