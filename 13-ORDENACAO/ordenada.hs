ordenada (x:xs) = and [c <= y | (c,y) <- zip (x:xs) xs] 



main = do
    a <- readLn :: IO [Int]
    print $ ordenada a
 
--   1 3 2 6                    o zip vai juntar em tuplas, vejo se c é menor que y e se sim retorna True, se não retorna False.
--   3 2 6                      o and vai ver se todos os elementos são True, se sim retorna True, se não retorna False.
--   13 32 26
-- and   true false true