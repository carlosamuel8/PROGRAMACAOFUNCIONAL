myreplicate x y  
    | x == 0 = []
    | otherwise = y : myreplicate (x - 1) y


main = do
  x <- readLn :: IO Int -- x  é a quantidade de vezes que vai repetir o y
  y <- readLn :: IO Int  -- y é o valor que vai ser repetido
  print $ myreplicate x y