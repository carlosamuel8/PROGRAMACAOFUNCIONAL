import Data.Char

firstletra :: String -> String
firstletra [] = []
firstletra (head:tail) = toUpper head : restoMin tail -- toupper pega a orimeira letra e colcoa maiuscula, chamo o restoMin para pegar o resto da string e colocar em minuscula
     where  restoMin [] = []
            restoMin (head:tail) = toLower head : restoMin tail

titulo frase = unwords [firstletra w | w <- words frase] -- pego cada palavra da frase e chamo a função firstletra para colocar a primeira letra em maiuscula
                                                        -- unwords coloca as palavras da frase em uma string separada por espaço
main = do
    a <- getLine
    print $ titulo a