--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita
-- rotDir 0 "asdfg" == "asdfg"
-- rotDir 1 "asdfg" == "gasdf"
-- rotDir 2 "asdfg" == "fgasd"
-- rotDir 3 "asdfg" == "dfgas"
-- rotDir 4 "asdfg" == "sdfga"
-- rotDir 5 "asdfg" == "asdfg"


rotDir y word 
    | y == 0 = word
    | otherwise = rotDir (y-1) lastWord 
        where lastWord = last word : init word      -- pega o ultimo elemento da lista e coloca no inicio da lista



main = do
    -- a <- readLn :: IO Int
    -- b <- getLine
    -- print $ rotDir a b
    print $ rotDir 0 "asdfg"
    print $ rotDir 1 "asdfg"
    print $ rotDir 2 "asdfg"
    print $ rotDir 3 "asdfg"
    print $ rotDir 4 "asdfg"
