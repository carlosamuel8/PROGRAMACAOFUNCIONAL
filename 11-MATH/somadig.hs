somadig 0 = 0
somadig x = (x `mod` 10) + somadig (x `div` 10) -- pega o resto da divisao por 10 e soma com o resultado da divisao por 10

main = do 
      a <- readLn :: IO Int
      print $ somadig a

