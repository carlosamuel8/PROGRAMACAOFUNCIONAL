contar x xs = foldl achou 0 xs
  where achou cont y = if x==y then (cont+1) else cont
----------------------------------------------------------
somar_todos xs = foldl somando 0 xs
  where somando cont x = cont+x
----------------------------------------------------------
menor xs = foldl procurar (head xs) xs
  where procurar menor x = if x<menor then x else menor
----------------------------------------------------------
existe x xs = foldl verifica False xs
  where verifica fouv y = ((y == x) || fouv)
--------------------------------------------------------
impares :: (Foldable t, Integral a) => t a -> [a]
impares xs = foldl isImpar [] xs
  where isImpar lista x = if mod x 2 /= 0 then (x:lista) else lista
--------------------------------------------------------
verifica (acc, x) y = if x == y then (acc+1, y) else (acc, y)
encontrar_repetido (x:xs) = fst $ foldl verifica (0, x) xs
--------------------------------------------------------
eh_primo x = foldl isDiv True [2..x-1]
  where isDiv valor y = mod x y /= 0 && valor 
--------------------------------------------------------

main = do
  print $ contar 5 [1,2,5,5] 
  print $ somar_todos [1,2,5,5]
  print $ menor [3,2,1,-1]
  print $ existe 0 [3,2,0,-1] 
  print $ impares [3,2,0,9] 
  print $ encontrar_repetido [0,0,1,0] 
  print $ eh_primo 37