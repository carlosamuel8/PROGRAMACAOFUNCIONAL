
produtoescalar xs ys = sum [x*y | (x, y) <- zip xs ys] 
                                                         -- zip xs ys retorna uma lista de tuplas, onde cada tupla é uma combinação de dois elementos de xs e ys.
                                                        -- a lista de tuplas é então usada para gerar uma lista de produtos
                                                        -- sum calcula a soma de todos os elementos de uma lista.

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoescalar a b