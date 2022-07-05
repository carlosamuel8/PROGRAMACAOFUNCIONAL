import Data.List

 

decomporComRecursao x = if x == 0 then [0]           --caso do zero
                    else reverse $ auxiliar x        -- uso o reverse para inverter o vetor
    where auxiliar x                                 -- auxiliar retorna o vetor ao contrario
             | x == 0 = []
             | otherwise =  x `mod` 10 : auxiliar (x `div` 10) 

--feita em sala
fn x = if x == 0
    then Nothing 
    else Just (mod x 10, div x 10)

decomporUnfoldr x = if x == 0 then [0]              ---caso do zero
                    else reverse $  unfoldr fn  x

main = do
    print $ decomporUnfoldr 0
    print $ decomporUnfoldr 123
    print $ decomporUnfoldr 51234
    print $ decomporComRecursao 123456789
    print $ decomporComRecursao 0
    print $ decomporComRecursao 11234
