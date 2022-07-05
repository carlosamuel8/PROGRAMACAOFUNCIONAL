
gerador1 = take 20 $ 0: concat [[x, -x] | x <- [1..]]

gerador3_0 = take 20 $ [2^x | x <- [0..]]

gerador2_0 = take 20 $ [if odd x then x else -x | x <- [1..]]
gerador2_1 x = [x] ++ gerador2_1 (if x > 0 then - (x + 1) else -(x-1)) 

gerador4 = (takeWhile (/= 0) $ iterate (\x -> div x 2)  100) ++[0]
