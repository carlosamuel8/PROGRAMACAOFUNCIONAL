

rotEsq y word
    | y == 0 = word                                      --verifica se o número de rotações é 0
    | otherwise = rotEsq (y-1) (tail word ++ [head word]) -- pega o primeiro elemento da lista e coloca no final

main = do
    -- a <- readLn :: IO Int
    -- b <- getLine
    -- print $ rotEsq a b
    print $ rotEsq 0 "asdfg"
    print $ rotEsq 1 "asdfg"
    print $ rotEsq 2 "asdfg"
    print $ rotEsq 3 "asdfg"
    print $ rotEsq 4 "asdfg"
