--IN : Uma lista qualquer u e uma lista de posições P
--OUT: Lista das chaves de u cujas posições estão em P
-- selec "abcdef" [0,3,2,3] == "adcd"

selec palavra vetor = [palavra !! i | i <- vetor] --pega as posições da palavra que estão em vetor

main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b
   