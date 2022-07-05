indices v xs = [i | (x,i) <- zip xs [0..], x == v] -- coloco numa tupla o valor e o indice e o indice procurado
                                                   -- se o valor for igual ao valor procurado, coloco o indice na lista

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b

