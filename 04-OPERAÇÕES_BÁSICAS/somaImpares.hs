somaImpares xs = sum x 
    where x = [x | x <- xs, x `mod` 2 /= 0] --ou odd x


main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a