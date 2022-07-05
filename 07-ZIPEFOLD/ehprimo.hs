--IN : Um natural n
--OUT: Verdadeiro se n é primo e falso do contrário

-- ehPrimo 1 == True
-- ehPrimo 2 == True
-- ehPrimo 10 == False
-- ehPrimo 13 == True
-- ehprimo x = ehpri

ehPrimo x = primo x 2
    where
        primo x y  
            | y == x = True            -- verifico se x é divisivel por y de 2 ate x se n tiver divisor x é primo
            | x `mod` y == 0 = False 
            | otherwise = primo x (y+1)

main = do
    a <- readLn :: IO Int
    print $ ehPrimo a