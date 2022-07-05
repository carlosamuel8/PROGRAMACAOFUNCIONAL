inverterInteiro x = if x == 0 then 0 
                    else (inverterInteiro (x `div` 10)) + (x `mod` 10) * 10 ^ (length (show x) - 1) 

main = do
    a <- readLn :: IO Int
    print $ inverterInteiro a