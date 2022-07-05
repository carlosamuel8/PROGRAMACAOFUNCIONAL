--Escreva uma função reduce que recebe uma tupla(numerador/denomidador) e devolve a fração após redução.

mdc a b 
    | mod a b == 0 = b          -- FUNÇÃO AUXILIAR PARA VERIFICAR O MDC
    | mod b a == 0 = a          
    | a > b = mdc b (mod a b)   
    | a < b = mdc a (mod b a)

reduce (x,y) = (x `div` g, y `div` g) --retotna x e y divididos pelo mdc
    where g = mdc x y

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ reduce (a,b)
