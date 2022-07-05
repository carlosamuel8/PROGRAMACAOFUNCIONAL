intercal x [] = x --verifica se a  segunda lista é vazia
intercal [] x = x --verifica se a  primeira lista é vazia
intercal (a:xs) (b:ys) = a: b: intercal xs ys --pega o primeiro de cada lista e juunta


main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b