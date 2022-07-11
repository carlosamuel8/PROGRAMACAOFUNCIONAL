import Control.Monad ( replicateM )

{--
1) [String] -> [(Int, Int)] criar vetor de tuplas
2) [(Int, Int)] -> [(Int,(Int, Int))] grudar tupla no indice
3) filtrar as jogadas desclassificadas
4) pegar o melhor dos elementos -> fold, recursão
--}

{--
desempacota :: String -> (Int, Int)
desempacota line = (a, b)
      where
          tokens = words line
          a = toInt $ head tokens
          b = toInt $ tokens !! 1
--}
toInt :: String -> Int
toInt x = read x :: Int

desempacota :: String -> (Int, Int)
desempacota line = (a, b)
      where
          [a, b] = map toInt . words $ line

-- vet
-- ["9 12", "11 13", "10 11"]
processa :: [String] -> String
processa vet = show map $ desempacota vet 

main :: IO ()
main = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"