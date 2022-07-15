
import Data.Maybe 
 
aux char
    | elem char ['a'..'z'] = fromJust (lookup char alfabeto) 
    | otherwise = char
    where alfabeto = zip ['a'..'z'] ['A'..'Z']

to_upper xs = map aux xs

main = do
    a <- getLine
    print $ to_upper a
    
    
-- TA ERRADA!! NÃO RETORNA COM OS ESPAÇOS CORRETOS E NEM COM OS "NUMEROS"
--to_upper xs = [if (x==fst n) then snd n else x | x <- xs, n <- (zip ['a'..'z'] ['A'..'Z'] ), (x==fst n) || (x==snd n)]  
