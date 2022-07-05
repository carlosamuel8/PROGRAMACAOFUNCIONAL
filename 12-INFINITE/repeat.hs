myrepeat x = x : myrepeat x
 

main = do
  x <- readLn :: IO Int
  y <- readLn :: IO Int
  print $ take y $ myrepeat x -- imprime o elemento que queremos pegar (x) e o quantidade que queremos pegar (2)