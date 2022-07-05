isPalind word = if word == reverse word then True else False         -- se word for igual ao seu reverso é palindromo

main = do
    a <- getLine
    print $ isPalind a