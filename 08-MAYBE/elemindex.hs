
myelemIndex y xs = if not (null resp) then head (resp) 
                   else Nothing
    where
        resp = [Just c | (c, d) <- zip [0 ..] xs, d == y]   --pega (c,d) do zip de uma lista infinita e b e retorna c quando d for igual a a


main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ myelemIndex a b