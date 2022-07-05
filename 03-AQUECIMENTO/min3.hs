{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
min3 a b c
    | a <= b && a <= c = a
    | b <= a && b <= c = b
    | otherwise = c