reverso [] = []
reverso [x] = [x]
reverso xs = last xs: reverso (init xs)

main = do
    a <- readLn :: IO [Int]
    print $ reverso a