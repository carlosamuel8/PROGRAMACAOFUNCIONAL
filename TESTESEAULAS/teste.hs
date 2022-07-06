-- soma_impares xs = foldr isimpar 0 xs
--     where isimpar acc x = if x `mod` 2 /= 0 then (acc + x) else acc  



contar_impares xs = foldr isimpar 0 xs
    where isimpar  x acc = acc + if mod x 2 /= 0 then 1 else 0


soma_impares xs = foldr acheiimpar 0 xs
    where acheiimpar x acc = if mod x 2 /= 0 then (acc + x) else acc


igual (acc, y) j = if y == j then (acc+1, y) else (acc, y)
 

somaLista [] = 0
somaLista (x:xs) = x + somaLista xs


somaLista2 xs   
    | length xs == 0 = 0
    | otherwise = (head xs) + somaLista2 (tail xs)

tamanhoLista [] = 0
tamanhoLista (_:xs) = 1 + tamanhoLista xs  

qsort [] = []
qsort (x:xs) =
    qsort menores ++ [x] ++ qsort maiores 
    where 
        menores = [y | y<- xs, y <= x]
        maiores = [y | y<- xs, y >= x]

paresmult3 xs = [x | x<- xs, mod x 2 == 0 && mod x 3 == 0 ] 

minhaconcat xss = [x | xs <- xss, x <-xs]

divisores n = [x | x <-[1..n], mod n x == 0] 
primo x = divisores x == [1, x]



main = do
    --print $ somaLista2 [1..4]
    --print $ qsort [1,3,2,9,8,5,4,2,4,5]
   -- print $ paresmult3 [1..30]
    --print $ minhaconcat [[1..6], [1..5]]
    print $ primo 8

   

