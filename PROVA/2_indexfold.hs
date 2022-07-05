
-- existe xs n = foldl verifica False xs -- verifica se o elemento existe na lista
--   where verifica booleana x = ((x == n) || booleana)

-- procura xs n = foldr achou 0 xs   -- retorna o indice do elemento
--     where achou x acc = if x == n then 0 else 1 + acc

-- index_of xs n = if (existe xs n) == True then procura xs n else -1 

index_of xs n = if ( snd $ foldl achou (0,False) xs ) == False then -1 else fst $ foldl achou (0,False) xs    
    where achou (acc, booleana) x = if booleana == True then (acc, True) else if x == n then (acc, True) else (acc + 1, booleana)


main = do
  print $ index_of [1,2,3,4,5,6,7] 2
  print $ index_of [1,2,3,4,5,6,4] 4
  print $ index_of [1,2,3,4,5,6,7] 7
  print $ index_of [1,2,3,4,5,6,7] 8
  print $ index_of [1,2,3,4,5,6,7] 15
  print $ index_of [1,2,3,4,5,6,7] 1
  print $ index_of [] 2


-- 1
-- 3
-- 6
-- -1
-- -1
-- 0
-- -1
