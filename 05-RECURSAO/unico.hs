import Control.Concurrent.STM (lengthTBQueue)
unico1 n xs = length (filter (==n) xs) == 1

unico2 n xs 
    | head xs == n = True
    | otherwise = unico2 n (tail xs)

