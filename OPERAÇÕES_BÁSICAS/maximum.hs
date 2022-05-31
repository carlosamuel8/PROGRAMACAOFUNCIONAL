maior1 xs = foldr1 (\x y -> if x > y then x else y) xs

maior2 xs
  | length xs == 1 = head xs
  | head xs > maior2 (tail xs) = head xs
  | otherwise = maior2 (tail xs)


main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ maior2 a
    