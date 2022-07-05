swap xs a b = map (\x -> if x == a then b else if x == b then a else x) xs

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c