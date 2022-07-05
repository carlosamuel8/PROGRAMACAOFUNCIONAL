--IN : Dois inteiros positivos, n e b (1<b<37)
-- --OUT: Representação na base b do inteiro n
-- base 25 10 == "25"
-- base 17 2 == "10001"
-- base 26 16 == "1A"
-- base 26012 36 == "K2K"

mudancaDeBase :: Int -> Int -> [Char]
mudancaDeBase 0 b = []
mudancaDeBase n b = (mudancaDeBase (div n b) b) ++ [toText(mod n  b)]
    where toText x = (['0'..'9']++['A'..'Z']) !! x          -- Totext muda o valor de x para o caractere correspondente ao valor de x


main = do
    print $ mudancaDeBase 25 10 == "25"
    print $ mudancaDeBase 17 2 == "10001"
    print $ mudancaDeBase 26 16 == "1A"
    print $ mudancaDeBase 26012 36 == "K2K"