
-- TA ERRADA!! NÃO RETORNA COM OS ESPAÇOS CORRETOS E NEM COM OS "NUMEROS"
to_upper xs = [if (x==fst n) then snd n else x | x <- xs, n <- (zip ['a'..'z'] ['A'..'Z'] ), (x==fst n) || (x==snd n)]  


main = do
    print $ to_upper "abc 45"
    print $ to_upper "a Casa Caiu 123"
    