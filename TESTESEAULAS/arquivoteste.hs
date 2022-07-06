import System.Win32 (COORD(x))
soma a b = a + b

{-
fibonacci x
    | x < 2 = 1
    | otherwise = fibonacci (x - 1) + fibonacci (x - 2)
-}




numero_de_digitos x
    | x < 10 = 1
    | otherwise = 1 + numero_de_digitos (x `div` 10) 

isLeapYear x
    | mod x 4 == 0 && mod x 100 /= 0 = True
    | mod x 400 == 0 = True
    | otherwise = False


fatorial x
    | x == 1 = 1
    | otherwise = x * fatorial (x - 1)