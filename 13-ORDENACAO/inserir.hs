
inserir y xs = [x | x <- xs, x <= y] ++ [y] ++ [x | x <- xs, x > y] -- adiciono os menores que y, depois y e depois os maiores que y

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b




